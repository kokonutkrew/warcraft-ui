function main(string collector)
{
	relay "${collector.Escape}" collect_displayinfo "${Session.Escape}" ${Display.WindowWidth} ${Display.WindowHeight} ${Display.Window.Style} ${Display.Width} ${Display.Height} ${Display.Windowed} ${Display.AppWindowed} "${Display.System.Escape}" ${Display.FPS} ${Display.Foreground} "${Display.Monitor.Name.Escape.Escape}" "${ISBoxerMonitor.Escape.Escape}" "${Mouse}"
	relay "${collector.Escape}" collect_isboxerinfo "${Session.Escape}" "${LavishScript.Executable.Escape.Escape}" "${LavishScript.CommandLine.Escape.Escape}" "${ISBoxerCharacterSet.Escape}" "${ISBoxerCharacter.Escape}" "${ISBoxerSlot}" "${Snapper.ResetRegion.ToString.Escape}" "${Snapper.ForeRegion.ToString.Escape}" "${Snapper.BackRegion.ToString.Escape}" ${Snapper.FastSwitch}

}


