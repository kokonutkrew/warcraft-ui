variable string MySourceName="${LavishSettings[2].FindSet[Remote].FindSetting[Name].String.Escape}.${Session}"
variable string MyUplinkName="${LavishSettings[2].FindSet[Remote].FindSetting[Name].String.Escape}"

atom(global) remotebutton(string source, string action, string buttonname, uint _timestamp)
{
	if ${KeyRepeater.Mute}
		return

	ISBoxerUI:DebugOut["Button","from ${source.Escape}: ${action} ${buttonname.Escape}"]
	; UIElement[isboxerstopup]:SetFadeDelay[500]:SetFadeDuration[1500]:SetFadeAlpha[0]

	variable string cmd
	switch ${action}
	{
	case press
		ISBoxerUI:Stopup_OnButtonMoved["remote:${buttonname.Escape}",1,${_timestamp}]
		ISBoxerUI:Stopup_OnButtonMoved["remote:${buttonname.Escape}",0,${_timestamp}]
		break
	case nomodifiers
		cmd:Concat["-nomodifiers "]
		ISBoxerUI:Stopup_OnButtonMoved["remote:${buttonname.Escape}",1,${_timestamp}]
		ISBoxerUI:Stopup_OnButtonMoved["remote:${buttonname.Escape}",0,${_timestamp}]
		break
	case hold
		cmd:Concat["-hold "]
		ISBoxerUI:Stopup_OnButtonMoved["remote:${buttonname.Escape}",1,${_timestamp}]
		break
	case release
		cmd:Concat["-release "]
		ISBoxerUI:Stopup_OnButtonMoved["remote:${buttonname.Escape}",0,${_timestamp}]
		break
	}


	if ${_timestamp}
		press ${cmd} "${buttonname.Escape}" ${_timestamp}
	else
		press ${cmd} "${buttonname.Escape}"

}

atom(global) remotemouse(int X, int Y, int dX, int dY, int original_width, int original_height, bool Absolute, string source, int videoWidth, int videoHeight, string source_region)
{
	if ${MouseRepeater.ShouldMute}
		return

	if ${MySourceName.NotEqual[${source.Escape}]}
	{
		if (${Absolute} || ${Mouse.Cursor}) && ${X}>-32767 && ${Y}>-32767
		{
			Mouse:SetPosition[${MouseRepeater.Transform[${X},${Y},${original_width},${original_height},${source_region}]}]
			;mouseto ${MouseRepeater.Transform[${X},${Y},${original_width},${original_height},${source_region}]}
			ISBoxerUI:DebugOut["Cursor","from ${source.Escape}: absolute cursor ${MouseRepeater.Transform[${X},${Y},${original_width},${original_height},${source_region}]}"]
		}
		else
		{
			if ${dX} || ${dY}
				Mouse:SetPosition[-relative,${dX},${dY}]
			;mouseto -relative ${dX},${dY}
			ISBoxerUI:DebugOut["Cursor","from ${source.Escape}: relative cursor ${dX},${dY}"]
		}

		if ${videoWidth} && ${videoHeight}
			FalseCursor:SetVideoSource[${videoWidth},${videoHeight}]
		elseif ${FalseCursor.IsVideoSource}
			FalseCursor:UnregisterCursorSource

		if ${X}>-32767 && ${Y}>-32767
			FalseCursor:Set[${MouseRepeater.Transform[${X},${Y},${original_width},${original_height},${source_region}]}]
		else
			FalseCursor:Slide[${dX},${dY}]		
	}		
}

atom(global) remotecursorstate(string source, bool new_state)
{
;  if we're controlling just this source, we should match our cursor state
	if ${MySourceName.Equal[${source.Escape}]}
	{
		return
	}
	if !${VFXLayout.Enabled}
	{
		return
	}

	if ${Bool["${UIElement[${MouseRepeater.InRegion}].GetMetadata[use mouse].Escape}"]} && ${VideoFeed.Source["${UIElement[${MouseRepeater.InRegion}].GetMetadata[feedoutput].Escape}"](exists)}
	{

	}
}


atom(global) remotemouseupdate(int X, int Y, int dX, int dY, string source)
{
	if ${MouseRepeater.ShouldMute}
		return

	if ${dX}==0 && ${dY}==0
	{
		ISBoxerUI:DebugOut["Cursor","from ${source.Escape}: relative cursor initial centering"]
		; position is probably center-screen. the following code is currently "wrong!"
		Mouse:SetPosition[${X},${Y}]
		FalseCursor:Set[${X},${Y}]
	}
	else
	{
		ISBoxerUI:DebugOut["Cursor","from ${source.Escape}: relative cursor update ${dX},${dY}"]		
		Mouse:SetPosition[-relative,${dX},${dY}]
		FalseCursor:Slide[${dX},${dY}]		
	}

}

atom(global) repeatertarget(string target, bool blocklocal)
{
	if ${ISBoxerSingleWindowControl}		
	{
		if ${target.Find["all"]} || ${target.Find["other"]}
		{
			ISBoxerUI:Echo["\aySingle Window Control Mode: Enforcing Repeater Target of 'self'\ax"]
			target:Set["self"]
			blocklocal:Set[1]
		}
		else
		{
			ISBoxerUI:Echo["\aySingle Window Control Mode: Allowing Repeater Target of '${target.Escape}'\ax"]
		}
	}

    ISBoxerUI:DebugOut["Repeater Target","Repeater Target: ${target.Escape}  Block local: ${blocklocal}"]
	MouseRepeater:SetRelayTarget["${target.Escape}"]
	MouseRepeater:SetKVMMode[${blocklocal}]
	KeyRepeater:SetRelayTarget["${target.Escape}"]
	KeyRepeater:SetKVMMode[${blocklocal}]
	
}

#define TRANSFORM_NONE   0
#define TRANSFORM_CENTER 1
#define TRANSFORM_SCALE  2
#define TRANSFORM_CENTERSCALE	3

#define RELATIVE_MOUSEMOVE      0
#define RELATIVE_SETCURSORPOS   1
#define RELATIVE_GETCURSORPOS   2
#define RELATIVE_FRAMEDIFF      3

/* Repeater for God-Damn-It (GDI) windows. */
objectdef gdirepeater
{
	variable string LastChance
	/* This is our constructor. It makes sure the events we're attaching to are registered, so that we can attach to them later. */
	method Initialize()
	{
		if ${InnerSpace.Build}>=4906
		{
			LastChance:Set["LastChance"]
		}
		LavishScript:RegisterEvent[OnButtonMove${LastChance}]
		LavishScript:RegisterEvent[OnMouseWheel${LastChance}]
		LavishScript:RegisterEvent[OnFrame]
		LavishScript:RegisterEvent[OnMouseMove]
		LavishScript:RegisterEvent[On Activate]
		LavishScript:RegisterEvent[On Deactivate]
		Event[On Deactivate]:AttachAtom[This:OnDeactivate]
	}
 
	/* This variable stores whether it is currently enabled or not, so we can have our handy Toggle method. */
	variable bool Enabled=FALSE
	 
	/* Mouse1Down and Mouse2Down keep the button state of Mouse1 and Mouse2 (left and right) 
           so we know whether to stop sending relative mouse movements. We only want them if a button is down (i.e. for mouselook)
	*/
	variable bool Mouse1Down=FALSE
	variable bool Mouse2Down=FALSE
	variable bool Mouse3Down=FALSE
	variable bool Mouse4Down=FALSE
	variable bool Mouse5Down=FALSE

	variable int SourceWidth=100
	variable int SourceHeight=100

	variable gdiwindow Window
	variable int elementid
	variable string sourcename

	member GetVideoFeedInfo()
	{
		if ${IsVideoFeed} && ${SourceWidth} && ${SourceHeight}
			return "${SourceWidth} ${SourceHeight}"
		return "0 0"
	}

	member GetCursorPos()
	{
		variable int x
		variable int y
		x:Set[${Mouse.X}]
		y:Set[${Mouse.Y}]

		variable float regionxFactor
		variable float regionyFactor

		if ${UIElement[${elementid}].Type.Equal[frame]}
		{		
			x:Dec[${UIElement[${elementid}].X}]
			y:Dec[${UIElement[${elementid}].Y}]

			regionxFactor:Set[${VideoFeed.Source["${sourcename.Escape}"].Width}/${UIElement[${elementid}].Width}]
			regionyFactor:Set[${VideoFeed.Source["${sourcename.Escape}"].Height}/${UIElement[${elementid}].Height}]	

			x:Set[(${x}*${regionxFactor})]
			y:Set[(${y}*${regionyFactor})]

			; account for menu...
;			y:Inc[${Window.MenuHeight}]

			; add offset...
			x:Inc[${VideoFeed.Source["${sourcename.Escape}"].X}]
			y:Inc[${VideoFeed.Source["${sourcename.Escape}"].Y}]
			return "${x},${y}"
		}
		if ${UIElement[${elementid}].Type.Equal[window]}
		{
			variable int frameid
			frameid:Set[${UIElement[${elementid}].FindChild[clickbox].ID}]
			if !${frameid}
				frameid:Set[${UIElement[${elementid}].FindChild[videobox].ID}]
			if !${frameid}
				return

			x:Dec[${ISBoxerUI.AbsoluteX[${frameid}]}]
			y:Dec[${ISBoxerUI.AbsoluteY[${frameid}]}]

			regionxFactor:Set[${VideoFeed.Source["${sourcename.Escape}"].Width}/${UIElement[${frameid}].Width}]
			regionyFactor:Set[${VideoFeed.Source["${sourcename.Escape}"].Height}/${UIElement[${frameid}].Height}]	

			x:Set[(${x}*${regionxFactor})]
			y:Set[(${y}*${regionyFactor})]
;			y:Inc[${Window.MenuHeight}]
			x:Inc[${VideoFeed.Source["${sourcename.Escape}"].X}]
			y:Inc[${VideoFeed.Source["${sourcename.Escape}"].Y}]
			return "${x},${y}"
		}

		return "${x},${y}"
	}

	/* Store the time it was pressed, so we can tell our targets to release after precisely the same length of time */
	variable collection:uint PressTime	
	member:uint GetReleaseTime(string Button,int64 TimeStamp)
	{
		if ${PressTime.Element["${Button.Escape}"]}
		{
;			echo TimeStamp=${TimeStamp}
			TimeStamp:Dec[${PressTime.Element["${Button.Escape}"]}]
			PressTime:Erase["${Button.Escape}"]
;			echo ReleaseTime=${TimeStamp}
			if ${TimeStamp}>1000
				return 0
			return ${TimeStamp}
		}
		return 0
	}


	/* This is an event handler for when a button is pressed or released. That includes keyboard and mouse, as well as alternative input devices like a Saitek pad or G15 keys. 
	   The event handler will only be called when our state is Enabled. */
	method ButtonMoved(string Button, bool Position, uint TimeStamp)
	{
		/* This echo is commented out, but you can un-comment it to see messages when a button is pressed or released */
;		echo Button=${Button} position=${Position}
 
		/* Use a switch to efficiently handle special cases */
		switch ${Button}
		{
		/* For mouse buttons 1 and 2, we also want the mouse position if the cursor is visible */
		case Mouse1
		case Mouse2
		case Mouse3
		case Mouse4
		case Mouse5
				Context:Set[FALSE]
			if ${Position}
			{
				PressTime:Set["${Button.Escape}",${TimeStamp}]
				/* Attach to the OnMouseMove event, because until we release the button, we want to relay relative mouse movements */
				noop ${${Button}Down:Set[TRUE]}
				Window:Click[-press,${Button},${This.GetCursorPos}]
 
			}
			else
			{
				/* If neither button is held down now, stop relaying relative mouse movements */
				noop ${${Button}Down:Set[FALSE]}
				Window:Click[-release,${Button},${This.GetCursorPos}]
			}
			break
		case Mouse6
		case Mouse7
		case Mouse8
			Context:Set[FALSE]
			break
		case MouseWheelUp
		case MouseWheelDown
			break
		default
			Context:Set[FALSE]			
			if ${Position}
			{
				Window:Press[-press,"${Button.Escape}",${This.GetCursorPos}]
			}
			else
			{
				Window:Press[-release,"${Button.Escape}",${This.GetCursorPos}]
			}
			break
		}
	}
 
	/* While left or right mouse button is held down, this will send relative mouse position changes */
	method OnMouseMove(int dX, int dY)
	{
		if ${Mouse.Cursor}
			return

		This:ProcessMouseMove[${dX},${dY}]			
	}

	method ProcessMouseMove(int dX, int dY)
	{
		/* Only apply mouse movement if the window is foreground! */
		if !${Display.Window.IsForeground}
			return

		Window:MouseMove[${This.GetCursorPos}]			
	}

	variable int lastframeX=-99999
	variable int lastframeY=-99999
	method OnFrame()
	{
		if !${Mouse.Cursor}
			return

		if ${Mouse.X}!=${lastframeX} || ${Mouse.Y}!=${lastframeY}
		{
			if ${lastframeX}!=-99999 && ${lastframeY}!=-99999
			{
				This:ProcessMouseMove[${Mouse.X:Dec[${lastframeX}]},${Mouse.Y:Dec[${lastframeY}]}]
			}
			lastframeX:Set[${Mouse.X}]
			lastframeY:Set[${Mouse.Y}]
		}
	}
	
	method SyncCursor(string target)
	{
		relay "${target.Escape}" "remotemouse ${Mouse.X} ${Mouse.Y} 0 0 ${Display.Width} ${Display.Height} 1 \"${MySourceName.Escape}\" ${This.GetVideoFeedInfo} \"${This.GetCurrentRegion.Escape.Escape}\""
	}

	/* While mouse repeating is enabled, this will send mousewheel movement */
	method OnMouseWheel(int offset)
	{
		if ${BlockLocal}
			Context:Set[FALSE]
		Window:MouseWheel[${offset},${This.GetCursorPos}]
	}
 
	/* This will flat out Enable the repeater. If it's already enabled, nothing will change. */
	method Enable(gdiwindow newWindow,int _elementid,string _sourcename)
	{
		Window:Set[${newWindow.HWND.Hex}]
		elementid:Set[${_elementid}]
		sourcename:Set["${_sourcename.Escape}"]
		Event[OnButtonMove${LastChance}]:AttachAtom[This:ButtonMoved]
		Event[OnMouseWheel${LastChance}]:AttachAtom[This:OnMouseWheel]
		Event[OnMouseMove]:AttachAtom[This:OnMouseMove]
		Event[OnFrame]:AttachAtom[This:OnFrame]
		Enabled:Set[TRUE]
	}
 
	/* This will flat out Disable the repeater. If it's already disabled, nothing will change. */
	method Disable()
	{
		Event[OnButtonMove${LastChance}]:DetachAtom[This:ButtonMoved]		
		Event[OnMouseWheel${LastChance}]:DetachAtom[This:OnMouseWheel]
		Event[OnFrame]:DetachAtom[This:OnFrame]
		Event[OnMouseMove]:DetachAtom[This:OnMouseMove]
		Enabled:Set[FALSE]
		PressTime:Clear

		Mouse1Down:Set[FALSE]
		Mouse2Down:Set[FALSE]
		Mouse3Down:Set[FALSE]
		Mouse4Down:Set[FALSE]
		Mouse5Down:Set[FALSE]
	}


}

/* Our mouse repeater object */
objectdef mouserepeater
{
	variable string LastChance
	/* This is our constructor. It makes sure the events we're attaching to are registered, so that we can attach to them later. */
	method Initialize()
	{
		if ${InnerSpace.Build}>=4906
		{
			LastChance:Set["LastChance"]
		}
		LavishScript:RegisterEvent[OnButtonMove${LastChance}]
		LavishScript:RegisterEvent[OnMouseWheel${LastChance}]
		LavishScript:RegisterEvent[OnFrame]
		LavishScript:RegisterEvent[OnMouseMove]
		LavishScript:RegisterEvent[OnCursorPositionUpdated]
		LavishScript:RegisterEvent[On Activate]
		LavishScript:RegisterEvent[On Deactivate]
		LavishScript:RegisterEvent[OnCursorStateChanged]
		Event[On Deactivate]:AttachAtom[This:OnDeactivate]

		if ${LavishScript.Executable.Find[dxNothing.exe]}
			This.Mute:Set[1]

		if ${LavishScript.Executable.Find[Skyforge.exe]}
			This.RelativeMode:Set[RELATIVE_SETCURSORPOS]

		Event[OnCursorStateChanged]:AttachAtom[This:OnCursorStateChanged]

		Event[OnCursorPositionUpdated]:AttachAtom[This:OnCursorPositionUpdated]
	}
 
	/* This variable stores whether it is currently enabled or not, so we can have our handy Toggle method. */
	variable bool Enabled=FALSE

	variable int RelativeMode=RELATIVE_MOUSEMOVE
	
	variable int TransformMode=TRANSFORM_NONE

	variable int InRegion
	variable string RelayTarget="all other"

	variable string RelayTargetOnClick="all other"
	variable bool BlockLocalOnClick=FALSE
	
	variable bool BlockLocal=FALSE
	
	variable bool DisableOnClick=FALSE
	
	variable bool IsVideoFeedOnClick=FALSE
	variable bool IsVideoFeed=FALSE

	variable string NextClickReason
 
	/* Mouse1Down and Mouse2Down keep the button state of Mouse1 and Mouse2 (left and right) 
           so we know whether to stop sending relative mouse movements. We only want them if a button is down (i.e. for mouselook)
	*/
	variable bool Mouse1Down=FALSE
	variable bool Mouse2Down=FALSE
	variable bool Mouse3Down=FALSE
	variable bool Mouse4Down=FALSE
	variable bool Mouse5Down=FALSE

	variable string MouseLight

	variable int SourceWidth=100
	variable int SourceHeight=100

	variable bool Mute
	variable bool MuteForeground

	variable bool VideoFXAlwaysAffectsRepeater=FALSE

	member:bool ShouldMute()
	{
		if ${Mute}
			return TRUE

		if !${MuteForeground}
			return FALSE

		return ${Display.Window.IsForeground}
	}

	member GetVideoFeedInfo()
	{
		if ${IsVideoFeed} && ${SourceWidth} && ${SourceHeight}
			return "${SourceWidth} ${SourceHeight}"
		return "0 0"
	}

	method SetVideoFeedEnabled(bool enable)
	{		
		This:SetVideoFeed[${enable},0,0,0,0,-1,"${ISBoxerUI.CursorOutputBorder.Escape}"]		
	}
		
	method SetVideoFeed(bool enable, int in_width, int in_height, int out_width, int out_height, int out_alpha, string out_border, bool set_on_click=TRUE)
	{
		IsVideoFeed:Set[${enable}]
		if ${set_on_click}
			IsVideoFeedOnClick:Set[${enable}]

		if ${enable}
		{
			if ${in_width} && ${in_height}
			{
				SourceWidth:Set[${in_width}]
				SourceHeight:Set[${in_height}]
			}
			if ${out_width} && ${out_height}
			{
				ISBoxerUI:SetCursorOutputSize[${out_width},${out_height}]
			}
			if ${out_alpha}>=0
			{
				ISBoxerUI:SetCursorOutputOpacity[${out_alpha}]
			}
			ISBoxerUI:SetCursorOutputBorder["${out_border.Escape}"]

			if ${Enabled} && ${Display.Window.IsForeground}
			{
				if ${Mouse.Cursor}
					relay "${RelayTarget.Escape}" "remotemouse ${Mouse.X} ${Mouse.Y} 0 0 ${Display.Width} ${Display.Height} 1 \"${MySourceName.Escape}\" ${This.GetVideoFeedInfo} \"${This.GetCurrentRegion.Escape.Escape}\""
				else
					relay "${RelayTarget.Escape}" "remotemouse -32768 -32768 0 0 ${Display.Width} ${Display.Height} 0 \"${MySourceName.Escape}\" ${This.GetVideoFeedInfo} \"${This.GetCurrentRegion.Escape.Escape}\""

				ISBoxerUI:RegisterCursorOutput
			}
		}
		else
		{
			ISBoxerUI:UnregisterCursorOutput
		}
	}
	method SetCursorSourceSize(int Width, int Height)
	{
		if ${Width}==${SourceWidth} && ${Height}==${SourceHeight}
			return

		SourceWidth:Set[${Width}]
		SourceHeight:Set[${Height}]

		if ${Enabled} && ${Display.Window.IsForeground}
		{
			if ${Mouse.Cursor}
				relay "${RelayTarget.Escape}" "remotemouse ${Mouse.X} ${Mouse.Y} 0 0 ${Display.Width} ${Display.Height} 1 \"${MySourceName.Escape}\" ${This.GetVideoFeedInfo} \"${This.GetCurrentRegion.Escape.Escape}\""
			else
				relay "${RelayTarget.Escape}" "remotemouse -32768 -32768 0 0 ${Display.Width} ${Display.Height} 0 \"${MySourceName.Escape}\" ${This.GetVideoFeedInfo} \"${This.GetCurrentRegion.Escape.Escape}\""

			ISBoxerUI:RegisterCursorOutput
		}
	}

	method SetKVMMode(bool enable)
	{
		BlockLocal:Set[${enable}]
		BlockLocalOnClick:Set[${enable}]
	}

	member Transform(int x, int y, int original_width, int original_height, string region_name, int region_x, int region_y, int region_width, int region_height)
	{
		if ${region_name.Length} && ${region_name.NotEqual[NULL]}
		{
			return ${ISBoxerUI.Transform[${x},${y},"${region_name.Escape}",${region_x},${region_y},${region_width},${region_height}]}
		}

		switch ${TransformMode}
		{
		case TRANSFORM_CENTER
			x:Inc[(${Display.Width}-${original_width})/2]		
			y:Inc[(${Display.Height}-${original_height})/2]
			break
		case TRANSFORM_SCALE
			x:Set[${x}*${Display.Width}/${original_width}]
			y:Set[${y}*${Display.Height}/${original_height}]
			break
		case TRANSFORM_CENTERSCALE
			; original distance from center
			x:Inc[${original_width}/2]		
			y:Inc[${original_height}/2]

			; scale
			x:Set[${x}*${Display.Width}/${original_width}]
			y:Set[${y}*${Display.Height}/${original_height}]

			; convert distance from center to current display
			x:Dec[${Display.Width}/2]		
			y:Dec[${Display.Height}/2]
			break
		default
		case TRANSFORM_NONE
			break
		}
		return "${x},${y}"
	}

	member:string GetMouseButtonsToRelease()
	{
		variable string combo
		if ${Mouse1Down}
			combo:Set[mouse1]

		if ${Mouse2Down}
		{
			if ${combo.Length}
				combo:Concat[+mouse2]
			else
				combo:Set[mouse2]
		}

		if ${Mouse3Down}
		{
			if ${combo.Length}
				combo:Concat[+mouse3]
			else
				combo:Set[mouse3]
		}

		if ${Mouse4Down}
		{
			if ${combo.Length}
				combo:Concat[+mouse4]
			else
				combo:Set[mouse4]
		}

		if ${Mouse5Down}
		{
			if ${combo.Length}
				combo:Concat[+mouse5]
			else
				combo:Set[mouse5]
		}

		if !${combo.Length}
			return noop
		return "remotebutton \"repeater@${Session.Escape}\" release ${combo}"
	}

	method SetRelayTarget(string target)
	{
		if ${Enabled} && ${Display.Window.IsForeground}
		{
			relay "${RelayTarget.Escape}" "noop \${FalseCursor:Hide};${This.GetMouseButtonsToRelease}"
			if !${KeyRepeater.Enabled}
				relay "${RelayTarget.Escape}" remotebutton "repeater@${Session.Escape}" release "160+161+162+163+164+165"
		}
		RelayTarget:Set["${target.Escape}"]
		RelayTargetOnClick:Set["${target.Escape}"]
		if ${Enabled} && ${Display.Window.IsForeground}
		{
			if ${Mouse.Cursor}
				relay "${RelayTarget.Escape}" "remotemouse ${Mouse.X} ${Mouse.Y} 0 0 ${Display.Width} ${Display.Height} 1 \"${MySourceName.Escape}\" ${This.GetVideoFeedInfo} \"${This.GetCurrentRegion.Escape.Escape}\""
			else
				relay "${RelayTarget.Escape}" "remotemouse -32768 -32768 0 0 ${Display.Width} ${Display.Height} 0 \"${MySourceName.Escape}\" ${This.GetVideoFeedInfo} \"${This.GetCurrentRegion.Escape.Escape}\""			
		}
	}

	method SendNextClick(string target,string why, bool blocklocal,bool usevideofeed, int videosourcewidth, int videosourceheight, int videooutputwidth, int videooutputheight, int videooutputalpha, string videooutputbordercolor)
	{
		if ${why.Length} && ${why.Equal["${NextClickReason.Escape}"]}
		{
			/* Toggle instead of enabling */
			This:StopNextClick
			;return
		}

		if !${NextClickReason.Length}
		{
			RelayTargetOnClick:Set["${RelayTarget.Escape}"]
			BlockLocalOnClick:Set[${BlockLocal}]
			IsVideoFeedOnClick:Set[${IsVideoFeed}]
			DisableOnClick:Set[!${Enabled}]
		}
		NextClickReason:Set["${why.Escape}"]
		RelayTarget:Set["${target.Escape}"]
		BlockLocal:Set[${blocklocal}]

		if ${usevideofeed}
			This:SetVideoFeed[${usevideofeed},${videosourcewidth},${videosourceheight},${videooutputwidth},${videooutputheight},${videooutputalpha},"${videooutputbordercolor.Escape}",0]
		This:Enable
	}

	method StopNextClick()
	{
		if ${DisableOnClick}
			This:Disable
		DisableOnClick:Set[FALSE]
		RelayTarget:Set["${RelayTargetOnClick.Escape}"]
		This:SetVideoFeedEnabled["${IsVideoFeedOnClick}"]
		BlockLocal:Set["${BlockLocalOnClick}"]		
		NextClickReason:Set[""]
	}
	
	/* Store the time it was pressed, so we can tell our targets to release after precisely the same length of time */
	variable collection:uint PressTime	
	member:uint GetReleaseTime(string Button,int64 TimeStamp)
	{
		if ${PressTime.Element["${Button.Escape}"]}
		{
;			echo TimeStamp=${TimeStamp}
			TimeStamp:Dec[${PressTime.Element["${Button.Escape}"]}]
			PressTime:Erase["${Button.Escape}"]
;			echo ReleaseTime=${TimeStamp}
			if ${TimeStamp}>1000
				return 0
			return ${TimeStamp}
		}
		return 0
	}
 
	/* This is an event handler for when a button is pressed or released. That includes keyboard and mouse, as well as alternative input devices like a Saitek pad or G15 keys. 
	   The event handler will only be called when our state is Enabled. */
	method ButtonMoved(string Button, bool Position, uint TimeStamp)
	{
		/* This echo is commented out, but you can un-comment it to see messages when a button is pressed or released */
;		echo Button=${Button} position=${Position}
 
		/* Use a switch to efficiently handle special cases */
		switch ${Button}
		{
		/* For mouse buttons 1 and 2, we also want the mouse position if the cursor is visible */
		case Mouse1
			if ${BlockLocal}
				Context:Set[FALSE]
			if ${Position}
			{
				PressTime:Set["${Button.Escape}",${TimeStamp}]
				/* Attach to the OnMouseMove event, because until we release the button, we want to relay relative mouse movements */
				Mouse1Down:Set[TRUE]
 
				/* And only send the cursor position if the cursor is currently visible... */
					relay "${RelayTarget.Escape}" remotebutton "repeater@${Session.Escape}" hold mouse1
 
			}
			else
			{
				/* If neither button is held down now, stop relaying relative mouse movements */
				Mouse1Down:Set[FALSE]
 
				/* And only send the cursor position if the cursor is currently visible... */
				;if ${Mouse.Cursor}
					relay "${RelayTarget.Escape}" remotebutton "repeater@${Session.Escape}" release mouse1 ${This.GetReleaseTime["${Button.Escape}",${TimeStamp}]}

				This:StopNextClick
			}
			break
		case Mouse2
			if ${BlockLocal}
				Context:Set[FALSE]
			if ${Position}
			{
				PressTime:Set["${Button.Escape}",${TimeStamp}]
				/* Attach to the OnMouseMove event, because until we release the button, we want to relay relative mouse movements */
				Mouse2Down:Set[TRUE]
 
				/* And only send the cursor position if the cursor is currently visible... */
					relay "${RelayTarget.Escape}" remotebutton "repeater@${Session.Escape}" hold mouse2
			}
			else
			{
				/* If neither button is held down now, stop relaying relative mouse movements */
				Mouse2Down:Set[FALSE]
 
				/* And only send the cursor position if the cursor is currently visible... */
					relay "${RelayTarget.Escape}" remotebutton "repeater@${Session.Escape}" release mouse2 ${This.GetReleaseTime["${Button.Escape}",${TimeStamp}]}
				This:StopNextClick
			}
			break
		case Mouse3		
		case Mouse4
		case Mouse5
			if ${BlockLocal}
				Context:Set[FALSE]
			/* In the default case for other mouse buttons, we want "${RelayTarget.Escape}" windows to repeat the same action. */
			if ${Position}
			{
				noop ${${Button}Down:Set[TRUE]}

				PressTime:Set["${Button.Escape}",${TimeStamp}]
				relay "${RelayTarget.Escape}" remotebutton "repeater@${Session.Escape}" hold "${Button.Escape}"
				
			}
			else
			{
				noop ${${Button}Down:Set[FALSE]}
				relay "${RelayTarget.Escape}" remotebutton "repeater@${Session.Escape}" release "${Button.Escape}" ${This.GetReleaseTime["${Button.Escape}",${TimeStamp}]}
				This:StopNextClick
			}
			break
		case Mouse6
		case Mouse7
		case Mouse8
			if ${BlockLocal}
				Context:Set[FALSE]
			/* In the default case for other mouse buttons, we want "${RelayTarget.Escape}" windows to repeat the same action. */
			if ${Position}
			{
				PressTime:Set["${Button.Escape}",${TimeStamp}]
				relay "${RelayTarget.Escape}" remotebutton "repeater@${Session.Escape}" hold "${Button.Escape}"
			}
			else
			{
				relay "${RelayTarget.Escape}" remotebutton "repeater@${Session.Escape}" release "${Button.Escape}" ${This.GetReleaseTime["${Button.Escape}",${TimeStamp}]}
				This:StopNextClick
			}
			break
		case MouseWheelUp
		case MouseWheelDown
			break
		default
			if ${KeyRepeater.Enabled}
				break
			if ${Button.Equal["${Input.Button[160]}"]} || \ 
				${Button.Equal["${Input.Button[161]}"]} || \ 
				${Button.Equal["${Input.Button[162]}"]} || \ 
				${Button.Equal["${Input.Button[163]}"]} || \ 
				${Button.Equal["${Input.Button[164]}"]} || \ 
				${Button.Equal["${Input.Button[165]}"]}
			{
				if ${Position}
					relay "${RelayTarget.Escape}" remotebutton "repeater@${Session.Escape}" hold "${Button.Escape}"
				else
					relay "${RelayTarget.Escape}" remotebutton "repeater@${Session.Escape}" release "${Button.Escape}"
			}
			break
		}
	}

	method OnCursorStateChanged()
	{
		relay all remotecursorstate "${MySourceName.Escape}" ${Mouse.Cursor}
	}

	variable int gcpX = -99999
	variable int gcpY = -99999

	method OnCursorPositionUpdated(bool emulated, bool setcursorPos, bool getcursorPos, bool absolute)
	{
		variable int dX
		variable int dY
		if ${Mouse.Cursor}
		{
			gcpX:Set[-99999]
			gcpY:Set[-99999]
			return
		}

		if ${getcursorPos}
		{
			if ${This.Enabled} && ${RelativeMode}==RELATIVE_GETCURSORPOS && !${emulated}
			{
				if ${gcpX}!=-99999 && ${gcpY}!=-99999
				{
					dX:Set[${Mouse.X}]:Dec[${gcpX}]
					dY:Set[${Mouse.Y}]:Dec[${gcpY}]
					if /*${dX}!=0 && ${dY}!=0 &&*/ ${Display.Window.IsForeground}
						relay "${RelayTarget.Escape}" "remotemouseupdate ${Mouse.X} ${Mouse.Y} ${dX} ${dY} \"${MySourceName.Escape}\""
				}
				else
				{
					if ${Display.Window.IsForeground}
						relay "${RelayTarget.Escape}" "remotemouseupdate ${Mouse.X} ${Mouse.Y} 0 0 \"${MySourceName.Escape}\""
				}
			}

			gcpX:Set[${Mouse.X}]
			gcpY:Set[${Mouse.Y}]

/*
			if ${dX}!=0 && ${dY}!=0
			{
				ISBoxerUI:DebugOut["Cursor","OnCursorPositionUpdated ${Mouse} gcpPos=${gcpX},${gcpY} diff=${dX},${dY} emulated=${emulated} setcursorPos=${setcursorPos} getcursorPos=${getcursorPos} absolute=${absolute}"]		
			}
/**/
			return
		}
		if ${setcursorPos}
		{

			if ${This.Enabled} && ${RelativeMode}==RELATIVE_SETCURSORPOS && !${emulated}
			{
				if ${gcpX}!=-99999 && ${gcpY}!=-99999
				{
					dX:Set[${gcpX}]:Dec[${Mouse.X}]
					dY:Set[${gcpY}]:Dec[${Mouse.Y}]

					if ${Display.Window.IsForeground}
						relay "${RelayTarget.Escape}" "remotemouseupdate ${Mouse.X} ${Mouse.Y} ${dX} ${dY} \"${MySourceName.Escape}\""
				}
				else
				{
					if ${Display.Window.IsForeground}
						relay "${RelayTarget.Escape}" "remotemouseupdate ${Mouse.X} ${Mouse.Y} 0 0 \"${MySourceName.Escape}\""
				}
			}

			gcpX:Set[${Mouse.X}]
			gcpY:Set[${Mouse.Y}]
			lastframeX:Set[${Mouse.X}]
			lastframeY:Set[${Mouse.Y}]

;				ISBoxerUI:DebugOut["Cursor","OnCursorPositionUpdated ${Mouse} gcpPos=${gcpX},${gcpY} diff=${dX},${dY} emulated=${emulated} setcursorPos=${setcursorPos} getcursorPos=${getcursorPos} absolute=${absolute}"]		

		}
	}
 
	/* While left or right mouse button is held down, this will send relative mouse position changes */
	method OnMouseMove(int dX, int dY)
	{
		if ${Mouse.Cursor}
			return

		if ${BlockLocal}
		{
			Context:Set[FALSE]
		}

		if ${RelativeMode}==RELATIVE_MOUSEMOVE
			This:ProcessMouseMove[${dX},${dY}]			
	}

	method ProcessMouseMove(int dX, int dY)
	{
		ISBoxerUI:DebugOut["Cursor","ProcessMouseMove ${dX},${dY}"]

		/* Only apply mouse movement if the window is foreground! */
		if !${Display.Window.IsForeground}
			return
			
		if ${Mouse.Cursor}
			relay "${RelayTarget.Escape}" "remotemouse ${Mouse.X} ${Mouse.Y} ${dX} ${dY} ${Display.Width} ${Display.Height} 0 \"${MySourceName.Escape}\" ${This.GetVideoFeedInfo} \"${This.GetCurrentRegion.Escape.Escape}\""
		else
		{
				relay "${RelayTarget.Escape}" "remotemouse -32768 -32768 ${dX} ${dY} ${Display.Width} ${Display.Height} 0 \"${MySourceName.Escape}\" ${This.GetVideoFeedInfo} \"${This.GetCurrentRegion.Escape.Escape}\""
		}
		if ${IsVideoFeed}
			ISBoxerUI:RegisterCursorOutput			
	}

	variable int lastframeX=-99999
	variable int lastframeY=-99999
	method OnFrame()
	{
		; Generate broadcasted updates from absolute cursor position changes
		if ${RelativeMode}!=RELATIVE_FRAMEDIFF && !${Mouse.Cursor}
		{
			lastframeX:Set[-99999]
			lastframeY:Set[-99999]
			return
		}

		if ${Mouse.X}!=${lastframeX} || ${Mouse.Y}!=${lastframeY}
		{
			if ${lastframeX}!=-99999 && ${lastframeY}!=-99999
			{
				This:ProcessMouseMove[${Mouse.X:Dec[${lastframeX}]},${Mouse.Y:Dec[${lastframeY}]}]
			}
			lastframeX:Set[${Mouse.X}]
			lastframeY:Set[${Mouse.Y}]
		}
	}
	
	method SyncCursor(string target)
	{
		relay "${target.Escape}" "remotemouse ${Mouse.X} ${Mouse.Y} 0 0 ${Display.Width} ${Display.Height} 1 \"${MySourceName.Escape}\" ${This.GetVideoFeedInfo} \"${This.GetCurrentRegion.Escape.Escape}\""
	}

	/* While mouse repeating is enabled, this will send mousewheel movement */
	method OnMouseWheel(int offset)
	{
		if ${BlockLocal}
			Context:Set[FALSE]
		relay "${RelayTarget.Escape}" mousewheel ${offset}
	}
 
 
	/* This is the easiest thing to bind to. One press to turn it on, one press to turn it off, no extra work. */
	method Toggle()
	{
		if ${Enabled}
			This:Disable
		else
			This:Enable
	}
 
	/* This will flat out Enable the repeater. If it's already enabled, nothing will change. */
	method Enable()
	{
		lastframeX:Set[-99999]
		lastframeY:Set[-99999]
			gcpX:Set[-99999]
			gcpY:Set[-99999]

		if ${Display.Window.IsForeground}
		{
			if ${Mouse.Cursor}
				relay "${RelayTarget.Escape}" "remotemouse ${Mouse.X} ${Mouse.Y} 0 0 ${Display.Width} ${Display.Height} 1 \"${MySourceName.Escape}\" ${This.GetVideoFeedInfo} \"${This.GetCurrentRegion.Escape.Escape}\""
			else
				relay "${RelayTarget.Escape}" "remotemouse -32768 -32768 0 0 ${Display.Width} ${Display.Height} 0 \"${MySourceName.Escape}\" ${This.GetVideoFeedInfo} \"${This.GetCurrentRegion.Escape.Escape}\""

			if ${IsVideoFeed}
				ISBoxerUI:RegisterCursorOutput			

			if ${Input.Button[160].Pressed}
				relay "${RelayTarget.Escape}" remotebutton "repeater@${Session.Escape}" hold "160"
			if ${Input.Button[161].Pressed}
				relay "${RelayTarget.Escape}" remotebutton "repeater@${Session.Escape}" hold "161"
			if ${Input.Button[162].Pressed}
				relay "${RelayTarget.Escape}" remotebutton "repeater@${Session.Escape}" hold "162"
			if ${Input.Button[163].Pressed}
				relay "${RelayTarget.Escape}" remotebutton "repeater@${Session.Escape}" hold "163"
			if ${Input.Button[164].Pressed}
				relay "${RelayTarget.Escape}" remotebutton "repeater@${Session.Escape}" hold "164"
			if ${Input.Button[165].Pressed}
				relay "${RelayTarget.Escape}" remotebutton "repeater@${Session.Escape}" hold "165"
			
			if ${InnerSpace.Build}>=5630 && ${Display.Window.IsForeground}
			{
				if ${Input.Button[mouse1].Pressed(int)}==1
				{
					relay "${RelayTarget.Escape}" remotebutton "repeater@${Session.Escape}" hold "mouse1"
					Mouse1Down:Set[1]
				}
				if ${Input.Button[mouse2].Pressed(int)}==1
				{
					relay "${RelayTarget.Escape}" remotebutton "repeater@${Session.Escape}" hold "mouse2"
					Mouse2Down:Set[1]
				}
				if ${Input.Button[mouse3].Pressed(int)}==1
				{
					relay "${RelayTarget.Escape}" remotebutton "repeater@${Session.Escape}" hold "mouse3"
					Mouse3Down:Set[1]
				}
				if ${Input.Button[mouse4].Pressed(int)}==1
				{
					relay "${RelayTarget.Escape}" remotebutton "repeater@${Session.Escape}" hold "mouse4"
					Mouse4Down:Set[1]
				}
				if ${Input.Button[mouse5].Pressed(int)}==1
				{
					relay "${RelayTarget.Escape}" remotebutton "repeater@${Session.Escape}" hold "mouse5"
					Mouse5Down:Set[1]
				}
			}
		}

		Event[OnButtonMove${LastChance}]:AttachAtom[This:ButtonMoved]
		Event[OnMouseWheel${LastChance}]:AttachAtom[This:OnMouseWheel]
		Event[OnMouseMove]:AttachAtom[This:OnMouseMove]
		Event[OnFrame]:AttachAtom[This:OnFrame]
		Enabled:Set[TRUE]
		This:LightOn
		
		UIElement[mousetoggle@main@repeater]:SetText["*Mouse*"]
		Event[Repeater:MouseRepeatEnabled]:Execute
	}
 
	/* This will flat out Disable the repeater. If it's already disabled, nothing will change. */
	method Disable()
	{
		if ${Display.Window.IsForeground}
		{
			relay "${RelayTarget.Escape}" "noop \${FalseCursor:Hide};${This.GetMouseButtonsToRelease}"
;			relay "${RelayTarget.Escape}" "noop \${FalseCursor:Hide};remotebutton \"repeater@${Session.Escape}\" release mouse1+mouse2+mouse3+mouse4+mouse5"
			if !${KeyRepeater.Enabled}
				relay "${RelayTarget.Escape}" remotebutton "repeater@${Session.Escape}" release "160+161+162+163+164+165"	
		}
		Event[OnButtonMove${LastChance}]:DetachAtom[This:ButtonMoved]		
		Event[OnMouseWheel${LastChance}]:DetachAtom[This:OnMouseWheel]
		Event[OnFrame]:DetachAtom[This:OnFrame]
		Event[OnMouseMove]:DetachAtom[This:OnMouseMove]
		Enabled:Set[FALSE]
		This:LightOff
		PressTime:Clear

		UIElement[mousetoggle@main@repeater]:SetText["Mouse"]
		Event[Repeater:MouseRepeatDisabled]:Execute
		ISBoxerUI:UnregisterCursorOutput					
		Mouse1Down:Set[FALSE]
		Mouse2Down:Set[FALSE]
		Mouse3Down:Set[FALSE]
		Mouse4Down:Set[FALSE]
		Mouse5Down:Set[FALSE]
	}
 

	method LightOn()
	{
		if !${Display.Window.IsForeground}
			return
		if ${MouseLight.Length}
			Input.G15:Set${MouseLight}Light[TRUE]
	}

	method LightOff()
	{
		if !${Display.Window.IsForeground}
			return
		if ${MouseLight.Length}
			Input.G15:Set${MouseLight}Light[FALSE]
	}

	method SetLight(string light)
	{
		This:LightOff
		switch ${light}
		{
		case M1
			MouseLight:Set[M1]
			break
		case M2
			MouseLight:Set[M2]
			break
		case M3
			MouseLight:Set[M3]
			break
		case MR
			MouseLight:Set[MR]
			break
		default
			MouseLight:Set[""]
			return
		}
		Event[On Activate]:AttachAtom[This:OnActivate]
		This:UpdateLightStatus
	}

	method UpdateLightStatus()
	{
		if ${Enabled}
			This:LightOn
		else
			This:LightOff
	}

	method OnActivate()
	{
		This:UpdateLightStatus
	}
	
	method OnDeactivate()
	{
		if ${Enabled} && !${KeyRepeater.Enabled}
			relay "${RelayTarget.Escape}" remotebutton "repeater@${Session.Escape}" release "160+161+162+163+164+165"	
		This:ExitCurrentRegion
		ISBoxerUI:ExitCurrentClickBarButton
	}
	
	method EnterRegion(int elementid)
	{
		variable string sourcename
		if ${InRegion} && ${InRegion}!=${elementid}
		{
			This:ExitRegion[${InRegion}]
		}
		if !${elementid} || ${InRegion}==${elementid}
			return
		variable string tempTarget

		InRegion:Set[${elementid}]
		if ${UIElement[${elementid}].GetMetadata[key map].Length}	
		{
			if ${UIElement[${elementid}].GetMetadata[mapped key].Length}			
				keymapper -holdmappedkey "${UIElement[${elementid}].GetMetadata[key map].Escape}" "${UIElement[${elementid}].GetMetadata[mapped key].Escape}"
			else
				keymapper -loadmap "${UIElement[${elementid}].GetMetadata[key map].Escape}"
;				echo keymapper -holdmappedkey "${UIElement[${elementid}].GetMetadata[key map].Escape}" "${UIElement[${elementid}].GetMetadata[mapped key].Escape}"
		}

		if ${Bool["${UIElement[${elementid}].GetMetadata[use focus hotkey].Escape}"]}
		{
			sourcename:Set["${UIElement[${elementid}].GetMetadata[feedoutput].Escape}"]

			if ${VideoFeed.Source["${sourcename.Escape}"].Session.Length}
			{
;				bind isboxer_clicktofocus mouse1 uplink focus "${VideoFeed.Source["${sourcename.Escape}"].Session.Escape}"
				Input:Bind[-release,isboxer_clicktofocus,${ISBoxerVideoFXFocusHotkey},"uplink focus \"${VideoFeed.Source["${sourcename.Escape}"].Session.Escape}\""]
			}
			else
			{
;				echo "Click to Focus: Unknown session for source named "${sourcename.Escape}"... trying the source window...
				Input:Bind[-release,isboxer_clicktofocus,${ISBoxerVideoFXFocusHotkey},"uplink focus \"${VideoFeed.Source["${sourcename.Escape}"].Window}\""]
			}	

		}

		if ${Bool["${UIElement[${elementid}].GetMetadata[use mouse].Escape}"]} && ${VideoFeed.Source["${UIElement[${elementid}].GetMetadata[feedoutput].Escape}"](exists)}
		{
			sourcename:Set["${UIElement[${elementid}].GetMetadata[feedoutput].Escape}"]
			if ${VideoFeed.Source["${sourcename.Escape}"].Session.Length}
			{
				UIElement[${elementid}]:SetMetadata[lastkbenabled,"${KeyRepeater.Enabled}"]
				UIElement[${elementid}]:SetMetadata[lastenabled,"${Enabled}"]
				UIElement[${elementid}]:SetMetadata[lasttarget,"${RelayTarget.Escape}"]
				UIElement[${elementid}]:SetMetadata[lastblocklocal,"${BlockLocal}"]

				tempTarget:Set["${VideoFeed.Source["${sourcename.Escape}"].Session.Escape}"]
				BlockLocal:Set["${UIElement[${elementid}].GetMetadata[block local].Escape}"]

				BlockLocalOnClick:Set[${BlockLocal}]
				if ${tempTarget.Equal["${Int["${tempTarget.Escape}"]}"]}
				{
					This:SetRelayTarget["is${tempTarget.Escape}"]
				}
				else
					This:SetRelayTarget["${tempTarget.Escape}"]
				This:Enable

				if ${Bool["${UIElement[${elementid}].GetMetadata[use keyboard].Escape}"]}
				{
					KeyRepeater:SetRelayTarget["${RelayTarget.Escape}"]
					KeyRepeater:SetKVMMode[${BlockLocal}]
					KeyRepeater:Enable
				}
			}
			else
			{
				GDIRepeater:Enable["${VideoFeed.Source["${sourcename.Escape}"].Window}",${elementid},"${sourcename.Escape}"]
			}
		}
		else
		if ${UIElement[${elementid}].GetMetadata[target].Length}
		{
			UIElement[${elementid}]:SetMetadata[lastkbenabled,"${KeyRepeater.Enabled}"]
			UIElement[${elementid}]:SetMetadata[lastenabled,"${Enabled}"]
			UIElement[${elementid}]:SetMetadata[lasttarget,"${RelayTarget.Escape}"]
			UIElement[${elementid}]:SetMetadata[lastblocklocal,"${BlockLocal}"]
			tempTarget:Set["${UIElement[${elementid}].GetMetadata[target].Escape}"]
			BlockLocal:Set["${UIElement[${elementid}].GetMetadata[block local].Escape}"]

			BlockLocalOnClick:Set[${BlockLocal}]
			if ${tempTarget.Equal["${Int["${tempTarget.Escape}"]}"]}
			{
				This:SetRelayTarget["is${tempTarget.Escape}"]
			}
			else
				This:SetRelayTarget["${tempTarget.Escape}"]
			This:Enable

			if ${Bool["${UIElement[${elementid}].GetMetadata[use keyboard].Escape}"]}
			{
				KeyRepeater:SetRelayTarget["${RelayTarget.Escape}"]
				KeyRepeater:SetKVMMode[${BlockLocal}]
				KeyRepeater:Enable
			}
		}
	}

	member:string GetCurrentRegion()
	{
		if ${InRegion} && ${UIElement[${InRegion}].GetMetadata[Region Name](exists)}
			return "${ISBoxerUI.GetRegionInfo[${InRegion}].Escape}"

		if ${ISBoxerUI.RepeaterVideoFeedOutput} && (${VideoFXAlwaysAffectsRepeater} || ${ISBoxerUI.RepeaterVideoFeedOutputUsesRepeater})
			return "${ISBoxerUI.GetRegionInfo[${ISBoxerUI.RepeaterVideoFeedOutput}].Escape}"

		return 
	}
	
	method ExitRegion(int elementid)
	{
		if ${elementid} && ${InRegion}==${elementid}
		{
			InRegion:Set[0]

			if ${Bool["${UIElement[${elementid}].GetMetadata[use mouse].Escape}"]}
			{
				GDIRepeater:Disable

				if !${Bool["${UIElement[${elementid}].GetMetadata[lastenabled].Escape}"]}
					This:Disable

				if ${Bool["${UIElement[${elementid}].GetMetadata[use keyboard].Escape}"]}
				{
					KeyRepeater:SetRelayTarget["${UIElement[${elementid}].GetMetadata[lasttarget].Escape}"]
					KeyRepeater:SetKVMMode["${UIElement[${elementid}].GetMetadata[lastblocklocal].Escape}"]

					if !${Bool["${UIElement[${elementid}].GetMetadata[lastkbenabled].Escape}"]}
						KeyRepeater:Disable
				}


				This:SetRelayTarget["${UIElement[${elementid}].GetMetadata[lasttarget].Escape}"]
				BlockLocal:Set["${UIElement[${elementid}].GetMetadata[lastblocklocal].Escape}"]
				BlockLocalOnClick:Set[${BlockLocal}]
			}
			else
			if ${UIElement[${elementid}].GetMetadata[target].Length}
			{
				if !${Bool["${UIElement[${elementid}].GetMetadata[lastenabled].Escape}"]}
					This:Disable

				if ${Bool["${UIElement[${elementid}].GetMetadata[use keyboard].Escape}"]}
				{
					KeyRepeater:SetRelayTarget["${UIElement[${elementid}].GetMetadata[lasttarget].Escape}"]
					KeyRepeater:SetKVMMode["${UIElement[${elementid}].GetMetadata[lastblocklocal].Escape}"]

					if !${Bool["${UIElement[${elementid}].GetMetadata[lastkbenabled].Escape}"]}
						KeyRepeater:Disable
				}

				This:SetRelayTarget["${UIElement[${elementid}].GetMetadata[lasttarget].Escape}"]
				BlockLocal:Set["${UIElement[${elementid}].GetMetadata[lastblocklocal].Escape}"]
				BlockLocalOnClick:Set[${BlockLocal}]
			}			

			if ${Bool["${UIElement[${elementid}].GetMetadata[use focus hotkey].Escape}"]}
			{
				squelch bind -delete isboxer_clicktofocus
			}

			if ${UIElement[${elementid}].GetMetadata[key map].Length}
			{
				if  ${UIElement[${elementid}].GetMetadata[mapped key].Length}
					keymapper -releasemappedkey "${UIElement[${elementid}].GetMetadata[key map].Escape}" "${UIElement[${elementid}].GetMetadata[mapped key].Escape}"
				else
					keymapper -unloadmap "${UIElement[${elementid}].GetMetadata[key map].Escape}"

;				echo keymapper -releasemappedkey "${UIElement[${elementid}].GetMetadata[key map].Escape}" "${UIElement[${elementid}].GetMetadata[mapped key].Escape}"
			}			
		}
	}
	
	method ExitCurrentRegion()
	{
		if !${InRegion}
			return
		This:ExitRegion[${InRegion}]
	}
}
 
/* Our key repeater object */
objectdef keyrepeater
{
	variable string LastChance
	/* This is our constructor. It makes sure the events we're attaching to are registered, so that we can attach to them later. */
	method Initialize()
	{
		if ${InnerSpace.Build}>=4906
		{
			LastChance:Set["LastChance"]
		}
		LavishScript:RegisterEvent[OnButtonMove${LastChance}]
		LavishScript:RegisterEvent[On Activate]
		LavishScript:RegisterEvent[On Deactivate]
		Event[On Deactivate]:AttachAtom[This:OnDeactivate]

		LavishSettings:AddSet["Repeater Keylists"]
		ListRoot:Set[${LavishSettings.FindSet["Repeater Keylists"]}]
		if ${LavishScript.Executable.Find[dxNothing.exe]}
			This.Mute:Set[1]
	}
 
	method Shutdown()
	{
		ListRoot:Remove
	}
 
	/* This variable stores whether it is currently enabled or not, so we can have our handy Toggle method. */
	variable bool Enabled=FALSE
 
	variable settingsetref ListRoot
	variable settingsetref KeyList
	variable bool WhiteList

	variable string FTLMods
	variable string HeldFTLMods
	variable uint KeysDown
 	variable string KeyLight

	variable bool BlockLocal
	variable string RelayTarget="all other"

	variable bool Mute

	method SetRelayTarget(string target)
	{
		if ${Enabled} && ${Display.Window.IsForeground}
		{
			relay "${RelayTarget.Escape}" remotebutton "repeater@${Session.Escape}" release "160+161+162+163+164+165"
		}

		RelayTarget:Set["${target.Escape}"]
	}

	/* Store the time it was pressed, so we can tell our targets to release after precisely the same length of time */
	variable collection:uint PressTime	
	member:uint GetReleaseTime(string Button,int64 TimeStamp)
	{
		if ${PressTime.Element["${Button.Escape}"]}
		{
;			echo TimeStamp=${TimeStamp}
			TimeStamp:Dec[${PressTime.Element["${Button.Escape}"]}]
			PressTime:Erase["${Button.Escape}"]
;			echo ReleaseTime=${TimeStamp}
			if ${TimeStamp}>1000
				return 0
			return ${TimeStamp}
		}
		return 0
	}

	/* This is an event handler for when a button is pressed or released. That includes keyboard and mouse, as well as alternative input devices like a Saitek pad or G15 keys. 
	   The event handler will only be called when our state is Enabled. */
	method ButtonMoved(string Button, bool Position, uint TimeStamp)
	{
		if !${Display.Window.IsForeground}
			return
			
		/* This echo is commented out, but you can un-comment it to see messages when a button is pressed or released */
;		echo Button=${Button} position=${Position}
 
		/* Use a switch to efficiently handle special cases */
		switch ${Button}
		{
		/* Ignore mouse buttons, those are for the mouse repeater to handle */
		case Mouse1
		case Mouse2
		case Mouse3
		case Mouse4
		case Mouse5
		case Mouse6
		case Mouse7
		case Mouse8
		case MouseWheelUp
		case MouseWheelDown
			break
		default
			if ${BlockLocal}
				Context:Set[FALSE]

			/* Determine if we are using a keylist */
			if ${KeyList.Name(exists)}
			{
				/* is it a white or black list? */
				if ${WhiteList}
				{
					/* whitelist. ignore key if it is NOT in the list */
					if !${KeyList.FindSetting["${Button.Escape}"](exists)}
						break
				}
				else
				{
					/* blacklist. ignore key if it is in the list. */
					if ${KeyList.FindSetting["${Button.Escape}"](exists)}
						break
				}
			}

			if ${Position}
			{
				PressTime:Set["${Button.Escape}",${TimeStamp}]
				KeysDown:Inc
				if ${FTLMods.Length} && ${HeldFTLMods.Length}==0
				{
					This:PressFTLModifiers
				}
			}
			else
			{
				if ${KeysDown}
					KeysDown:Dec
			}

;			echo KeysDown=${KeysDown}
 
			/* In the default case, we want "${RelayTarget.Escape}" windows to repeat the same action. */
			
			if ${Position}
			{
				if ${Button.Equal["\\"]}
					relay "${RelayTarget.Escape}" remotebutton "repeater@${Session.Escape}" hold "\\\\"
				else
					relay "${RelayTarget.Escape}" remotebutton "repeater@${Session.Escape}" hold "${Button.Escape}"
			}
			else
			{
				if ${Button.Equal["\\"]}
					relay "${RelayTarget.Escape}" remotebutton "repeater@${Session.Escape}" release "\\\\" ${This.GetReleaseTime["${Button.Escape}",${TimeStamp}]}
				elseif ${Button.Equal["\""]}
					relay "${RelayTarget.Escape}" "remotebutton \"repeater@${Session.Escape}\" release \"\\\"\" \"${This.GetReleaseTime["${Button.Escape}",${TimeStamp}]}\""
				else
					relay "${RelayTarget.Escape}" remotebutton "repeater@${Session.Escape}" release "${Button.Escape}" ${This.GetReleaseTime["${Button.Escape}",${TimeStamp}]}
			}

			if ${KeysDown}==0 && ${HeldFTLMods.Length}
			{
				This:ReleaseFTLModifiers
			}

			break
		}
	}

	method PressFTLModifiers()
	{
		if !${Display.Window.IsForeground}
			return
		if ${FTLMods.Length}
		{
			relay "${RelayTarget.Escape}" remotebutton "repeater@${Session.Escape}" hold "${FTLMods.Escape}"
			HeldFTLMods:Set["${FTLMods.Escape}"]
		}
	}

	method ReleaseFTLModifiers()
	{
		if ${HeldFTLMods.Length}
		{
			relay "${RelayTarget.Escape}" remotebutton "repeater@${Session.Escape}" release "${HeldFTLMods}"
			HeldFTLMods:Set[""]
		}

	}
 
	method RemoveList(string name)
	{
		ListRoot.FindSet["${name.Escape}"]:Remove
	}
 
	method ImportLists(string Filename)
	{
		ListRoot:Import["${Filename}"]
	}
 
	method ExportLists(string Filename)
	{
		ListRoot:Export["${Filename}"]
	}
 
	method SetList(bool White, string Name)
	{
		WhiteList:Set[${White}]
		KeyList:Set[${ListRoot.FindSet["${Name.Escape}"]}]
	}
 
	method UnsetList()
	{
		KeyList:Set[0]
	}
 
	method SetKVMMode(bool enable)
	{
		BlockLocal:Set[${enable}]
	}
 
	/* This is the easiest thing to bind to. One press to turn it on, one press to turn it off, no extra work. */
	method Toggle()
	{
		if ${Enabled}
			This:Disable
		else
			This:Enable
	}
 
	/* This will flat out Enable the repeater. If it's already enabled, nothing will change. */
	method Enable()
	{
		Event[OnButtonMove${LastChance}]:AttachAtom[This:ButtonMoved]
		Enabled:Set[TRUE]	
		
		if ${Input.Button[160].Pressed}
			relay "${RelayTarget.Escape}" remotebutton "repeater@${Session.Escape}" hold "160"
		if ${Input.Button[161].Pressed}
			relay "${RelayTarget.Escape}" remotebutton "repeater@${Session.Escape}" hold "161"
		if ${Input.Button[162].Pressed}
			relay "${RelayTarget.Escape}" remotebutton "repeater@${Session.Escape}" hold "162"
		if ${Input.Button[163].Pressed}
			relay "${RelayTarget.Escape}" remotebutton "repeater@${Session.Escape}" hold "163"
		if ${Input.Button[164].Pressed}
			relay "${RelayTarget.Escape}" remotebutton "repeater@${Session.Escape}" hold "164"
		if ${Input.Button[165].Pressed}
			relay "${RelayTarget.Escape}" remotebutton "repeater@${Session.Escape}" hold "165"
			
		This:LightOn
		
		UIElement[keytoggle@main@repeater]:SetText["*Keys*"]
		Event[Repeater:KeyRepeatEnabled]:Execute

	}
 
	/* This will flat out Disable the repeater. If it's already disabled, nothing will change. */
	method Disable()
	{
		Event[OnButtonMove${LastChance}]:DetachAtom[This:ButtonMoved]		
		Enabled:Set[FALSE]

		if ${KeysDown}
		{
			KeysDown:Set[0]
		}
		if ${Display.Window.IsForeground}
			relay "all other" remotebutton "repeater@${Session.Escape}" release "160+161+162+163+164+165"
		This:ReleaseFTLModifiers
		This:LightOff
		PressTime:Clear
		
		UIElement[keytoggle@main@repeater]:SetText["Keys"]
		Event[Repeater:KeyRepeatDisabled]:Execute
	}

	method OnDeactivate()
	{
		if ${This.Enabled}
			relay "${RelayTarget.Escape}" remotebutton "repeater@${Session.Escape}" release "160+161+162+163+164+165"	
	}

	method LightOn()
	{
		if !${Display.Window.IsForeground}
			return
		if ${KeyLight.Length}
		{
			Input.G15:Set${KeyLight}Light[TRUE]
		}
	}

	method LightOff()
	{
		if ${KeyLight.Length}
		{
			Input.G15:Set${KeyLight}Light[FALSE]
		}
	}

	method SetLight(string light)
	{
		This:LightOff
		switch ${light}
		{
		case M1
			KeyLight:Set[M1]
			break
		case M2
			KeyLight:Set[M2]
			break
		case M3
			KeyLight:Set[M3]
			break
		case MR
			KeyLight:Set[MR]
			break
		default
			KeyLight:set[""]
			return
		}
		Event[On Activate]:AttachAtom[This:OnActivate]
		This:UpdateLightStatus

	}

	method UpdateLightStatus()
	{
		if ${Enabled}
			This:LightOn
		else
			This:LightOff
	}
 
	method OnActivate()
	{
		This:UpdateLightStatus
	}

}

objectdef falsecursor
{
	variable bool Active=TRUE
	variable bool Enabled=FALSE
	variable bool IsSet=FALSE
	variable bool IsVideoSource=FALSE
	variable int VideoWidth
	variable int VideoHeight
	variable int X
	variable int Y

	method Initialize()
	{
		LavishScript:RegisterEvent[OnFrame]
		LavishScript:RegisterEvent[On Deactivate]
		LavishScript:RegisterEvent[On Activate]
		;ui -reload falsecursor.xml
		Mouse:SetBackgroundCursor[0]
	}

	method Enable()
	{
		if ${Enabled}
			return
		Enabled:Set[TRUE]

		Event[On Deactivate]:AttachAtom[This:OnDeactivate]
		Event[On Activate]:AttachAtom[This:OnActivate]
		Event[OnCursorStateChanged]:AttachAtom[This:OnCursorStateChanged]
	}

	method Disable()
	{
		if !${Enabled}
			return
		Enabled:Set[FALSE]
		UIElement[falsecursor]:Hide
		Mouse:SetBackgroundCursor[0]
		Event[On Deactivate]:DetachAtom[This:OnDeactivate]
		Event[On Activate]:DetachAtom[This:OnActivate]
		Event[OnCursorStateChanged]:DetachAtom[This:OnCursorStateChanged]
	}


	/* Handler for the "On Deactivate" event, which fires when the window is no longer the active one */
	method OnDeactivate()
	{

	}
	
	/* Handler for the "On Activate" event, which fires when the window is once again the active one */
	method OnActivate()
	{
		This:Hide
	}

	method UpdateState()
	{
		if ${IsVideoSource}
		{
			UIElement[falsecursor]:Hide		
			Mouse:SetBackgroundCursor[0]
			
			if ${IsSet} && ${Enabled} && !${Display.Window.IsForeground}
			{
				This:RegisterCursorSource
			}
			else
			{
				This:UnregisterCusorSource
			}

		}
		elseif ${IsSet} && ${Enabled} && !${Display.Window.IsForeground} && ${Mouse.Cursor} 
		{
			Mouse:SetBackgroundCursor[1]
			if !${Mouse.BackgroundCursor}
			{
				UIElement[falsecursor]:Show
			}
			else
				UIElement[falsecursor]:Hide
		}
		else
		{
			UIElement[falsecursor]:Hide		
			Mouse:SetBackgroundCursor[0]
		}
	}
	
	method OnCursorStateChanged(bool State)
	{
		This:UpdateState
	}

	method SetVideoSource(int width, int height)
	{
		IsVideoSource:Set[1]
		ISBoxerUI:SetCursorSourceSize[${width},${height}]
	}

	method RegisterCursorSource()
	{
		IsVideoSource:Set[1]
		ISBoxerUI:RegisterCursorSource[${X},${Y}]
	}

	method UnregisterCursorSource()
	{		
		ISBoxerUI:UnregisterCursorSource
		IsVideoSource:Set[0]
	}

	method Set(int x, int y)
	{
		IsSet:Set[1]
		This:UpdateState
		if ${x}<0
			x:Set[0]
		elseif ${x}>=${Display.Width}
			x:Set[${Display.Width}-1]

		if ${y}<0
			y:Set[0]
		elseif ${y}>=${Display.Height}
			x:Set[${Display.Height}-1]

		; ${Display.Width} ${Display.Height}
		UIElement[falsecursor]:SetX[${x}]:SetY[${y}]
		X:Set[${x}]
		Y:Set[${y}]

		/* TODO: Scale the cursor*/
		if ${IsVideoSource}
		{
			This:RegisterCursorSource
		}
	}
	
	method Slide(int x, int y)
	{
		This:Set[${Math.Calc[${X}+${x}]},${Math.Calc[${Y}+${y}]}]
	}

	method Hide()
	{
		IsSet:Set[0]
		UIElement[falsecursor]:Hide
		Mouse:SetBackgroundCursor[0]
		if ${IsVideoSource}
		{
			This:UnregisterCursorSource
		}
	}
}

variable(global) falsecursor FalseCursor
 
/* Our instance of the keyrepeater class. Our object is called KeyRepeater */
variable(global) keyrepeater KeyRepeater
/* Our instance of the mouserepeater class. Our object is called MouseRepeater */
variable(global) mouserepeater MouseRepeater
 
variable(global) gdirepeater GDIRepeater

/* This creates a command that will until the repeater script is terminated, called repeater. It can turn on, toggle, or turn off the key or mouse repeaters.
   Examples:
	repeater on
	repeater off
	repeater toggle
	repeater keyon
	repeater keyoff
	repeater keytoggle
	repeater mouseon
	repeater mouseoff
	repeater mousetoggle
 */
atom(global) repeater(... Params)
{
	variable int Count=1
	for (${Count}<=${Params.Size} ; Count:Inc)
	{
		/* Check the variable with a switch.. */
		switch ${Params[${Count}]}
		{
		case -ftlmods
		case ftlmods
			Count:Inc
			if ${Count}<=${Params.Size}
			{
				KeyRepeater.FTLMods:Set["${Params[${Count}].Escape}"]
			}			
			break
		case -noftlmods
		case noftlmods
			KeyRepeater.FTLMods:Set[""]
			KeyRepeater:ReleaseFTLModifiers
			break
		case -import
		case import
			Count:Inc
			if ${Count}<=${Params.Size}
			{
				KeyRepeater:ImportLists["${Params[${Count}].Escape}"]
				echo Repeater key lists imported from ${Params[${Count}]}
			}
			break
		case -export
		case export
			Count:Inc
			if ${Count}<=${Params.Size}
			{
				KeyRepeater:ExportLists["${Params[${Count}].Escape}"]
				echo Repeater key lists exported to ${Params[${Count}]}
			}
			break
		case -whitelist
		case whitelist
			Count:Inc
			if ${Count}<=${Params.Size}
			{
				KeyRepeater:SetList[TRUE,"${Params[${Count}].Escape}"]
				echo Repeater whitelist: ${Params[${Count}]}
			}
			break
		case -blacklist
		case blacklist
			Count:Inc
			if ${Count}<=${Params.Size}
			{
				KeyRepeater:SetList[FALSE,"${Params[${Count}].Escape}"]
				echo Repeater blacklist: ${Params[${Count}]}
			}
			break
		case -removelist
		case removelist
			Count:Inc
			if ${Count}<=${Params.Size}
			{
				echo Removing Repeater key list ${Params[${Count}]}
				KeyRepeater:RemoveList["${Params[${Count}].Escape}"]
			}
			break
		case -nolist
		case nolist
			KeyRepeater:UnsetList
			echo Repeater white/black list cleared
			break
		case -falsecursor
			FalseCursor:Enable
			break
		case -nofalsecursor
			FalseCursor:Disable
			break
		case -allkey
			Count:Inc
			if ${Count}<=${Params.Size}
			{
				bind repeater "${Params[${Count}].Escape}" repeater toggle
			}
			break
		case -noallkey
			squelch bind -delete repeater
			break
		case -globalallkey
			Count:Inc
			if ${Count}<=${Params.Size}
			{
				bind repeater_global "${Params[${Count}].Escape}" relay all repeater toggle
			}
			break
		case -noglobalallkey
			squelch bind -delete repeater_global
			break
		case -mousekey
			Count:Inc
			if ${Count}<=${Params.Size}
			{
				bind repeatmouse "${Params[${Count}].Escape}" repeater mousetoggle
			}
			break
		case -nomousekey
			squelch bind -delete repeatmouse
			break
		case -globalmousekey
			Count:Inc
			if ${Count}<=${Params.Size}
			{
				bind repeatmouse_global "${Params[${Count}].Escape}" relay all repeater mousetoggle
			}
			break
		case -noglobalmousekey
			squelch bind -delete repeatmouse_global
			break
		case -keyboardkey
			Count:Inc
			if ${Count}<=${Params.Size}
			{
				bind repeatkeyboard "${Params[${Count}].Escape}" repeater keytoggle
			}
			break
		case -nokeyboardkey
			squelch bind -delete repeatkeyboard
			break
		case -globalkeyboardkey
			Count:Inc
			if ${Count}<=${Params.Size}
			{
				bind repeatkeyboard_global "${Params[${Count}].Escape}" relay all repeater keytoggle
			}
			break
		case -noglobalkeyboardkey
			squelch bind -delete repeatkeyboard_global
			break
		case -keylight
			Count:Inc
			if ${Count}<=${Params.Size}
			{
				KeyRepeater:SetLight["${Params[${Count}].Escape}"]
			}
			break
		case -mouselight
			Count:Inc
			if ${Count}<=${Params.Size}
			{
				MouseRepeater:SetLight["${Params[${Count}].Escape}"]
			}
			break
		case on
			KeyRepeater:Enable
			MouseRepeater:Enable
			break
		case toggle
			KeyRepeater:Toggle
			MouseRepeater:Toggle
			break
		case off
			KeyRepeater:Disable
			MouseRepeater:Disable
			break
		case mouseon
			MouseRepeater:Enable
			break
		case mouseoff
			MouseRepeater:Disable
			break
		case mousetoggle
			MouseRepeater:Toggle
			break
		case mousevideo
		case -mousevideo			
			MouseRepeater:SetVideoFeedEnabled[1]
			break
		case nomousevideo
		case -nomousevideo
			MouseRepeater:SetVideoFeedEnabled[0]
			break		
		case mousevideosourcesize
		case -mousevideosourcesize
			Count:Inc
			if ${Count}<=${Params.Size}
			{
				MouseRepeater:SetCursorSourceSize[${Params[${Count}]}]
			}
			break
		case mousevideooutputsize
		case -mousevideooutputsize
			Count:Inc
			if ${Count}<=${Params.Size}
			{
				ISBoxerUI:SetCursorOutputSize[${Params[${Count}]}]
			}
			break
		case mousevideooutputborder
		case -mousevideooutputborder
			Count:Inc
			if ${Count}<=${Params.Size}
			{
				ISBoxerUI:SetCursorOutputBorder["${Params[${Count}].Escape}"]
			}
			break
		case mousevideooutputopacity
		case -mousevideooutputopacity
			Count:Inc
			if ${Count}<=${Params.Size}
			{
				ISBoxerUI:SetCursorOutputOpacity["${Params[${Count}].Escape}"]
			}
			break
		case mousetransform
		case -mousetransform
			Count:Inc
			if ${Count}<=${Params.Size}
			{
				switch ${Params[${Count}]}
				{
				case none
					MouseRepeater.TransformMode:Set[TRANSFORM_NONE]
					break
				case center
					MouseRepeater.TransformMode:Set[TRANSFORM_CENTER]
					break
				case scale
					MouseRepeater.TransformMode:Set[TRANSFORM_SCALE]
					break
				case centerscale
					MouseRepeater.TransformMode:Set[TRANSFORM_CENTERSCALE]
					break
				}
			}
			break
		case muteforegroundon
			MouseRepeater.MuteForeground:Set[1]
			break
		case muteforegroundoff
			MouseRepeater.MuteForeground:Set[0]
			break
		case -muteon
		case muteon
			KeyRepeater.Mute:Set[1]
			MouseRepeater.Mute:Set[1]
			break
		case -muteoff
		case muteoff
			KeyRepeater.Mute:Set[0]
			MouseRepeater.Mute:Set[0]
			break
		case -mutetoggle
		case mutetoggle
			KeyRepeater.Mute:Toggle
			MouseRepeater.Mute:Toggle
			break
		case keyon
			KeyRepeater:Enable
			break
		case keyoff
			KeyRepeater:Disable
			break
		case keytoggle
			KeyRepeater:Toggle
			break
		case synccursor
		case -synccursor
			Count:Inc
			if ${Count}<=${Params.Size}
			{
				MouseRepeater:SyncCursor["${Params[${Count}].Escape}"]
			}
			break
		case vfxaffectsbroadcasting
		case -vfxaffectsbroadcasting
			MouseRepeater.VideoFXAlwaysAffectsRepeater:Set[1]
			break
		case novfxaffectsbroadcasting
		case -novfxaffectsbroadcasting
			MouseRepeater.VideoFXAlwaysAffectsRepeater:Set[0]
			break
		}
	}
}
 
/* The entry point for the script. Any parameters will be turned into a string array called Params */
function main(... Params)
{
	variable bool defaultlist=TRUE
;	FalseCursor:Enable

	variable int Count=1
	for (${Count}<=${Params.Size} ; Count:Inc)
	{
		/* Check the variable with a switch.. */
		switch ${Params[${Count}]}
		{
		case -nodefaultlist
			defaultlist:Set[FALSE]
			break
		case -ftlmods
		case ftlmods
			Count:Inc
			if ${Count}<=${Params.Size}
			{
				KeyRepeater.FTLMods:Set["${Params[${Count}].Escape}"]
			}			
			break
		case -noftlmods
		case noftlmods
			KeyRepeater.FTLMods:Set[""]
			KeyRepeater:ReleaseFTLModifiers
			break
		case -import
		case import
			Count:Inc
			if ${Count}<=${Params.Size}
			{
				KeyRepeater:ImportLists["${Params[${Count}].Escape}"]
				echo Repeater key lists imported from ${Params[${Count}]}
			}
			break
		case -export
		case export
			Count:Inc
			if ${Count}<=${Params.Size}
			{
				KeyRepeater:ExportLists["${Params[${Count}].Escape}"]
				echo Repeater key lists exported to ${Params[${Count}]}
			}
			break
		case -whitelist
		case whitelist
			Count:Inc
			if ${Count}<=${Params.Size}
			{
				KeyRepeater:SetList[TRUE,"${Params[${Count}].Escape}"]
				echo Repeater whitelist: ${Params[${Count}]}
			}
			break
		case -blacklist
		case blacklist
			Count:Inc
			if ${Count}<=${Params.Size}
			{
				KeyRepeater:SetList[FALSE,"${Params[${Count}].Escape}"]
				echo Repeater blacklist: ${Params[${Count}]}
			}
			break
		case -falsecursor
			FalseCursor:Enable
			break
		case -nofalsecursor
			FalseCursor:Disable
			break
		case -allkey
			Count:Inc
			if ${Count}<=${Params.Size}
			{
				bind repeater "${Params[${Count}].Escape}" repeater toggle
			}
			break
		case -noallkey
			squelch bind -delete repeater
			break
		case -globalallkey
			Count:Inc
			if ${Count}<=${Params.Size}
			{
				bind repeater_global "${Params[${Count}].Escape}" relay all repeater toggle
			}
			break
		case -noglobalallkey
			squelch bind -delete repeater_global
			break
		case -mousekey
			Count:Inc
			if ${Count}<=${Params.Size}
			{
				bind repeatmouse "${Params[${Count}].Escape}" repeater mousetoggle
			}
			break
		case -nomousekey
			squelch bind -delete repeatmouse
			break
		case -globalmousekey
			Count:Inc
			if ${Count}<=${Params.Size}
			{
				bind repeatmouse_global "${Params[${Count}].Escape}" relay all repeater mousetoggle
			}
			break
		case -noglobalmousekey
			squelch bind -delete repeatmouse_global
			break
		case -keyboardkey
			Count:Inc
			if ${Count}<=${Params.Size}
			{
				bind repeatkeyboard "${Params[${Count}].Escape}" repeater keytoggle
			}
			break
		case -nokeyboardkey
			squelch bind -delete repeatkeyboard
			break
		case -globalkeyboardkey
			Count:Inc
			if ${Count}<=${Params.Size}
			{
				bind repeatkeyboard_global "${Params[${Count}].Escape}" relay all repeater keytoggle
			}
			break
		case -noglobalkeyboardkey
			squelch bind -delete repeatkeyboard_global
			break
		case -keylight
			Count:Inc
			if ${Count}<=${Params.Size}
			{
				KeyRepeater:SetLight["${Params[${Count}].Escape}"]
			}
			break
		case -mouselight
			Count:Inc
			if ${Count}<=${Params.Size}
			{
				MouseRepeater:SetLight["${Params[${Count}].Escape}"]
			}
			break
		case mousevideo
		case -mousevideo			
			MouseRepeater:SetVideoFeedEnabled[1]
			break
		case nomousevideo
		case -nomousevideo
			MouseRepeater:SetVideoFeedEnabled[0]
			break		
		case mousevideosourcesize
		case -mousevideosourcesize
			Count:Inc
			if ${Count}<=${Params.Size}
			{
				MouseRepeater:SetCursorSourceSize[${Params[${Count}]}]
			}
			break
		case mousevideooutputsize
		case -mousevideooutputsize
			Count:Inc
			if ${Count}<=${Params.Size}
			{
				ISBoxerUI:SetCursorOutputSize[${Params[${Count}]}]
			}
			break
		case mousevideooutputborder
		case -mousevideooutputborder
			Count:Inc
			if ${Count}<=${Params.Size}
			{
				ISBoxerUI:SetCursorOutputBorder["${Params[${Count}].Escape}"]
			}
			break
		case mousevideooutputopacity
		case -mousevideooutputopacity
			Count:Inc
			if ${Count}<=${Params.Size}
			{
				ISBoxerUI:SetCursorOutputOpacity["${Params[${Count}].Escape}"]
			}
			break
		case -mousetransform
			Count:Inc
			if ${Count}<=${Params.Size}
			{
				switch ${Params[${Count}]}
				{
				case none
					MouseRepeater.TransformMode:Set[TRANSFORM_NONE]
					break
				case center
					MouseRepeater.TransformMode:Set[TRANSFORM_CENTER]
					break
				case scale
					MouseRepeater.TransformMode:Set[TRANSFORM_SCALE]
					break
				case centerscale
					MouseRepeater.TransformMode:Set[TRANSFORM_CENTERSCALE]
					break
				}
			}
			break
		default
			bind repeater "${Params[${Count}].Escape}" repeater toggle
			break
		}
	}
 
	if ${defaultlist}
		repeater import "repeater lists.xml"
 
	/* Now just keep our script running. */
	while 1
		waitframe
}
 
atom atexit()
{
	squelch bind -delete repeater
	squelch bind -delete repeater_global
	squelch bind -delete repeatkeyboard
	squelch bind -delete repeatkeyboard_global
	squelch bind -delete repeatmouse
	squelch bind -delete repeatmouse_global
	squelch bind -delete isboxer_clicktofocus
}