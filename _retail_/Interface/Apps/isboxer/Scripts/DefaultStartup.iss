/* This is the default Startup script.  Any changes made to this file will be overwritten.  
   If you wish to use a different startup script, change the setting in the Session startup
   sequence */

#if ${Input.Button[AltGr](exists)}
#define CTRLPLUSALT ${Input.Button[160]}+${Input.Button[164]}
#else
#define CTRLPLUSALT ${Input.Button[162]}+${Input.Button[164]}
#endif

variable int SessionNumber

function InitSequence(string suffix)
{
	declare InitDirectory filepath "${LavishScript.HomeDirectory}/scripts/init-${suffix}"

	if !${InitDirectory.PathExists}
		return

	variable filelist InitFileList
	InitFileList:GetFiles[${InitDirectory}/\*.iss]

	variable int Count=1
	for (${Count}<=${InitFileList.Files};Count:Inc)
	{
		waitscript "${InitFileList.File[${Count}].FullPath}"
	}
}

function main()
{
  if !${Session(exists)}
  {
	call InitSequence "Uplink"
	return
  }

  call SetBinds
  call SetSessionName

  alias binds bind -list
  alias GlobalBinds GlobalBind -list
  if ${LavishScript.Executable.Find[eqgame.exe]} || ${LavishScript.Executable.Find[everquest.exe]}
  {
	  /* EQ1 is unstable with multiple CPUs. This will rotate the affinity between the cores */
	  proc ${Math.Calc[${SessionNumber}%${System.Processors}].Int:Inc} only
  }
  call InitSequence "Session"

}

function SetBinds()
{
/* UI-related binds */
  bind memoryindicator CTRLPLUSALT+M hudgroup -toggle "memory indicator"
  bind fpsindicator CTRLPLUSALT+F hudgroup -toggle "fps indicator"

/* window size binds */
  alias fullscreen "WindowCharacteristics -size fullscreen -pos -viewable \${Display.DesktopX},\${Display.DesktopY};fullscreenmouse"
  alias normal "normalsize;normalposition;normalmouse"
  alias tiny "tinysize;tinyposition;tinymouse"
  alias pipforeground "pipforegroundsize;pipforegroundposition;pipforegroundmouse"

  if ${LavishScript.Executable.Find[eqgame.exe]} || ${LavishScript.Executable.Find[everquest.exe]}
  {
	call EQSession
  }
  else
  {

	  switch "${Game.Name}"
	  {
;		 case EverQuest
;		 call EQSession
;		 break
	  case Guild Wars
		alias fullscreen "WindowCharacteristics -stealth -size fullscreen -pos -viewable \${Display.DesktopX},\${Display.DesktopY};fullscreenmouse"
		break

	/* This is how to add special stuff for other games
	   ----------------------------------------------------------- */
	  case Other Game
		call NormalSession
		break
	/* ----------------------------------------------------------- */

	  default
		call NormalSession
		break
	  }
  }
}




function SetSessionName()
{
  declare Count int local 1

	variable file f
	f:SetFilename["${LavishScript.Executable.Path.Escape}"]
	variable string FileName
	FileName:Set["${f.Filename.Escape}"]

	if ${FileName.Find[wow.exe]}
	{
		echo WoW.exe -- delaying SetSessionName
		wait 10
		waitframe
		waitframe
	}

  if ${FileName.Find[launch]} \
     || ${FileName.Find[patch]} \
     || ${FileName.Find[update]} \
     || ${FileName.Find[invoke]} \
     || ${FileName.Find[loader]} \
	 || ${FileName.Find[Arc.exe]} \
	 || ${FileName.Find[Agent.exe]} \
	 || ${FileName.Find[Battle.net.exe]} \
	 || ${FileName.Find[Battle.net.beta.exe]} \
	 || ${FileName.Find[Battle.net Helper.exe]} \
	 || ${FileName.Find[GlyphClient.exe]} \
	 || ${FileName.Find[GlyphClientApp.exe]} \
	 || ${FileName.Find[GlyphCrashHandler.exe]} \
	 || ${FileName.Find[GlyphCrashHandler64.exe]} \
	 || ${FileName.Find[MyComGames.exe]} \
     || ${FileName.Find[everquest.exe]} \
     || ${FileName.Find[eve.exe]} \
     || ${FileName.Find[lobby.exe]} \
     || ${FileName.Find[runes of magic.exe]} \
     || ${FileName.Find[login.dll]} \
     || ${FileName.Find[binkplay.exe]} \
     || ${FileName.Find[camelot.exe]} \
     || ${FileName.Find[camelot.bin]} \
	 || ${FileName.Find[start.exe]} \
	 || ${FileName.Find[pylotro.exe]} \
	 || ${FileName.Find[champions online.exe]} \
	 || ${FileName.Find[SC2Switcher.exe]} \
	 || ${FileName.Find[Starcraft II.exe]} \
	 || ${FileName.Find[Steam.exe]} \
	 || ${FileName.Find[Star Trek Online.exe]} \
	 || (${FileName.Find[swtor.exe]} && !${LavishScript.CommandLine.Find[RemoteRendererServer]}) \
	 || ${FileName.Find[thinclient.exe]} \
     || ${FileName.Find[vanguard.exe]} \
     || ${FileName.Find[voyagecentury.exe]} \
	 || ${FileName.Find[neverwinter.exe]} \
	 || ${FileName.Find[proxy.exe]} \
	 || ${FileName.Find[boot.exe]} \
	 || ${FileName.Find[tl.exe]} \
	 || ${FileName.Equals[tos.exe]} \
	 || ${FileName.Find[transition.exe]} \
	 || ${FileName.Find[brwc.exe]} \
	 || ${FileName.Find[heroesswitcher]}
  {
    if !${FileName.Find[jagex]}
		Count:Set[500]
  }
  else
  {
	if ${LauncherName(exists)} && ${LavishScript.Executable.Find["${LauncherName.Escape}"]}
    {
	  Count:Set[500]
    }
  }
  
  if ${Count}<500 && ${ISBoxerSlot(exists)}
  {
	Count:Set[${ISBoxerSlot}]
	if ${Session[is${Count}]}
	{
		wait 10
	}
    if !${Session[is${Count}]}
    {
      do
      {
        Uplink Name is${Count}
        WaitFor "Session name 'is${Count}' accepted" "Session name 'is${Count}' rejected" 50
      }
      while ${WaitFor}==0

	  SessionNumber:Set[${Count}]

      if ${WaitFor}==1
	  {
		  if ${Count}<10
		  {
			WindowText is${Count} (CTRLPLUSALT+${Count})
	  
			GlobalBind is${Count}_key CTRLPLUSALT+${Count} "WindowVisibility foreground;Event[OnInternalActivate]:Execute"
		  }
		  else
		  {
			WindowText is${Count} (No Hotkey)
		  }
		  uplink "UIElement[output@console]:Echo[Session launched (is${SessionNumber}): \"${LavishScript.Executable.Replace[\\,/]}\"]"    
		  return
	  }
    }	
  }

  do
  {
    if !${Session[is${Count}]}
    {
      do
      {
        Uplink Name is${Count}
        WaitFor "Session name 'is${Count}' accepted" "Session name 'is${Count}' rejected" 50
      }
      while ${WaitFor}==0

      if ${WaitFor}==2
        continue
      SessionNumber:Set[${Count}]
      if ${Count}<10
      {
		WindowText is${Count} (CTRLPLUSALT+${Count})
	  
		GlobalBind is${Count}_key CTRLPLUSALT+${Count} "WindowVisibility foreground;Event[OnInternalActivate]:Execute"
      }
      else
      {
        WindowText is${Count} (No Hotkey)
      }
      uplink "UIElement[output@console]:Echo[Session launched (is${SessionNumber}): \"${LavishScript.Executable.Replace[\\,/]}\"]"    
      break
    }
  }
  while "${Count:Inc}<1000"
  
  
}

variable int WindowPosCount=0
atom EQOnWindowPos(bool Stealth)
{
	WindowPosCount:Inc
}

function EQSession()
{
/* customize this part for EverQuest 1 */

 
  /* Fixes an EQ1 null reference exception, since the game apparently doesn't store the Direct3D9 device pointer at creation 
     time. That causes a race condition, where if the window is resized before the game stores the pointer, the game's resize 
     handler executes and accesses the null pointer. Note: Best guess based on symptoms. */
  Event[On Window Position]:AttachAtom[EQOnWindowPos]
  wait 50 ${WindowPosCount}>=3
  wait 10

  alias normalsize WindowSize -Reset
  alias tinysize WindowScale 20
  alias pipforegroundsize WindowSize -Reset
  alias normalposition WindowPos -viewable ${Math.Calc[${Display.DesktopX}+10].Int},${Math.Calc[${Display.DesktopY}+10].Int}
  alias tinyposition WindowPos ${Math.Calc[${Display.DesktopX}+10].Int},${Math.Calc[${Display.DesktopY}+10].Int}
  alias pipforegroundposition WindowPos -viewable ${Display.DesktopX},${Display.DesktopY}
  alias fullscreenmouse
  alias normalmouse
  alias tinymouse
  alias pipforegroundmouse

  bind fullscreenkey ${Input.Button[160]}+${Input.Button[164]}+f fullscreen
  bind normalkey ${Input.Button[160]}+${Input.Button[164]}+n normal
  bind tinykey ${Input.Button[160]}+${Input.Button[164]}+t tiny
  bind next CTRLPLUSALT+x "uplink focus -next"
  bind previous CTRLPLUSALT+z "uplink focus -previous"
}

function NormalSession()
{
/* customize this part for other games */
  alias normalsize WindowSize -viewable 1024x768
  alias tinysize WindowSize -viewable 256x192
  alias pipforegroundsize WindowSize -rescale -viewable ${Display.Width}x${Display.Height}
  alias normalposition WindowPos -viewable \${Display.DesktopX},\${Display.DesktopY}
  alias tinyposition WindowPos \${Math.Calc[\${Display.DesktopX}+10].Int},\${Math.Calc[\${Display.DesktopY}+10].Int}
  alias pipforegroundposition WindowPos -viewable \${Display.DesktopX},\${Display.DesktopY}
  alias fullscreenmouse
  alias normalmouse
  alias pipforegroundmouse
  alias tinymouse

  bind fullscreenkey ${Input.Button[160]}+${Input.Button[164]}+f fullscreen
  bind normalkey ${Input.Button[160]}+${Input.Button[164]}+n normal
  bind tinykey ${Input.Button[160]}+${Input.Button[164]}+t tiny
  bind next CTRLPLUSALT+x "uplink focus -next"
  bind previous CTRLPLUSALT+z "uplink focus -previous"
}