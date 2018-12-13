var host =  "www.warcraftlogs.com"
var scheme = "https"

// Initialize fzip
var fzip = {}
fzip.FZip = window.runtime.deng.fzip.FZip
fzip.FZipFile = window.runtime.deng.fzip.FZipFile

// Get ByteArrays from Local Store
var baUser = null
var baRemember = false
var baPassword = null
var storedUser = ''
var storedPassword = ''

// Assume the local store can get corrupted and be robust
try {
	baUser = air.EncryptedLocalStore.getItem('username')
	baRemember = air.EncryptedLocalStore.getItem('remember')
	baPassword = baRemember ? air.EncryptedLocalStore.getItem('password') : null
	storedUser = baUser ? baUser.readUTFBytes(baUser.bytesAvailable) : ''
	storedPassword = baPassword ? baPassword.readUTFBytes(baPassword.bytesAvailable) : ''
} catch (e) {
}

var baGuild = null
var baRegionID = null
var baTeamID = null
var baVisibility = null
var baChooseFights = null
var baDirectory = null
var baFile = null

var storedGuild = ''
var storedRegionID = ''
var storedTeamID = ''
var storedVisibility = ''
var storedChooseFights = ''
var storedIncludeTrash = ''
var storedDirectory = ''

var selectedPrivacy = 0

var reportUIMode = "upload"

try {
	baGuild = air.EncryptedLocalStore.getItem('guild')
	baRegionID = air.EncryptedLocalStore.getItem('region')
	baTeamID = air.EncryptedLocalStore.getItem('team')
	baVisibility = air.EncryptedLocalStore.getItem('visibility')
	baChooseFights = air.EncryptedLocalStore.getItem('choosefights')
	baIncludeTrash = air.EncryptedLocalStore.getItem('includetrash')
	baDirectory = air.EncryptedLocalStore.getItem('directory')
	baFile = air.EncryptedLocalStore.getItem('file')
} catch (e) {	
}

var storedDisplayName = ''

var loggedIn = false

var guildList = 'Lost connection. Quit the app and log in again.'
var selectedGuild
var selectedRegion = 0
var selectedTeam = 0

var liveLogging = false
var loader = null
var liveLogChangeInterval = 5000
var liveLogPosition = 0
var liveLogLastModified = 0
var terminateLogging = false
var reportCode = ''
var lastReportCode = ''
var logFights = new Array()

var unchangedCount = 0

var debugMode = false

var splitFileTimestamp = 0
var splitFileStream
var splittingLogFile = false
var previousTimestampForSplit = 0

var scanningLogFileForRaids = false
var scannedRaids = new Array()
var raidsToUpload = new Array()

var liveLoggingAutoStartDesc = ''

function onInvoke(evt)
{
	if (!evt.arguments.length)
		return
	
	for (var i = 0; i < evt.arguments.length; ++i) {
		if (evt.arguments[i] == 'debug')
			debugMode = true
		if (evt.arguments[i].indexOf('livelog=') != -1) {
			var desc = evt.arguments[i].substr(8, evt.arguments[i].length)
			if (desc.length <= 0)
				continue
			liveLoggingAutoStartDesc = desc
		}
	}
}

air.NativeApplication.nativeApplication.addEventListener(air.InvokeEvent.INVOKE, onInvoke);

function logToDebugPanel(str)
{
	var panel = document.getElementById('inner-debug-panel')
	var line = document.createElement('div')
	line.innerHTML = str
	panel.appendChild(line);
	panel.scrollTop = panel.scrollHeight
}

function resetLoginButton()
{
	document.getElementById('login-button').innerHTML = 'Log In'
}

function resetUploadButton()
{
	document.getElementById('upload-button').innerHTML = 'Go!'
	document.getElementById('fights-button').innerHTML = 'Go!'
}

function logout()
{
	resetLoginButton()
	document.getElementById('logout-link').style.display = 'none'
	document.getElementById('logincontent').style.display = 'block'
	document.getElementById('reportcontent').style.display = 'none'
	document.getElementById('email').focus()
	document.getElementById('email').select()
}

function selectPrivacy(setting)
{
	document.getElementById('privacy-0').removeAttribute('selected')
	document.getElementById('privacy-1').removeAttribute('selected')
	document.getElementById('privacy-2').removeAttribute('selected')
	
	document.getElementById('privacy-' + setting).setAttribute('selected', 'true')
	selectedPrivacy = setting
}

function displayReportUI()
{
	storedGuild = baGuild ? baGuild.readUTFBytes(baGuild.bytesAvailable) : ''
	storedRegionID = baRegionID ? baRegionID.readUTFBytes(baRegionID.bytesAvailable) : ''
	storedTeamID = baTeamID ? baTeamID.readUTFBytes(baTeamID.bytesAvailable) : ''
	
	storedVisibility = baVisibility ? baVisibility.readUTFBytes(baVisibility.bytesAvailable) : ''
	storedChooseFights = baChooseFights ? baChooseFights.readUTFBytes(baChooseFights.bytesAvailable) : ''
	storedIncludeTrash = baIncludeTrash ? baIncludeTrash.readUTFBytes(baIncludeTrash.bytesAvailable) : ''
	
	storedDirectory = baDirectory ? baDirectory.readUTFBytes(baDirectory.bytesAvailable) : ''
	storedFile = baFile ? baFile.readUTFBytes(baFile.bytesAvailable) : ''

	selectReportPage('first')
	
	document.getElementById('logout-link').style.display = 'inline'
	document.getElementById('logincontent').style.display = 'none'
	document.getElementById('reportcontent').style.display = 'block'
	
	buildGuilds()
	
	if (storedVisibility !== '')
		selectPrivacy(parseInt(storedVisibility))
	else
		selectPrivacy(0)
	
	if (storedChooseFights !== '')
		document.getElementById('fight-chooser').checked = (storedChooseFights == '1')
	
	if (storedIncludeTrash !== '')
		document.getElementById('include-trash').checked = (storedIncludeTrash == '1')
	
	if (storedDirectory !== '') {
		document.getElementById('directory').innerText = storedDirectory
		setFileDisplay(storedDirectory, 'directory-display')
	}
	
	if (storedFile !== '') {
		document.getElementById('logfile').innerText = storedFile
		setFileDisplay(storedFile, 'logfile-display')
	}
	
	if (storedRegionID !== '')
		selectRegion(parseInt(storedRegionID))
		
	if (liveLoggingAutoStartDesc != '') {
		setReportUIMode('livelog')
		selectReportPage('upload')
		document.getElementById('description').value = liveLoggingAutoStartDesc
		startLiveLoggingSession(liveLoggingAutoStartDesc, document.getElementById('directory').innerText)
		liveLoggingAutoStartDesc = ''
	}
}

var appUpdater

function onUpdateError(event) {
	alert("Failed to parse the update descriptor file: " + event.toString())
}

function onClientUpdate(event) {
	//starts the update process
	appUpdater.checkNow();
}

function checkForUpdate()
{
	appUpdater = new runtime.air.update.ApplicationUpdaterUI()
	
	appUpdater.updateURL = scheme + "://" + host + "/client/update.xml"
		
	//we set the event handlers for INITIALIZED nad ERROR
	appUpdater.addEventListener(runtime.air.update.events.UpdateEvent.INITIALIZED, onClientUpdate)
	appUpdater.addEventListener(runtime.air.update.events.StatusUpdateErrorEvent.UPDATE_ERROR, onUpdateError)
	
	//we can hide the dialog asking for permission for checking for a new update;
	//if you want to see it just leave the default value (or set true).
	appUpdater.isCheckForUpdateVisible = false
	
	//if isFileUpdateVisible is set to true, File Update, File No Update, 
	//and File Error dialog boxes will be displayed
	appUpdater.isFileUpdateVisible = false
	
	//if isInstallUpdateVisible is set to true, the dialog box for installing the update is visible
	appUpdater.isInstallUpdateVisible = false
	
	//we initialize the updater
	appUpdater.initialize()
}

function fillInLoginForm()
{
	setTimeout(checkForUpdate, 200)

	document.getElementById('email').value = storedUser
	document.getElementById('password').value = storedPassword
	document.getElementById('remember').checked = baRemember ? true : false
	
	if (baRemember)
		login(document.getElementById('email').value, document.getElementById('password').value, document.getElementById('remember').checked)
		
	document.getElementById('email').focus()
	document.getElementById('email').select()
}

function setStatusText(text, hideSpinny)
{
}

function setProgressStatusText(text, id)
{
	document.getElementById(id).innerHTML = text
}

function setErrorText(text)
{
	var errorBlock = document.getElementById('errorblock')
	if (text == '')
	    errorBlock.style.display = 'none'
	else
		errorBlock.style.display = 'block'

	document.getElementById('errortext').innerHTML = text
	document.body.offsetWidth
}

function setWarningText(text)
{
	var errorBlock = document.getElementById('warningblock')
	if (text == '')
	    errorBlock.style.display = 'none'
	else
		errorBlock.style.display = 'block'

	document.getElementById('warningtext').innerHTML = text
	document.body.offsetWidth
}

function setCancelButtonVisible(visible)
{
	var cancelButton = document.getElementById('cancelbutton')
	if (!visible)
	    cancelButton.style.display = 'none'
	else
		cancelButton.style.display = 'inline-block'
}

function login(user, password, remember)
{
	setErrorText('');

	if (user == '' || password == '') {
		setErrorText("You must specify both a username and a password.")
		return
	}

	document.getElementById('login-button').innerHTML = '<img id="button-spinny" src="img/spinny.gif">'
	
	var loginFormData = new FormData();
 
	loginFormData.append("version", "5.34")
	loginFormData.append("email", user)
	loginFormData.append("password", password)

	var request = new XMLHttpRequest()
	request.onload = function(evt) {
		if (request.status != 200) {
    		setErrorText('Error occurred trying to log in!')
    		return;
	    }
	    
	    if (request.responseText.length > 10 && request.responseText.substring(0, 10) == "<div id=\"g") {
	    	loggedIn = true;
	    	
	    	try {
		    	baUser = new air.ByteArray
		    	baUser.writeUTFBytes(user) 
		    	air.EncryptedLocalStore.setItem('username', baUser)
		    	storedUser = user
		    	
		    	if (remember) {
		    		baRemember = new air.ByteArray
		    		baRemember.writeUTFBytes("true")
		    		air.EncryptedLocalStore.setItem('remember', baRemember)
		    		baPassword = new air.ByteArray
			    	baPassword.writeUTFBytes(password) 
			    	air.EncryptedLocalStore.setItem('password', baPassword)
			    	storedPassword = password	    		
		    	} else {
		    		air.EncryptedLocalStore.removeItem('remember')
		    		baRemember = null
		    		air.EncryptedLocalStore.removeItem('password')
		    		baPassword = null
		    		storedPassword = ''
		    	}
			} catch (e) {
			}

	    	guildList = request.responseText
			displayReportUI()
	    } else {
	    	var errorText = request.responseText
	    	if (!errorText)
	    		errorText = "The server sent an empty response. Login must have failed somehow.";
	    	setErrorText(errorText)
	    }
	    document.getElementById('login-button').innerHTML = 'Log In'
    };
	request.open("POST", scheme + "://" + host + "/accounts/desktoplogin/")
	request.send(loginFormData)
}

var logText = ''
var file
var logStream
var outputFile

function LargeAsyncFileReader()
{
	var _bufferSize = 8388608
	var _buffer
	var _fileStream
	var _file
	var _complete

	this.isComplete = function isComplete() { return _complete; }
	
	this.onComplete = function onComplete(evt) { _complete = true; }

	this.openAsync = function openAsync(file, fileMode) {
		_complete = false
		
		_buffer = new air.ByteArray
        _fileStream = new air.FileStream
        _fileStream.readAhead = _bufferSize
        _fileStream.addEventListener(air.Event.COMPLETE, this.onComplete)
        _fileStream.openAsync(file, fileMode)
        
        _file = file
    }
   
    this.bytesAvailable = function bytesAvailable() { return _fileStream.bytesAvailable }
    
    this.position = function position() { return _fileStream.position }

    this.seek = function seek(pos) {
	    _fileStream.position = pos
    }
   
    this.file = function file() { return _file }

    this.readUTFChunk = function readUTFChunk() {
	    var bytesToRead = Math.min(_bufferSize, _fileStream.bytesAvailable)
    	if (debugMode)
			logToDebugPanel("About to do a readBytes with the number of bytes being: " + bytesToRead + ".")
        if (!bytesToRead)
        	return ''
        var startPosition = _fileStream.position
        _fileStream.readBytes(_buffer, 0, bytesToRead)
        if (_complete) { 
        	// We're at the end of the file. Just return it all.
        	if (debugMode)
				logToDebugPanel("No bytes available following read. Return everything.")
        	var resultString = _buffer.readUTFBytes(_buffer.length)
        	_buffer.clear()
        	return resultString
        }
        var singleCharacterString = ''
        var i = bytesToRead - 1
        var maxLineSize = 256000;
        for (; i >= 0; --i) {
        	maxLineSize--
        	if (maxLineSize == 0)
        		throw "This file is corrupt and contains over 256k of text with no newlines.";
        	_buffer.position = i
            singleCharacterString = _buffer.readUTFBytes(1)
            if (singleCharacterString == "\n")
            	break
        }
        _buffer.position = 0
        var resultString = ''
        if (i > 0) {
        	_buffer.position = 0
        	resultString = _buffer.readUTFBytes(i)
        }
        _fileStream.position = startPosition + i + 1
        if (debugMode)
			logToDebugPanel("Adjusting position to: " + _fileStream.position + ".")
        _buffer.clear()
        return resultString
    }
     
    this.close = function close() {
        _fileStream.close()
        _fileStream = null
        _file = null
        _buffer = null
        _chunkHandler = null
        _complete = false
    }
}

function updateProgress(percent, bar)
{
	var barInterior = document.getElementById(bar).firstChild;
	barInterior.style.width = percent + '%';
	
	var barNumber = document.getElementById(bar + "-number")
	barNumber.innerHTML = "(" + percent + "%)"
}

var isLogValid = false
var parsedLineCount = 0

var actorsString = ''
var abilitiesString = ''
var tuplesString = ''
var petsString = ''
var eventsString = ''

var currentLinePosition = 0
var lines = null
var lineThreshold = 5000
var oldFilePosition = 0

var currentTimeout

var tempFile = null
var zipArchive = null

var logVersion = 1
var mythic = 0

function finishChunk()
{
	currentLinePosition = 0
    lines = null
    lineCount = 0

    deleteTempFile()
    
    if (liveLogging)
    	parsedLineCount = 0
    
    logFights = new Array()
}

function goHome()
{
	setErrorText('')
	cancelOrFinish('first')
}

function goToPatreon()
{
	var url = "https://www.patreon.com/warcraftlogs"; 
	var urlReq = new air.URLRequest(url); 
	air.navigateToURL(urlReq);
}

function cancelOrFinish(reportPage)
{
	finishChunk()
    
    if (currentTimeout)
    	clearTimeout(currentTimeout)
		
	resetUploadButton()
	
	selectReportPage(reportPage)
	
    isLogValid = false
    setStatusText('')
    setCancelButtonVisible(false)
    clearParserState()
    liveLogging = false
    liveLogPosition = 0
    liveLogLastModified = 0
    logFights = new Array()
    lastCombatEventTime = 0
    terminateLogging = false
    unchangedCount = 0
    reportCode = ''
    file = null
 
    splittingLogFile = false
    splitFileTimestamp = 0
    previousTimestampForSplit = 0
    
    scanningLogFileForRaids = false
	scannedRaids = new Array()
	raidsToUpload = new Array()
	
    if (logStream) {
    	logStream.close()
		logStream = null
	}
	
	if (splitFileStream) {
		splitFileStream.close()
		splitFileStream = null
	}
}

function doProgress(e)
{
	var loaded = e.bytesLoaded;
	var total = e.bytesTotal;
	var percentLoaded = Math.ceil(( loaded / total ) * 100)
	updateProgress(percentLoaded, "upload-progress")
}

function doCreateReportComplete(e) {
	if (loader.data.substring(0, 7) == "Success") {
		selectReportPage('progress')
		lastReportCode = reportCode = loader.data.substring(8)
		if (liveLogging) {
			setProgressStatusText("Report created. Live logging has started.", 'livelog-progress-status')
			currentTimeout = setTimeout(checkForLiveLogChanges, liveLogChangeInterval)
		} else {
			currentTimeout = setTimeout(openLogFile, 0);
		}
	} else {
		cancelOrFinish('upload')
		setErrorText(loader.data)
	}
	
	loader = null
}

function deleteTempFile()
{
	if (tempFile) {
    	tempFile.cancel() // Stop the upload.
    	tempFile.deleteFile()
    	tempFile = null
    }
}

function doMasterTableComplete(e) {
	if (e.data.substring(0, 7) == "Success") {
		updateProgress(100, "upload-progress")
		setStatusText("Upload of New Players, NPCs and Pets Successful.");
		currentTimeout = setTimeout(compressReportSegment, 200);
		deleteTempFile()
	} else {
		cancelOrFinish('upload')
		setErrorText(e.data)
	}
}

function doError(e) {
	// Uh-oh!
	cancelOrFinish('upload')
	setErrorText("Failed to upload.")
	deleteTempFile()
}

function doChunkComplete(e) {
	if (e.data == "Success") {
		updateProgress(100, "upload-progress")
		setUploadProgressContainer(false)
		if (liveLogging) {
			setProgressStatusText("Data successfully uploaded. Waiting for more data.", "livelog-progress-status")
		} else
			setProgressStatusText("Reading Combat Log", "logfile-progress-status")
		finishChunk()
		if (terminateLogging) {
			handleLogTermination()
		} else if (!liveLogging || logStream)
			currentTimeout = setTimeout(readFileChunk, 200)
		else
			currentTimeout = setTimeout(checkForLiveLogChanges, liveLogChangeInterval)
	} else {
		cancelOrFinish('upload')
		setErrorText(e.data)
	}
}

function uploadReportSegment()
{
	currentTimeout = 0

	tempFile.addEventListener(air.DataEvent.UPLOAD_COMPLETE_DATA, doChunkComplete)
	tempFile.addEventListener(air.ProgressEvent.PROGRESS, doProgress)
	tempFile.addEventListener(air.SecurityErrorEvent.SECURITY_ERROR, doError)
	tempFile.addEventListener(air.IOErrorEvent.IO_ERROR, doError)

	var request = new air.URLRequest(scheme + "://" + host + "/reports/addtolog/")

	// SETTINGS FOR THE REQUEST
	request.cacheResponse = false
	request.method = air.URLRequestMethod.POST

	// SOME VARIABLES (E.G. A FOLDER NAME TO SAVE THE FILE)
	var vars = new air.URLVariables()
	vars.report = reportCode
	vars.start = startTime
	vars.end = endTime
	vars.mythic = mythic
	vars.livelog = liveLogging ? 1 : 0

	request.data = vars
	
	// UPLOAD THE FILE, DON'T TEST THE SERVER BEFOREHAND
	tempFile.upload(request, 'logfile', false)
}

function setUploadProgressContainer(visible)
{
	var container = document.getElementById('upload-progress-container')
	if (visible)
		container.style.visibility = ''
	else
		container.style.visibility = 'hidden'
}

function uploadMasterReportTable()
{
	currentTimeout = 0
	
	tempFile.addEventListener(air.DataEvent.UPLOAD_COMPLETE_DATA, doMasterTableComplete)
	tempFile.addEventListener(air.ProgressEvent.PROGRESS, doProgress)
	tempFile.addEventListener(air.SecurityErrorEvent.SECURITY_ERROR, doError)
	tempFile.addEventListener(air.IOErrorEvent.IO_ERROR, doError)

	var request = new air.URLRequest(scheme + "://" + host + "/reports/setmastertable/")

	// SETTINGS FOR THE REQUEST
	request.cacheResponse = false
	request.method = air.URLRequestMethod.POST

	// SOME VARIABLES (E.G. A FOLDER NAME TO SAVE THE FILE)
	var vars = new air.URLVariables()
	vars.report = reportCode

	request.data = vars
	
	// UPLOAD THE FILE, DON'T TEST THE SERVER BEFOREHAND
	tempFile.upload(request, 'logfile', false)
}

function compressReportSegment()
{
	currentTimeout = 0
	if (!logFights.length)
		return

	// First, we upload the master file that contains all actors, abilities and tuples.
	var fileString = ''
	fileString += logVersion + "\n"; // Version. Revs any time we change the file format.
	
	// Stitch the events back together into one chunk.
	var eventCount = 0
	var eventCombinedString = ''
	for (var i = 0; i < logFights.length; ++i) {
		var fight = logFights[i]
		eventCount += fight.eventCount
		eventCombinedString += fight.eventsString
	}
	
	fileString += eventCount + "\n"
	fileString += eventCombinedString

	// The next step is zipping up the events file.
	zipArchive = new fzip.FZip
	zipArchive.addFileFromString("log.txt", fileString)
	
	var outputFileStream = null
	try {
		tempFile = air.File.createTempFile()
		outputFileStream = new air.FileStream()
	    outputFileStream.open(tempFile, air.FileMode.WRITE)
	    //outputFileStream.writeUTFBytes(fileString)
	    zipArchive.serialize(outputFileStream)
	    outputFileStream.close()
	} catch (e) {
		if (outputFileStream)
    		outputFileStream.close()
		setErrorText(e)
		return
	}
	zipArchive = null
	
	setProgressStatusText("Uploading New Fights", "upload-progress-status")
    updateProgress(0, "upload-progress")
    currentTimeout = setTimeout(uploadReportSegment, 0)
}

function compressReport()
{
	currentTimeout = 0
	if (!logFights.length)
		return

	// First, we upload the master file that contains all actors, abilities and tuples.
	var fileString = ''
	fileString += logVersion + "\n"; // Version. Revs any time we change the file format.
	
	fileString += lastAssignedActorID + "\n"
	buildActorsString()
	fileString += actorsString

	fileString += lastAssignedAbilityID + "\n"
	fileString += abilitiesString
	
	fileString += lastAssignedTupleID + "\n"
	fileString += tuplesString
	
	fileString += lastAssignedPetID + "\n"
	buildPetsString()
	fileString += petsString

	// The next step is zipping up the tuples file.
	zipArchive = new fzip.FZip
	zipArchive.addFileFromString("log.txt", fileString)
	
	var outputFileStream = null
	try {
		tempFile = air.File.createTempFile()
		outputFileStream = new air.FileStream()
	    outputFileStream.open(tempFile, air.FileMode.WRITE)
	    //outputFileStream.writeUTFBytes(fileString)
	    zipArchive.serialize(outputFileStream)
	    outputFileStream.close()
	} catch (e) {
		if (outputFileStream)
    		outputFileStream.close()
		setErrorText(e)
		return
	}
	zipArchive = null
	
	setProgressStatusText("Uploading New Players, NPCs and Pets", "upload-progress-status")
	
	setUploadProgressContainer(true)
	
    updateProgress(0, "upload-progress")
    currentTimeout = setTimeout(uploadMasterReportTable, 0)
}

function readFileChunk()
{
	currentTimeout = 0
	var firstLineWasInvalid = false
	
	try {
		if (debugMode)
			logToDebugPanel("Entering readFileChunk with logStream position: " + logStream.position() + ".")
		if (!lines) {
			oldFilePosition = logStream.position()
			lines = logStream.readUTFChunk().split(/\r\n|\n|\r/)
		}
		var lineCount = 0
		for (var i = currentLinePosition; i < lines.length; ++i) {
			parsedLineCount++
			lineCount++
    		var validLine = false
    		if (splittingLogFile) {
    			var timestamp = scanLogLine(lines[i]);
                if (timestamp != -1) {
                    validLine = true
                    if (splitFileTimestamp == 0 || timestamp > previousTimestampForSplit + 60 * 1000 * 60 * 4) {
                    	splitFileTimestamp = timestamp
                    	createNewSplitFile()
                    }
                    var lineString = lines[i] + "\n";
                    splitFileStream.writeUTFBytes(lineString)
                    previousTimestampForSplit = timestamp
                }
            } else {
            	validLine = parseLogLine(lines[i], scanningLogFileForRaids);
            	if (!validLine) {
	            	var trimmedLine = lines[i].trim()
					if (!trimmedLine.length)
						validLine = true
            	}	
            }
            if (!validLine && !isLogValid) {
    			setErrorText('Line 1 - This is not a valid log file. Bad line was: ' + lines[i])
    			firstLineWasInvalid = true
    			break
    		}
    		isLogValid = true
	    	lineCount++
	    	if (lineCount >= lineThreshold) {
	    		if (debugMode)
	    			logToDebugPanel("Line threshold of " + lineThreshold + " exceeded. Calling readFileChunk again.")
	    		currentLinePosition = i + 1
		    	currentTimeout = setTimeout(readFileChunk, 0)
		    	updateProgress(Math.ceil(100 * (oldFilePosition + (currentLinePosition / lines.length) * (logStream.position() - oldFilePosition) - liveLogPosition) / (logStream.file().size - liveLogPosition)), "logfile-progress")
		    	return
	    	}
	    }
	    
	    if (!firstLineWasInvalid && (logStream.bytesAvailable() || !logStream.isComplete())) {
	    	if (debugMode)
				logToDebugPanel("More bytes are available. Our current position is " + logStream.position() + " and bytes available is " + logStream.bytesAvailable() + ".")
	    	lines = null
	    	currentLinePosition = 0
	    	updateProgress(Math.ceil(100 * (logStream.position() - liveLogPosition) / (logStream.file().size - liveLogPosition)), "logfile-progress")
		    if (!logFights.length)
		    	currentTimeout = setTimeout(readFileChunk, 0)
    		else {
    			setProgressStatusText("Processed " + logFights.length + " New Fights. Compressing Combat Log Data", "livelog-progress-status")
    			currentTimeout = setTimeout(compressReport, 200)
    		}
		    return
	    }
    }
    catch (e) {
    	setErrorText("Line " + parsedLineCount + " - " + e)
    	isLogValid = false
    	logToDebugPanel(e)
    }

    var position = logStream ? logStream.position() : 0
    if (debugMode)
		logToDebugPanel("Finished readFileChunk with position of " + position + ".")
    currentLinePosition = 0
    lines = null
    if (logStream) {
    	logStream.close()
		logStream = null
	}
    lineCount = 0
    parsedLineCount = 0

    if (isLogValid) {
    	if (liveLogging) {
    		liveLogPosition = position
    		if (debugMode)
				logToDebugPanel("Set live log position to " + liveLogPosition + ".")
    		if (!logFights.length) {
    			currentTimeout = setTimeout(checkForLiveLogChanges, liveLogChangeInterval)
    			setProgressStatusText("Data processed. Waiting for end of fight to be logged before uploading.", "livelog-progress-status")
    			return
    		}
    		setProgressStatusText("Processed " + logFights.length + " New Fights. Compressing Combat Log Data", "livelog-progress-status")
    	} else {
    		pushLogFight(scanningLogFileForRaids)
    		terminateLogging = true
    		setProgressStatusText("Compressing Combat Log Data", "livelog-progress-status")
    	}
		if (logFights.length)
			currentTimeout = setTimeout(compressReport, 200)
		else if (scanningLogFileForRaids)
			showFightSelectionUI()
		else
			handleLogTermination()
    } else {
    	setCancelButtonVisible(false)
    	clearParserState()
    	document.getElementById("deletion-archival-ui").style.display = 'none'
    	if (splittingLogFile) {
    		fileForDeletionAndArchival = file
    		document.getElementById("deletelogbutton").innerHTML = "Delete " + file.name
			document.getElementById("archivelogbutton").innerHTML = "Archive " + file.name
			document.getElementById("deletion-archival-ui").style.display = ''
		} 
    	file = null
    }
}

function openLogFile()
{
	currentTimeout = 0
	
	var initialText = "Reading Combat Log"
	if (splittingLogFile)
		initialText =  "Splitting Combat Log"
	else if (scanningLogFileForRaids)
		initialText = "Scanning Combat Log For Raids"

	setProgressStatusText(initialText, "logfile-progress-status")
    updateProgress(0, "logfile-progress")
    setCancelButtonVisible(true)
	
	logStream = new LargeAsyncFileReader()
   	logStream.openAsync(file, air.FileMode.READ)
   	currentTimeout = setTimeout(readFileChunk, 200)
}

function processLogFile(description, filename)
{
	if (file)
		return
	
	fileForDeletionAndArchival = null
	
	setErrorText('')
	setWarningText('')

	if (!filename) {
		setErrorText("You must specify a file.")
		return;
	}
	
	file = new air.File(filename);
	if (!file || !file.exists) {
		setErrorText("Invalid file chosen.")
		file = null
		return;
	}
	
	if (file.size >= 1500000000) {
		setErrorText("This file is more than 1.5 gigabytes. Split the log file and upload the pieces separately.")
		file = null
		return
	}
	
	if (!raidsToUpload.length && (file.modificationDate.getTime() - file.creationDate.getTime()) > 24 * 60 * 60 * 1000) {
		setErrorText("This log file contains more than one day of data. You must either split it before uploading or select specific fights to upload.")
		file = null
		return
	}

	if (selectedGuild == 0 && selectedRegion <= 0) {
		setErrorText("For personal logs, you must specify the region you are uploading to. Hit the <i>Choose...</i> button above and pick a region.");
		file = null
		return
	}
	
	try {
		baVisibility = new air.ByteArray
		baVisibility.writeUTFBytes(selectedPrivacy.toString())
		air.EncryptedLocalStore.setItem('visibility', baVisibility)
		
		baChooseFights = new air.ByteArray
		baChooseFights.writeUTFBytes(document.getElementById('fight-chooser').checked ? '1' : '0')
		
		baIncludeTrash = new air.ByteArray
		baIncludeTrash.writeUTFBytes(document.getElementById('include-trash').checked ? '1' : '0')
		
		air.EncryptedLocalStore.setItem('choosefights', baChooseFights)
	} catch (e) {
	}
	
	var loadingStr = '<img id="button-spinny" src="img/spinny.gif">'
	document.getElementById('upload-button').innerHTML = loadingStr
	document.getElementById('fights-button').innerHTML = loadingStr
	
	updateProgress(0, "logfile-progress")
    liveLogging = false

    currentTimeout = setTimeout(createReport, 0)
}

function doTerminateComplete(e) {
	if (e.target.data.substring(0, 7) == "Success") {
		updateProgress(100, "upload-progress")
		setStatusText("Cleanup Successful.");
		handleLogDeletionAndArchival()
	} else {
		cancelOrFinish('upload')
		setErrorText(e.target.data)
	}
}

function terminateReport()
{
	currentTimeout = 0

	var request = new air.URLRequest(scheme + "://" + host + "/reports/terminatelog/" + reportCode)
	var loader = new air.URLLoader();
	loader.addEventListener(air.Event.COMPLETE, doTerminateComplete)
	loader.load(request);
}

function handleLogTermination() {
	if (liveLogging || splittingLogFile) {
		handleLogDeletionAndArchival()
		return
	}
	
	setProgressStatusText("Cleaning Up...", "upload-progress-status")
    updateProgress(0, "upload-progress")
    currentTimeout = setTimeout(terminateReport, 0)
}

function stopLiveLoggingSession()
{
	pushLogFight(false)
	if (logFights.length) {
		terminateLogging = true
		setProgressStatusText("Uploading remaining data before ending session...", "livelog-progress-status")
		if (currentTimeout)
    		clearTimeout(currentTimeout)
		currentTimeout = setTimeout(compressReport, 200)
		return
	}
	handleLogTermination()
}

function handleLogDeletionAndArchival() {
	fileForDeletionAndArchival = file
	var wasLiveLogging = liveLogging
	var wasSplitting = splittingLogFile
	cancelOrFinish('deletion-archival')
	
	document.getElementById("deletion-archival-ui").style.display = 'none'
	
    if (fileForDeletionAndArchival) {
        if (wasLiveLogging) {
            var logFile = fileForDeletionAndArchival.resolvePath("WoWCombatLog.txt")
            if (!logFile || !logFile.exists) {
            	return
            }
            fileForDeletionAndArchival = logFile
        } 
        
        document.getElementById("deletion-archival-ui").style.display = ''
        document.getElementById("deletelogbutton").innerHTML = "Delete " + fileForDeletionAndArchival.name
        document.getElementById("archivelogbutton").innerHTML = "Archive " + fileForDeletionAndArchival.name
    }
}

function viewLog()
{
	var url = scheme + "://" + host + "/reports/" + lastReportCode + "/"; 
	var urlReq = new air.URLRequest(url); 
	air.navigateToURL(urlReq);
}

function createReport()
{
	var request = new air.URLRequest(scheme + "://" + host + "/reports/create")

	// SETTINGS FOR THE REQUEST
	request.cacheResponse = false
	request.method = air.URLRequestMethod.POST

	// SOME VARIABLES (E.G. A FOLDER NAME TO SAVE THE FILE)
	var vars = new air.URLVariables()
	vars.description = document.getElementById('description').value
	
	vars.guild = selectedGuild
	vars.team = selectedTeam
	vars.personal = -10000 - selectedRegion // This is dumb, but it lets us share the field for backwards compatibility (and with WildStar)
	vars.visibility = selectedPrivacy
	vars.start = new Date().getTime()
	vars.end = vars.start

	request.data = vars
	
	loader = new air.URLLoader()
	loader.addEventListener(air.Event.COMPLETE, doCreateReportComplete)
	loader.addEventListener(air.SecurityErrorEvent.SECURITY_ERROR, doError)
	loader.addEventListener(air.IOErrorEvent.IO_ERROR, doError)
	loader.load(request)
}

function checkForLiveLogChanges()
{
	currentTimeout = 0
	setErrorText('')

	var logFile = file.resolvePath("WoWCombatLog.txt")
	var logFileExists = logFile && logFile.exists
	var logFileSize = logFileExists ? logFile.size : 0

	if (!logFile || !logFileExists || logFile.modificationDate.getTime() == liveLogLastModified || liveLogPosition == logFileSize) {
		if (debugMode)
			logToDebugPanel("No changes encountered. Our position is " + liveLogPosition + " and the file's size is " + logFileSize + ".")
		unchangedCount++
		if (unchangedCount == 24) { // 120 seconds more or less.
			pushLogFight(false)
			if (logFights.length) {
				setProgressStatusText("Assuming combat ended. Compressing Combat Log Data", "livelog-progress-status")
				currentTimeout = setTimeout(compressReport, 200)
				return
			}
		}
		currentTimeout = setTimeout(checkForLiveLogChanges, liveLogChangeInterval)
		return
	}
	
	unchangedCount = 0
	
	liveLogLastModified = logFile.modificationDate.getTime()
	
	if (debugMode)
		logToDebugPanel("File changed! Our position is " + liveLogPosition + " and the file's size is " + logFile.size + ".")
		
	logStream = new LargeAsyncFileReader()
   	logStream.openAsync(logFile, air.FileMode.READ)
    logStream.seek(liveLogPosition)

    setProgressStatusText("Reading new combat log data", "livelog-progress-status")
    currentTimeout = setTimeout(readFileChunk, 0)
}

function directorySelected(evt)
{
	document.getElementById('directory').innerText = file.nativePath
	setFileDisplay(file.nativePath, 'directory-display')

	try {
		baDirectory = new air.ByteArray
		baDirectory.writeUTFBytes(file.nativePath)
		air.EncryptedLocalStore.setItem('directory', baDirectory)
	} catch (e) {
	}
	
	file = null
}

function setFileDisplay(str, id)
{
	if (str.length > 70)
		str = str.substr(0, 10) + '...' + str.substr(str.length-50, str.length);
	
	document.getElementById(id).innerText = str;
}

function fileSelected(evt)
{
	document.getElementById('logfile').innerText = file.nativePath
	setFileDisplay(file.nativePath, 'logfile-display')
	
	try {
		baFile = new air.ByteArray
		baFile.writeUTFBytes(file.nativePath)
		air.EncryptedLocalStore.setItem('file', baFile)
	} catch (e) {
	}
	
	file = null
}

function browseForDirectory()
{
	file = new air.File()
    file.addEventListener(air.Event.SELECT, directorySelected)
    file.browseForDirectory("Select the World of Warcraft Logs Directory")
}

function browseForFile()
{
	file = new air.File()
    file.addEventListener(air.Event.SELECT, fileSelected)
    var filterArray = Array()
    filterArray.push(new air.FileFilter("Log Files", "*.txt"))
    file.browseForOpen("Select the log file to upload (usually WoWCombatLogs.txt)", filterArray)
}

function startLiveLoggingSession(description, directoryName)
{
	if (file)
		return

	if (selectedGuild == 0 && selectedRegion <= 0) {
		setErrorText("For personal logs, you must specify the region you are uploading to. Hit the <i>Choose...</i> button above and pick a region.");
		file = null
		return
	}
	
	fileForDeletionAndArchival = null
	    
	setErrorText('');
	
	if (!directoryName) {
		setErrorText("You must specify a log directory.")
		return;
	}
	
	file = new air.File(directoryName);
	if (!file || !file.exists) {
		setErrorText("Invalid directory chosen.")
		return;
	}
	
	var logFile = file.resolvePath("WoWCombatLog.txt")
	var logFileExists = logFile && logFile.exists
	
	liveLogPosition = logFileExists ? logFile.size : 0
	liveLogLastModified = logFileExists ? logFile.modificationDate.getTime() : 0

	if (debugMode)
		logToDebugPanel("Beginning live log with position: " + liveLogPosition + " and last modified " + liveLogLastModified + ".")

	try {
		baVisibility = new air.ByteArray
		baVisibility.writeUTFBytes(selectedPrivacy.toString())
		air.EncryptedLocalStore.setItem('visibility', baVisibility)
	} catch (e) {
	}
    
    liveLogging = true
	
	var loadingStr = '<img id="button-spinny" src="img/spinny.gif">'
	document.getElementById('upload-button').innerHTML = loadingStr
	
    currentTimeout = setTimeout(createReport, 0)
}

function escapedISOString(date)
{
	var result = date.toISOString()
	var replacedResult = result.replace(/:/g, "-")
	return replacedResult
}

function createNewSplitFile() {
    splitFileStream && (splitFileStream.close(), splitFileStream = null);
    var e, t = file.name, i = t.lastIndexOf("."), o = i > -1, r = "";
    o ? (e = t.substring(0, i), r = t.substring(i)) : e = t;
    var n = new air.File(file.parent.nativePath).resolvePath(e + "-split-" + escapedISOString(new Date(splitFileTimestamp)) + r);
    splitFileStream = new air.FileStream(), splitFileStream.open(n, air.FileMode.WRITE);
}

function splitLogFile(filename) {
	if (file)
		return
	
	fileForDeletionAndArchival = null
	
	setErrorText('');

	if (!filename) {
		setErrorText("You must specify a file.")
		return;
	}
	
	file = new air.File(filename);
	if (!file || !file.exists) {
		setErrorText("Invalid file chosen.")
		file = null
		return
	}
	
	setProgressStatusText("Splitting Log File", "logfile-progress-status")
	updateProgress(0, "logfile-progress")
	selectReportPage("progress")
	
	splittingLogFile = true 
    currentTimeout = setTimeout(openLogFile, 0)
}

function scanLogFileForRaids(filename) {
	if (file)
		return
	
	fileForDeletionAndArchival = null
	
	setErrorText('');

	if (!filename) {
		setErrorText("You must specify a file.")
		return;
	}
	
	file = new air.File(filename);
	if (!file || !file.exists) {
		setErrorText("Invalid file chosen.")
		file = null
		return
	}
	
	try {
		baVisibility = new air.ByteArray
		baVisibility.writeUTFBytes(selectedPrivacy.toString())
		air.EncryptedLocalStore.setItem('visibility', baVisibility)
		
		baChooseFights = new air.ByteArray
		baChooseFights.writeUTFBytes(document.getElementById('fight-chooser').checked ? '1' : '0')
		
		air.EncryptedLocalStore.setItem('choosefights', baChooseFights)
	} catch (e) {
	}

	setProgressStatusText("Scanning Log File For Raids", "logfile-progress-status")
	updateProgress(0, "logfile-progress")
	selectReportPage("progress")
	
	scanningLogFileForRaids = true 
    currentTimeout = setTimeout(openLogFile, 0)
}

function deleteLogFile() {
	var result = confirm("Are you sure you want to delete " + fileForDeletionAndArchival.name + "?");
    if (!result || !fileForDeletionAndArchival)
    	return
    
    try {
        fileForDeletionAndArchival.deleteFile();
        alert(fileForDeletionAndArchival.name + " successfully deleted.");
		fileForDeletionAndArchival = null;
    } catch (e) {
        alert("Deletion of " + fileForDeletionAndArchival.name + " failed. Log out of WoW and try again.");
    }
}

function archiveLogFile() {
    var result = confirm("Are you sure you want to archive " + fileForDeletionAndArchival.name + "?");
    if (!result || !fileForDeletionAndArchival)
    	return
    try {
        var e, t = fileForDeletionAndArchival.name, i = t.lastIndexOf("."), o = i > -1, r = "";
        o ? (e = t.substring(0, i), r = t.substring(i)) : e = t;
        var n = fileForDeletionAndArchival.parent.resolvePath("warcraftlogsarchive/" + e + "-archive-" + escapedISOString(new Date()) + r), l = n.parent;
        l.createDirectory(), fileForDeletionAndArchival.moveTo(n, !0);
        alert(fileForDeletionAndArchival.name + " successfully archived.");
		fileForDeletionAndArchival = null;
    } catch (a) {
        alert("Archival of " + fileForDeletionAndArchival.name + " failed. Log out of WoW and try again.");
    }
}

var currentPage = "first"

function selectReportPage(page) {
	document.getElementById('report-' + currentPage + "-page").style.display = 'none'
	document.getElementById('report-' + page + "-page").style.display = 'block'
	currentPage = page
}

function setReportUIElementsVisibility(mode, visible)
{
	if (mode == "upload") {
		if (visible) {
			document.getElementById('file-chooser-description').style.display = ''
			document.getElementById('file-chooser-row').style.display = ''
			document.getElementById('fight-chooser-container').style.visibility = ''
			document.getElementById('logfile-progress-container').style.display = ''
			document.getElementById('guild-chooser-description').style.display = ''
			document.getElementById('guild-chooser-controls').style.display = ''
			document.getElementById('view-report-description').style.display = ''
			document.getElementById('view-report-container').style.display = ''
			document.getElementById('description-label').style.display = ''
		} else {
			document.getElementById('file-chooser-description').style.display = 'none'
			document.getElementById('file-chooser-row').style.display = 'none'
			document.getElementById('fight-chooser-container').style.visibility = 'hidden'
			document.getElementById('logfile-progress-container').style.display = 'none'
			document.getElementById('guild-chooser-description').style.display = 'none'
			document.getElementById('guild-chooser-controls').style.display = 'none'
			document.getElementById('view-report-description').style.display = 'none'
			document.getElementById('view-report-container').style.display = 'none'
			document.getElementById('description-label').style.display = 'none'
		}
	} else if (mode == "livelog") {
		if (visible) {
			document.getElementById('directory-chooser-description').style.display = ''
			document.getElementById('directory-chooser-row').style.display = ''
			document.getElementById('livelog-progress-status').style.display = ''
			document.getElementById('endlivelogbutton').style.display = ''
			document.getElementById('viewlivelogbutton').style.display = ''
			document.getElementById('guild-chooser-description').style.display = ''
			document.getElementById('guild-chooser-controls').style.display = ''
			document.getElementById('view-report-description').style.display = ''
			document.getElementById('view-report-container').style.display = ''
			document.getElementById('description-label').style.display = ''
		} else {
			document.getElementById('directory-chooser-description').style.display = 'none'
			document.getElementById('directory-chooser-row').style.display = 'none'
			document.getElementById('livelog-progress-status').style.display = 'none'
			document.getElementById('endlivelogbutton').style.display = 'none'
			document.getElementById('viewlivelogbutton').style.display = 'none'
			document.getElementById('guild-chooser-description').style.display = 'none'
			document.getElementById('guild-chooser-controls').style.display = 'none'
			document.getElementById('view-report-description').style.display = 'none'
			document.getElementById('view-report-container').style.display = 'none'
			document.getElementById('description-label').style.display = 'none'
		}
	} else if (mode == "split") {
		if (visible) {
			document.getElementById('split-file-chooser-description').style.display = ''
			document.getElementById('file-chooser-row').style.display = ''
			document.getElementById('logfile-progress-container').style.display = ''
			document.getElementById('description-label').style.display = 'none'
		} else {
			document.getElementById('split-file-chooser-description').style.display = 'none'
			document.getElementById('file-chooser-row').style.display = 'none'
			document.getElementById('logfile-progress-container').style.display = 'none'
			document.getElementById('description-label').style.display = ''
		}
	}
}

function setReportUIMode(mode)
{
	if (mode == reportUIMode)
		return

	setReportUIElementsVisibility(reportUIMode, false)
	reportUIMode = mode
	setReportUIElementsVisibility(reportUIMode, true)
}

function goButtonClicked()
{
	if (reportUIMode == "upload") {
		var scanForFights = document.getElementById('fight-chooser').checked
		if (scanForFights)
			scanLogFileForRaids(document.getElementById('logfile').innerText)
		else
			processLogFile(document.getElementById('description').value, document.getElementById('logfile').innerText)
	} else if (reportUIMode == "livelog")
		startLiveLoggingSession(document.getElementById('description').value, document.getElementById('directory').innerText)
	else if (reportUIMode == "split")
		splitLogFile(document.getElementById('logfile').innerText)
}

function fightsButtonClicked()
{
	var options = document.getElementById('fights-list').options
	var selectedOptions = new Array()
	for (var i = 0; i < options.length; ++i) {
		if (options[i].selected)
			selectedOptions.push(options[i])
	}

	if (selectedOptions.length == 0) {
		setErrorText("You must select at least one fight to upload.")
		return
	}
	
	var raidsToCheck = scannedRaids
	cancelOrFinish('fights') // This wipes out scannedRaids and clears raidsToUpload.

	for (var i = 0; i < selectedOptions.length; ++i)
		raidsToUpload.push(raidsToCheck[selectedOptions[i].value])

	processLogFile(document.getElementById('description').value, document.getElementById('logfile').innerText)
}

var returnPage = null

function showSelectGuildUI() {
	returnPage = currentPage
	setErrorText('')
	selectReportPage('guild')
}

function buildGuilds()
{
	document.getElementById('guilds-container').innerHTML = guildList
	var guildID = storedGuild != '' ? parseInt(storedGuild) : 0
	var teamID = storedTeamID != '' ? parseInt(storedTeamID) : 0
	selectGuild(guildID)
	if (teamID !== '')
		selectTeam(parseInt(teamID))
	else
		selectTeam(0)
}

var selectedGuild = undefined

function selectGuildOrRegionByTarget(event)
{
	var node = event.target
	var guildAttr = node.getAttribute("guildid")
	var regionAttr = node.getAttribute("regionid")
	var teamAttr = node.getAttribute('teamid')
	while (guildAttr === null && regionAttr === null && teamAttr === null && node) {
		node = node.parentNode
		guildAttr = node.getAttribute("guildid")
		regionAttr = node.getAttribute("regionid")
		teamAttr = node.getAttribute('teamid')
	}
	if (guildAttr !== null)
		selectGuild(parseInt(guildAttr))
	else if (regionAttr !== null)
		selectRegion(parseInt(regionAttr))
	else if (teamAttr !== null)
		selectTeam(parseInt(teamAttr))
}

function selectRegion(regionID)
{	
	if (selectedRegion > 0)
		document.getElementById('region-' + selectedRegion).removeAttribute("selected")
	
	document.getElementById('region-' + regionID).setAttribute("selected", true)
	
	try {
		baRegionID = new air.ByteArray
		baRegionID.writeUTFBytes(regionID)
		air.EncryptedLocalStore.setItem('region', baRegionID)
	} catch (e) {
	}
	
	selectedRegion = regionID
}

function selectTeam(teamID)
{
	if (selectedGuild == 0)
		return

	document.getElementById('teams-' + selectedGuild + '-' + selectedTeam).removeAttribute("selected")
	
	document.getElementById('teams-' + selectedGuild + '-' + teamID).setAttribute("selected", true)
	
	try {
		baTeamID = new air.ByteArray
		baTeamID.writeUTFBytes(teamID)
		air.EncryptedLocalStore.setItem('team', baTeamID)
	} catch (e) {
	}
	
	selectedTeam = teamID
}

function selectGuild(guildID)
{	
	if (selectedGuild !== undefined) {
		document.getElementById('guild-' + selectedGuild).removeAttribute("selected")
	
		// Hide that guild's raid teams.
		if (selectedGuild > 0) {
			document.getElementById('teams-' + selectedGuild).style.display = 'none'
			selectTeam(0)
		}
	}

	document.getElementById('guild-' + guildID).setAttribute("selected", true)
	
	document.getElementById('selected-guild-upload').innerHTML = document.getElementById('guild-' + guildID).innerHTML	
	
	try {
		baGuild = new air.ByteArray
		baGuild.writeUTFBytes(guildID)
		air.EncryptedLocalStore.setItem('guild', baGuild)
	} catch (e) {
	}
	
	selectedGuild = guildID
	
	if (selectedGuild === 0)
		document.getElementById('regions').style.display = ''
	else {
		document.getElementById('regions').style.display = 'none'
		
		// Show this guild's teams.
		document.getElementById('teams-' + selectedGuild).style.display = ''
		
		selectTeam(0)
	}
}

function finalizeGuild() {
	selectReportPage(returnPage)
}

function showFightSelectionUI()
{
	selectReportPage('fights')
	rebuildFights()
}

function includeTrashChanged()
{
	rebuildFights()
}

function printDuration(duration)
{
	duration = Math.floor(duration / 1000)
	var result = ''
	var hours = Math.floor(duration / 3600)
	var minutes = Math.floor((duration % 3600) / 60)
	var seconds = duration % 60
	var putZeroInMinutes = false
	if (hours > 0) {
		putZeroInMinutes = true
		result += hours + ":"
	}
	result += (putZeroInMinutes && minutes < 10 ? "0" : '') + minutes + ":" + (seconds < 10 ? "0" : '') + seconds
	return result
}

function printDate(time)
{	
	var date = new Date(time)
	return date.toLocaleString()
}

function optionHovered(evt)
{
	var raid = scannedRaids[this.value]
	var details = document.getElementById('fight-details')
	var result = "<b>" + raid.name + "</b><br>"
	result += "<b>Date:</b> " + printDate(raid.start) + "<br>"
	result += "<b>Duration:</b> " + printDuration(raid.end - raid.start) + "<br>"
	var friendliesArray = new Array()
	for (var k in raid.friendlies) {
		 if (raid.friendlies.hasOwnProperty(k))
		 	friendliesArray.push(k)
	}
	var enemiesArray = new Array()
	for (var k in raid.enemies) {
		 if (raid.enemies.hasOwnProperty(k))
		 	enemiesArray.push(k)
	}
	friendliesArray.sort()
	enemiesArray.sort()
	
	result += "<b>Player Participants:</b> "
	for (var i = 0; i < friendliesArray.length; ++i) {
		if (i > 0)
			result += ", "
		result += friendliesArray[i]
	}
	result += "<br>"
	result += "<b>Enemy Participants:</b> "
	for (var i = 0; i < enemiesArray.length; ++i) {
		if (i > 0)
			result += ", "
		result += enemiesArray[i]
	}
	result += "<br>"
	details.innerHTML = result
}

function optionUnhovered(evt)
{
	var details = document.getElementById('fight-details')
	details.innerHTML = "Hover over enemy names in the list to the left to see details about the fights in this box."
}

function nameForDifficulty(difficulty)
{
	if (difficulty == 16)
		return "Mythic"
	if (difficulty == 7 || difficulty == 17)
		return "LFR"
	if (difficulty == 14)
		return logVersion == 1 ? "Flex" : "Normal"
	if (difficulty == 15)
		return "Heroic"		
	if (difficulty == 8)
		return logVersion >= 7 ? "Mythic+" : "CM"
	if (difficulty == 1 || difficulty == 3 || difficulty == 4 || difficulty == 12 || difficulty == 9)
		return "Normal"
	if (difficulty == 2 || difficulty == 5 || difficulty == 6 || difficulty == 11)
		return "Heroic"
	return "";
}

function rebuildFights()
{
	var fightList = document.getElementById('fights-list')
	fightList.innerHTML = ''
	var includeTrash = document.getElementById('include-trash').checked
	for (var i = 0; i < scannedRaids.length; ++i) {
		if (!includeTrash && scannedRaids[i].boss == 0)
			continue
		var option = document.createElement("option")
		option.value = i
		option.onmouseover = optionHovered
		option.onmouseout = optionUnhovered
		var name = scannedRaids[i].name
		if (scannedRaids[i].boss > 0) {
			name += " " + nameForDifficulty(scannedRaids[i].difficulty)
			option.setAttribute('class', 'Boss')
			if (!scannedRaids[i].success)
				name += " Wipe"
			else
				name += " Kill"
			if (scannedRaids[i].pulls > 1)
				name += "s (" + scannedRaids[i].pulls + ")"
		} else
			option.setAttribute('class', 'NPC')
		option.text = name
		fightList.add(option, null)
	}
}
