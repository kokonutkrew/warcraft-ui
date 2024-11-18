objectdef SessionInfo
{
	method Initialize(string session_name)
	{
		SessionName:Set["${session_name.Escape}"]
	}

	variable string SessionName
	variable int WindowWidth
	variable int WindowHeight
	variable int WindowStyle
	variable int DisplayWidth
	variable int DisplayHeight

	variable string ActualMonitor
	variable string SelectedMonitor

	variable bool Windowed
	variable bool AppWindowed
	variable bool Foreground

	variable string DisplayDriver
	variable float FPS

	variable string CharacterSet
	variable string Character
	variable int Slot

	variable string MousePos

	variable string ExeName
	variable string CmdLine

	variable string ResetRegion
	variable string ForeRegion
	variable string BackRegion
	variable bool InstantSwap

	method Dump()
	{
		echo ---------------------------------------------------------
		echo Session ${SessionName.Escape}: ${CharacterSet.Escape} - ${Character.Escape} - Slot ${Slot}
		echo Executable: ${ExeName.Escape}
		echo Command line: ${CmdLine.Escape}
		echo Rendering system: ${DisplayDriver.Escape}

		variable string windowedInfo
		if ${Windowed}
		{
			if ${AppWindowed}
				windowedInfo:Set["Windowed"]
			else
				windowedInfo:Set["Windowed (emulated)"]
		}
		else
		{
			windowedInfo:Set["Fullscreen"]
		}

		if ${SelectedMonitor.Length}
			echo Rendering on ${ActualMonitor.Escape}, Bound to ${SelectedMonitor.Escape}
		else
			echo Rendering on ${ActualMonitor.Escape}

		echo Window: ${WindowWidth}x${WindowHeight} style ${WindowStyle.Hex}. Rendering: ${DisplayWidth}x${DisplayHeight} - ${windowedInfo}
		if ${Foreground}
			echo FPS: ${FPS} (Foreground)
		else
			echo FPS: ${FPS} (Background)

		echo Mouse: ${MousePos}

		echo Window Layout...  (Instant Swap: ${InstantSwap})
		if ${ResetRegion.Length}
			echo - Reset Region: ${ResetRegion.Escape}
		if ${ForeRegion.Length}
			echo - Foreground Region: ${ForeRegion.Escape}
		if ${BackRegion.Length}
		{
			if !${BackRegion.Equal["${ForeRegion.Escape}"]}
				echo - Background Region: ${BackRegion.Escape}
			else
				echo - Background Region: SAME AS FOREGROUND REGION
		}
	}
}

variable collection:SessionInfo SessionInfos

atom(global) collect_displayinfo(string session_name, int windowWidth, int windowHeight, int windowStyle, int resWidth, int resHeight, bool is_windowed, bool app_windowed, string driver, float fps, bool is_foreground, string actual_monitor, string selected_monitor, string mousepos)
{
	variable persistentref ses
	if !${SessionInfos.Element["${session_name.Escape}"](exists)}
	{
		SessionInfos:Set["${session_name.Escape}","${session_name.Escape}"]
	}

	ses:SetReference["SessionInfos.Element[\"${session_name.Escape}\"]"]
	ses.WindowWidth:Set[${windowWidth}]
	ses.WindowHeight:Set[${windowHeight}]
	ses.WindowStyle:Set[${windowStyle}]
	ses.DisplayWidth:Set[${resWidth}]
	ses.DisplayHeight:Set[${resHeight}]
	ses.Windowed:Set[${is_windowed}]
	ses.AppWindowed:Set[${app_windowed}]
	ses.DisplayDriver:Set["${driver.Escape}"]
	ses.FPS:Set[${fps}]
	ses.Foreground:Set[${is_foreground}]

;string actual_monitor, string selected_monitor
	ses.ActualMonitor:Set["${actual_monitor.Escape}"]
	ses.SelectedMonitor:Set["${selected_monitor.Escape}"]
	ses.MousePos:Set["${mousepos}"]
}

atom(global) collect_isboxerinfo(string session_name, string exe_name, string cmdline, string isboxer_characterset, string isboxer_character, int isboxer_slot, string resetRegion, string foreRegion, string backRegion, bool instant_swap)
{
	variable persistentref ses
	if !${SessionInfos.Element["${session_name.Escape}"](exists)}
	{
		SessionInfos:Set["${session_name.Escape}","${session_name.Escape}"]
	}

	ses:SetReference["SessionInfos.Element[\"${session_name.Escape}\"]"]

;	echo collect_isboxerinfo ${session_name.Escape} "${isboxer_characterset.Escape}" "${isboxer_character.Escape}" ${isboxer_slot}

	ses.ExeName:Set["${exe_name.Escape}"]
	ses.CmdLine:Set["${cmdline.Escape}"]

	ses.CharacterSet:Set["${isboxer_characterset.Escape}"]
	ses.Character:Set["${isboxer_character.Escape}"]
	ses.Slot:Set[${isboxer_slot}]

	ses.ResetRegion:Set["${resetRegion.Escape}"]
	ses.ForeRegion:Set["${foreRegion.Escape}"]
	ses.BackRegion:Set["${backRegion.Escape}"]

	ses.InstantSwap:Set[${instant_swap}]
}

function dump_sessioninfos()
{
	variable index:string Output
	variable iterator Iterator
	SessionInfos:GetIterator[Iterator]

	if !${Iterator:First(exists)}
	{
		echo No session infos
		return
	}
	do
	{
		Iterator.Value:Dump
		LavishScript:Eval[Iterator.Value:Dump,Output]
	}
	while ${Iterator:Next(exists)}	

	variable string FullOutput
	Output:GetIterator[Iterator]
	if !${Iterator:First(exists)}
	{
		echo No session infos
		return
	}
	do
	{
		FullOutput:Concat["${Iterator.Value.Escape}\r\n"]
	}
	while ${Iterator:Next(exists)}	

	System:SetClipboardText["${FullOutput.Escape}"]
}

function main()
{
	relay all run isboxer.sendinfo "${Session.Escape}"
	wait 5
	call dump_sessioninfos
	echo State information collected and copied to Windows clipboard, for you to paste.
	ISBoxerUI:PopupText["State information collected and copied to Windows clipboard, for you to paste.",1500]
}




