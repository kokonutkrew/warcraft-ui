#if ${InnerSpace.Build}<5343
#define PIPSQUEAKSLOT is1
#define SENDLOSTFOCUS all local
#define SENDGOTFOCUS all other local
#else
#define PIPSQUEAKSLOT ${Snapper.PiPSqueakSlot.Escape}
#define FOCUSCHANGETARGETINCLUSIVE all local
#define FOCUSCHANGETARGET all other local
#define LOCALSWAPGROUP local ${Snapper.SwapGroup.Escape}
#define OTHERLOCALSWAPGROUP other local ${Snapper.SwapGroup.Escape}
#endif


objectdef snapdata
{
	variable bool Ready
	variable bool AutoReset
	
	variable int X
	variable int Y
	variable int Width
	variable int Height
	
	variable bool AlwaysOnTop
	variable bool SometimesOnTop=TRUE
	variable string Frame
	

	member ToString()
	{
		if !${Ready}
			return ""
		return "${X},${Y},${Width},${Height},${AlwaysOnTop},${Frame},${SometimesOnTop}"
	}

	method Set(int x, int y, int width, int height, bool alwaysontop, string newframe, bool sometimesontop)
	{
		if ${width}
		{		
			X:Set[${x}]
			Y:Set[${y}]
			Width:Set[${width}]
			Height:Set[${height}]
			AlwaysOnTop:Set[${alwaysontop}]
			SometimesOnTop:Set[${sometimesontop}]
			if ${newframe.NotEqual[ApplicationDefined]}
				Frame:Set["${newframe.Escape}"]
#define GO 1
#define STOP 0
			Ready:Set[GO]
		}
		else
			echo "snapdata ${X},${Y},${Width},${Height},${AlwaysOnTop},${Frame},${SometimesOnTop}"
		
	}
	
	method Reset()
	{
		Ready:Set[STOP]
	}
		
	method SetPos(int x, int y)
	{
		X:Set[${x}]
		Y:Set[${y}]
	}
	
	method SetSize(string size)
	{
		Width:Set[${size.Token[1,x]}]
		Height:Set[${size.Token[2,x]}]
	}

	method Store()
	{
		if ${Display.ViewableWidth}
		{
			Width:Set[${Display.ViewableWidth}]
			Height:Set[${Display.ViewableHeight}]
			X:Set[${Display.Window.X}]
			Y:Set[${Display.Window.Y}]
		}
		else
		{
			if !${Width}
			{
				Width:Set[${Display.Width}]
				Height:Set[${Display.Height}]
			}
		}
		Frame:Set["${Display.Window.Frame}"]
		AlwaysOnTop:Set["${Display.Window.AlwaysOnTop}"]
		Ready:Set[GO]
	}
	
	member GetVisibilityOptions()
	{
		variable string gameWindowFocused
		gameWindowFocused:Set["${Snapper.GameWindowFocused.Escape}"]
		variable string gameWindowFocusedHWND
		gameWindowFocusedHWND:Set["${Snapper.GameWindowFocusedHWND.Escape}"]
		variable string lastGameWindowFocused
		lastGameWindowFocused:Set["${Snapper.LastGameWindowFocused.Escape}"]

		if ${VFXLayout.Regions.Used}
		{
			; this is DxNothing VFX 
;			echo GVO: this is DxNothing VFX
/*
			if ${Display.Window.IsForeground}
			{
				Display:SetTaskbarAutohide[1]
			}
			else
			{
				Display:SetTaskbarAutohide[0]
			}
/**/

			if !${gameWindowFocusedHWND.Length} || ${gameWindowFocusedHWND.Equals["${Display.Window}"]}
			{
;				UIElement[output@console]:Echo["GVO: dxNothing VFX = window, conflict ..."]
				return ""
			}

			return " -visibility -noactivate behindwindow ${gameWindowFocusedHWND.Escape}"

			if !${gameWindowFocused.Length}
			{
				if !${Display.Window.AlwaysOnTop}
					return ""
;				return " -stealth -visibility -noactivate foreground"
;				echo GVO: dxNothing VFX = noactivate bottom
				return " -visibility -noactivate bottom"
			}
			if ${Display.Window.IsForeground}
			{
;				echo GVO: dxNothing VFX = noactivate behindwindow
				return " -visibility -noactivate behindwindow ${gameWindowFocusedHWND.Escape}"
			}
			if ${Display.Window.AlwaysOnTop}
				return ""
;			echo GVO: dxNothing VFX = noactivate alwaysontop
			return " -visibility -noactivate alwaysontop"
		}
		if ${Snapper.UseVideoFXLayout}
		{
			; this is a non-DxNothing VFX window, in a VFX layout
			if ${Display.Window.IsForeground}
			{
;				UIElement[output@console]:Echo["GVO: normal window, foreground"]
				return " -visibility -noactivate alwaysontop"
			}
			else
			{
				if ${Snapper.SessionIsVFXLayout["${gameWindowFocused.Escape}"]} || ${Snapper.SessionIsVFXLayout["${gameWindowFocusedHWND.Escape}"]}
				{
;					UIElement[output@console]:Echo["GVO: normal window, dxNothing foreground. lastGameWindowFocused=${lastGameWindowFocused}"]
					if ${lastGameWindowFocused.Equals["${Session.Escape}"]}
					{
						return " -visibility -noactivate alwaysontop"
					}
				}
				else
				{
					if ${gameWindowFocusedHWND.Equals["${Display.Window}"]}
					{
;						UIElement[output@console]:Echo["GVO: normal window, conflict ... IsForeground=${Display.Window.IsForeground}"]
						if ${Display.Window.AlwaysOnTop}
							return " -visibility -noactivate behind"
						return ""
					}
;					UIElement[output@console]:Echo["GVO: normal window, background"]
					return " -visibility -noactivate behindwindow ${gameWindowFocusedHWND.Escape}"
				}
			}
			return ""
		}

		if ${AlwaysOnTop}
		{
			if ${SometimesOnTop} && !${gameWindowFocused.Length} && !${Display.Window.IsForeground} 
			{
;				UIElement[output@console]:Echo["gvo: ${SometimesOnTop} && !${gameWindowFocused.Length} && !${Display.Window.IsForeground}"]
				if ${Display.Window.AlwaysOnTop}
				{
					if ${InnerSpace.Build}<=5468
						return " -visibility -noactivate behind"						
					return " -visibility -noactivate behindwindow ${gameWindowFocusedHWND.Escape}"
				}
			}
			else
			{
;				UIElement[output@console]:Echo["gvo: ${SometimesOnTop} && !${gameWindowFocused.Length} && !${Display.Window.IsForeground}"]
;				if !${Display.Window.AlwaysOnTop}
					return " -visibility -noactivate alwaysontop"
			}
		}
		else
		{
			if ${Display.Window.AlwaysOnTop}
				return " -visibility -noactivate foreground"			
		}
	}
	
	method RefreshAlwaysOnTop()
	{
		variable string Options
		Options:Set["${This.GetVisibilityOptions.Escape}"]
		if ${Options.Length}
		{
			if ${Options.Find[-noactivate behind]}
				windowcharacteristics -stealth -visibility -noactivate foreground
;			else
;				windowcharacteristics -stealth ${Options}
			windowcharacteristics -stealth ${Options}

;			UIElement[output@console]:Echo["windowcharacteristics -stealth ${Options}"]
		}
	}
	
	member GetFrameOptions(string Default)
	{
		if ${Frame.Length}
			return " -frame ${Frame.Escape}"
		if ${Default.Length}
			return " -frame ${Default.Escape}"
	}

	/* Restore the stored display position and size */
	method Restore()
	{
		if !${Ready}
			return
		
		if ${Snapper.ResetRegion.Ready}
		{
			if ${Snapper.ResetRegion.Width} && ${Snapper.ResetRegion.Height} && (${Display.Width}!=${Snapper.ResetRegion.Width} || ${Display.Height}!=${Snapper.ResetRegion.Height})
			{
				Snapper.ResetRegion:RestoreFull
				return
			}
		}	
		else
		{
			if ${Width} && ${Height} && (${Display.Width}!=${Width} || ${Display.Height}!=${Height})
			{
				This:RestoreFull
				return
			}
		}
		windowcharacteristics -stealth -pos -viewable ${X},${Y} -size -viewable ${Width}x${Height}${This.GetFrameOptions}${This.GetVisibilityOptions}
	}

	/* Restore the stored display position and size */
	method RestoreFull()
	{
		if !${Ready}
			return

		windowcharacteristics -pos -viewable ${X},${Y} -size -viewable ${Width}x${Height}${This.GetFrameOptions}${This.GetVisibilityOptions}
	}

	method SnapTo()
	{
		if !${Ready}
			return

		windowcharacteristics -stealth -size -viewable ${Width}x${Height} -pos -viewable ${X},${Y}${This.GetFrameOptions[none]}${This.GetVisibilityOptions}
	}

	/* Snaps the window back to full size */
	method SnapBack()
	{
		if !${Ready}
			return

		This:Restore
		/* 2012-04-30 - this didnt used to -noactivate. */
		windowcharacteristics -stealth -visibility -noactivate foreground
		Snapper:UpdateMouseScale
		if ${AutoReset}
			This:Reset
	}

	method PiPSqueak()
	{
		if !${Ready}
			return

		relay "PIPSQUEAKSLOT" -noredirect "backregion ${X} ${Y} ${Width} ${Height} ${AlwaysOnTop} \"${Frame.Escape}\" ${SometimesOnTop};snapset -forcedeactivate"
	}
}

/* Our windowsnapper class */
objectdef windowsnapper
{
	/* Late initialization method, as opposed to using the object constructor. We want to  
	   create the object before we initialize it.
        */
	method Go()
	{
		/* Registering events before we attach ensures that the event exists, to attach to */
		LavishScript:RegisterEvent[On Deactivate]
		LavishScript:RegisterEvent[On Activate]
		LavishScript:RegisterEvent[OnWindowStateChanging]
		LavishScript:RegisterEvent[OnInternalActivate]

		LavishScript:RegisterEvent[OnMouseEnter]
		LavishScript:RegisterEvent[OnMouseExit]
		LavishScript:RegisterEvent[OnFrame]

		/* Attach our methods to the events we registered for */
		Event[On Deactivate]:AttachAtom[This:OnDeactivate]
		Event[On Activate]:AttachAtom[This:OnActivate]
		Event[OnInternalActivate]:AttachAtom[This:OnInternalActivate]


		Event[OnMouseEnter]:AttachAtom[This:OnMouseEnter]
		Event[OnMouseExit]:AttachAtom[This:OnMouseExit]

		Event[OnWindowStateChanging]:AttachAtom[This:OnWindowStateChanging]

	}

	/* This tracks whether we're the active window or not. Without it, window size and position could
           get messy. */
	variable bool Active=TRUE
	
	variable snapdata ResetRegion
	variable snapdata ForeRegion
	variable snapdata BackRegion
	

	variable bool Ignore=FALSE
	variable bool IgnoreInternal=TRUE
	variable bool AutoToggleIgnore=TRUE

	variable bool RollOverEnabled=FALSE
	variable bool RolledOver=FALSE
	variable float RollOverScale=1.5
	variable int RollOverFrame=0
	variable int RollOverMaxFrame=1
	variable int RollOverFrameMod=0
	variable int RollOverMaxFrameModUp=1
	variable int RollOverMaxFrameModDown=1

	variable string WheelSwitcherKey=Ctrl
	variable bool WheelSwitcher=FALSE

	variable bool PiPSqueak=FALSE
	variable bool FastSwitch=TRUE
	variable bool UseVideoFXLayout=FALSE

	/* Dont auto-deactivate.. */
	#define DEACTIVATE_NEVER	0
	/* Auto-deactivate for all other windows */
	#define DEACTIVATE_ALWAYS	1
	/* Auto-deactivate for non-game windows */
	#define DEACTIVATE_NONGAME	2
	/* Auto-deactivate for game windows */
	#define DEACTIVATE_GAME		3
	variable int AutoDeactivateMode=DEACTIVATE_ALWAYS
	
	variable string LastGameWindowFocused
	variable string LastGameWindowFocusedHWND
	variable string GameWindowFocused
	variable string GameWindowFocusedHWND
	variable string SwapGroupGameWindowFocused
	variable string SwapGroupGameWindowFocusedHWND

	variable string PiPSqueakSlot=is1
	variable string SwapGroup=isboxer
	variable string DeactivateSwapGroup=isboxer

	variable collection:bool VFXLayoutSlots

	member:bool SessionIsVFXLayout(string sessionName)
	{
		return ${VFXLayoutSlots.Element["${sessionName.Escape}"]}
	}

	/* Grabs the X-position from SnapPos */
	member:int SnapX()
	{
		return ${BackRegion.X}
	}

	/* Grabs the Y-position from SnapPos */
	member:int SnapY()
	{
		return ${BackRegion.Y}
	}

	/* Grabs the width from SnapSize */
	member:int SnapWidth()
	{
		return ${BackRegion.Width}
	}

	/* Grabs the height from SnapSize */
	member:int SnapHeight()
	{
		return ${BackRegion.Height}
	}

	member:string SnapSize()
	{
		return ${BackRegion.Width}x${BackRegion.Height}
	}	

	member:string SnapPos()
	{
		return ${BackRegion.X},${BackRegion.Y}
	}	

	/*	
	method SetFullSize(int x, int y, int w, int h)
	{
		UseCustomSize:Set[TRUE]
		Width:Set[${w}]
		Height:Set[${h}]
		X:Set[${x}]
		Y:Set[${y}]
		if ${Active}
		{
			windowcharacteristics -stealth -pos -viewable ${X},${Y} -size -viewable ${Width}x${Height}
		}
	}
	/**/

	method OnWindowStateChanging(string change)
	{
;		echo OnWindowStateChanging ${change}
		switch ${change}
		{
		case SC_MINIMIZE
		case SW_FORCEMINIMIZE
		case SW_SHOWMINIMIZED
		case SW_MINIMIZE
		case SW_SHOWMINNOACTIVE
			echo Minimizing
				relay "FOCUSCHANGETARGET" -noredirect snapset -lostfocus "${Snapper.SwapGroup.Escape}" "${Session.Escape}" -refreshalwaysontop
				snapset -lostfocus "${Snapper.SwapGroup.Escape}" "${Session.Escape}"
		if ${BackRegion.Ready}
			Active:Set[FALSE]

;			snapset -forcedeactivate
;			Context:Set[0]
			break
		case SC_MAXIMIZE
		case SW_MAXIMIZE
			if ${Display.Window.IsForeground}
			{
				echo Maximizing
				snapset -activate
				relay "FOCUSCHANGETARGET" -noredirect snapset -gotfocus "${Snapper.SwapGroup.Escape}" "${Session.Escape}" "${Display.Window.HWND.Hex}" -refreshalwaysontop
				This:GotFocus["${Snapper.SwapGroup.Escape}","${Session.Escape}","${Display.Window.HWND.Hex}"]
			}
			Context:Set[0]
			break
		case SC_RESTORE
		case SW_RESTORE
		case SW_NORMAL
			if ${Display.Window.IsForeground}
			{
				echo Restoring
				relay "FOCUSCHANGETARGET" -noredirect snapset -gotfocus "${Snapper.SwapGroup.Escape}" "${Session.Escape}" "${Display.Window.HWND.Hex}" -refreshalwaysontop
				This:GotFocus["${Snapper.SwapGroup.Escape}","${Session.Escape}","${Display.Window.HWND.Hex}"]
			}
			break
		case SW_HIDE
				relay "FOCUSCHANGETARGET" -noredirect snapset -lostfocus "${Snapper.SwapGroup.Escape}" "${Session.Escape}" -refreshalwaysontop
				snapset -lostfocus "${Snapper.SwapGroup.Escape}" "${Session.Escape}"
		if ${BackRegion.Ready}
			Active:Set[FALSE]
			break
		case SW_SHOWNOACTIVATE
		case SW_SHOW
		case SW_SHOWNA
			break
		case SW_SHOWDEFAULT
			break
		}
	}
	
	method SetUseVideoFXLayout(bool newValue)
	{
		UseVideoFXLayout:Set[${newValue}]
	}

	method EnablePiPSqueak()
	{
		PiPSqueak:Set[1]
		BackRegion.AutoReset:Set[1]
	}
	
	method DisablePiPSqueak()
	{
		PiPSqueak:Set[0]
		BackRegion.AutoReset:Set[0]
	}

	method EnableRollOver(float scale)
	{
		if ${scale}>=1
			RollOverScale:Set[${scale}]
;	variable bool RollOverEnabled=FALSE
;	variable bool RolledOver=FALSE
;	variable float RollOverScale=1.5
		if ${RollOverEnabled}
			return

		RollOverEnabled:Set[TRUE]
;		Event[OnMouseEnter]:AttachAtom[This:OnMouseEnter]
;		Event[OnMouseExit]:AttachAtom[This:OnMouseExit]
	}

	method DisableRollOver()
	{
		if !${RollOverEnabled}
			return
		RollOverEnabled:Set[FALSE]
;		Event[OnMouseEnter]:DetachAtom[This:OnMouseEnter]
;		Event[OnMouseExit]:DetachAtom[This:OnMouseExit]
	}

	method UpdateMouseScale(bool override)
	{
		if ${InnerSpace.Build}>=4937
			return
			
;		echo UpdateMouseScale[${override}]
		if ${Display.Window.IsForeground} || ${override}
		{
			if !${Display.ViewableWidth} || ${Display.Width}==${Display.Window.ViewableWidth}
				Mouse.ScaleX:Set[0]
			else
				Mouse.ScaleX:Set[${Display.Width}/${Display.Window.ViewableWidth}]
			if !${Display.ViewableWidth} || ${Display.Height}==${Display.Window.ViewableHeight}
				Mouse.ScaleY:Set[0]
			else
				Mouse.ScaleY:Set[${Display.Height}/${Display.Window.ViewableHeight}]
;			echo Scale = ${Mouse.ScaleX},${Mouse.ScaleY}

		}
		else
		{
			Mouse.ScaleX:Set[0]
			Mouse.ScaleY:Set[0]
;			echo Scale = 0,0
		}
		if ${InnerSpace.Build}>=4892 && ${Display.Window.Frame.Equal[none]} && ((${Display.Window.Style}&${Math.Dec[80000000]})==0) && (${LavishScript.Executable.Find[wow.exe]} || ${LavishScript.Executable.Find[wow-64.exe]} || ${LavishScript.Executable.Find[wowb.exe]} || ${LavishScript.Executable.Find[wowb-64.exe]} || ${LavishScript.Executable.Find[wowt.exe]} || ${LavishScript.Executable.Find[wowt-64.exe]})
			Mouse.TranslateY:Set[-${Display.GetSize[CYCAPTION]}]
		else
			Mouse.TranslateY:Set[0]
	}

	method ApplyZoom(float scale,bool forceforeground)
	{
		if ${Active}
			return
			
		/* See if we need to re-position before we move to keep it on-screen... */		
		variable int newWidth
		variable int newHeight
		variable int useX
		variable int useY

;		if !${Active}
;		{
			newWidth:Set[${This.SnapWidth}*${scale}]
			newHeight:Set[${This.SnapHeight}*${scale}]
			useX:Set[${This.SnapX}-((${newWidth}-${This.SnapWidth})/2)]
			useY:Set[${This.SnapY}-((${newHeight}-${This.SnapHeight})/2)]
;		}
;		else
;		{ /* TODO: Need correct coordinates to start from if active... */
;			newWidth:Set[${This.SnapWidth}*${scale}]
;			newHeight:Set[${This.SnapHeight}*${scale}]
;			useX:Set[${This.SnapX}-((${newWidth}-${This.SnapWidth})/2)]
;			useY:Set[${This.SnapY}-((${newHeight}-${This.SnapHeight})/2)]
;		}

		
;		echo newSize = ${newWidth}x${newHeight}
;		echo new pos = ${useX},${useY}


		variable int rightDisplayEdge
		variable int bottomDisplayEdge
		rightDisplayEdge:Set[${Display.Monitor[${CurrentMonitor}].Right}]
		bottomDisplayEdge:Set[${Display.Monitor[${CurrentMonitor}].Bottom}]

;		echo DisplayEdge = ${rightDisplayEdge},${bottomDisplayEdge}


		if ${useX}<=${Display.Monitor[${CurrentMonitor}].Left}
			useX:Set[${Display.Monitor[${CurrentMonitor}].Left}]
		elseif ${newWidth}+${useX}>${rightDisplayEdge}
			useX:Set[${rightDisplayEdge}-${newWidth}]	

		if ${useY}<=${Display.Monitor[${CurrentMonitor}].Top}
			useY:Set[${Display.Monitor[${CurrentMonitor}].Top}]
		elseif ${newHeight}+${useY}>${bottomDisplayEdge}
			useY:Set[${bottomDisplayEdge}-${newHeight}]	

;		echo new pos modified = ${useX},${useY}

		if ${RolledOver} || ${forceforeground}
		{
			if ${BackRegion.AlwaysOnTop}
				windowcharacteristics -stealth -visibility -noactivate alwaysontop -pos -viewable ${useX},${useY} -size -viewable ${newWidth}x${newHeight}
			else
				windowcharacteristics -stealth -visibility -noactivate foreground -pos -viewable ${useX},${useY} -size -viewable ${newWidth}x${newHeight}
		}
		else
		{
;			if ${BackRegion.AlwaysOnTop}
;				windowcharacteristics -stealth -visibility -noactivate alwaysontop -pos -viewable ${useX},${useY} -size -viewable ${newWidth}x${newHeight}
;			else
				windowcharacteristics -stealth -pos -viewable ${useX},${useY} -size -viewable ${newWidth}x${newHeight}
		}
		
		if ${RolledOver}
		{	
			This:UpdateMouseScale[TRUE]
		}

	}

	variable bool AutoDeactivated=FALSE
	member:bool ShouldBeForeRegion()
	{
		if !${BackRegion.Ready}
		{
			AutoDeactivated:Set[0]
			return TRUE
		}

		if ${Active}
		{
			AutoDeactivated:Set[0]
			if ${Display.Window.IsForeground} 
			{
				return TRUE
			}
			switch ${AutoDeactivateMode}
			{
			/* Dont auto-deactivate.. */
			case DEACTIVATE_NEVER
;				UIElement[output@console]:Echo["ShouldBeForeRegion: TRUE. NEVER"]
				return TRUE
			/* Auto-deactivate for all other windows */
			case DEACTIVATE_ALWAYS
				AutoDeactivated:Set[1]
;				UIElement[output@console]:Echo["ShouldBeForeRegion: FALSE. ALWAYS"]
				return FALSE
			/* Auto-deactivate for non-game windows */
			case DEACTIVATE_NONGAME
				{
					if ${GameWindowFocused.Length}
					{
						return TRUE
					}
;					UIElement[output@console]:Echo["ShouldBeForeRegion: FALSE. NONGAME"]
					AutoDeactivated:Set[1]
					return FALSE
				}
			/* Auto-deactivate for game windows */
			case DEACTIVATE_GAME
				{
					if !${SwapGroupGameWindowFocused.Length}
					{
						return TRUE
					}
					if ${SwapGroupGameWindowFocused.Equal["${Session.Escape}"]}
					{
						return TRUE
					}
					
;					UIElement[output@console]:Echo["ShouldBeForeRegion: FALSE. GAME"]
					AutoDeactivated:Set[1]
					return FALSE
				}
			}		
		}	
		
		if ${AutoDeactivated}
		{
			switch ${AutoDeactivateMode}
			{
			case DEACTIVATE_NONGAME
				if ${GameWindowFocused.Length}
				{
;					UIElement[output@console]:Echo["ShouldBeForeRegion: TRUE. COMEBACK!"]
					return TRUE
				}
				break
			}
		}	

;		UIElement[output@console]:Echo["ShouldBeForeRegion: FALSE. !Active"]
		return FALSE
	}

	method SetAutoDeactivateMode(string newmode)
	{
		switch ${newmode}
		{
		case never
			AutoDeactivateMode:Set[DEACTIVATE_NEVER]
			break
		case always
			AutoDeactivateMode:Set[DEACTIVATE_ALWAYS]
			break
		case nongame
			AutoDeactivateMode:Set[DEACTIVATE_NONGAME]
			break
		case game
			AutoDeactivateMode:Set[DEACTIVATE_GAME]
			break
		}
	}
	
	method RefreshAlwaysOnTop()
	{
		if ${This.ShouldBeForeRegion}
		{
			if !${Active}
			{
				This:SnapBack
				Active:Set[TRUE]
			}
			else
			{
;			UIElement[output@console]:Echo["ForeRegion:RefreshAlwaysOnTop"]
				ForeRegion:RefreshAlwaysOnTop
			}
		}
		else
		{
			if ${Active}
			{
				This:Deactivate
			}
			else
			{
;				UIElement[output@console]:Echo["BackRegion:RefreshAlwaysOnTop"]
				BackRegion:RefreshAlwaysOnTop
			}
		}
	}

	method OnFrame()
	{
		if !${RollOverEnabled} || (!${RolledOver} && !${RollOverFrame}) || ${Active}
		{
			Event[OnFrame]:DetachAtom[This:OnFrame]
			return
		}
		if ${RolledOver}
		{
			if ${RollOverFrame}==${RollOverMaxFrame}
			{
				return
			}
			if ${RollOverFrame}
			{
				RollOverFrameMod:Inc
				if ${RollOverFrameMod}<${RollOverMaxFrameModUp}
					return
				RollOverFrameMod:Set[0]
			}
			RollOverFrame:Inc
		}
		else
		{
			if !${RollOverFrame}
				return
			if ${RollOverFrame}
			{
				RollOverFrameMod:Inc
				if ${RollOverFrameMod}<${RollOverMaxFrameModDown}
					return
				RollOverFrameMod:Set[0]
			}
			RollOverFrame:Dec
		}
		variable float scale
		scale:Set[(${RollOverFrame}*(${RollOverScale}-1)/${RollOverMaxFrame})+1]
		
/*
		echo timing ApplyZoom
		execute -time \
/**/
		This:ApplyZoom[${scale}]
	}

	member:uint GetMonitor()
	{
		if ${Display.Monitors}<2
			return 1

		variable uint i=1
		variable int MidX
		variable int MidY
		MidX:Set[${Display.X}+(${Display.Window.Width}/2)]
		MidY:Set[${Display.Y}+(${Display.Window.Height}/2)]
		for (${i}<=${Display.Monitors} ; i:Inc)
		{
			if ${Display.Monitor[${i}].Left}>${MidX}
				continue
			if ${Display.Monitor[${i}].Right}<${MidX}
				continue
			if ${Display.Monitor[${i}].Top}>${MidY}
				continue
			if ${Display.Monitor[${i}].Bottom}<${MidY}
				continue
			return ${i}
		}

		return 1
	}

	variable uint CurrentMonitor=1

	method OnMouseEnter()
	{	
		This:UpdateMouseScale[TRUE]
		if ${Active}
		{
			return
		}

		CurrentMonitor:Set[${This.GetMonitor}]
;		echo OnMouseEnter
		RolledOver:Set[TRUE]
		RollOverFrameMod:Set[0]
		if ${RollOverEnabled}
			Event[OnFrame]:AttachAtom[This:OnFrame]

	}

	method OnMouseExit()
	{
		This:UpdateMouseScale[FALSE]
		if !${RolledOver}
			return
		RolledOver:Set[FALSE]
		if ${Active}
		{
			Event[OnFrame]:DetachAtom[This:OnFrame]
			return
		}
		RollOverFrameMod:Set[0]
	}


	/* Snaps the window TO the snap-to size and position, with always on top */
	method SnapTo()
	{
	 ; TODO
	    if !${BackRegion.Ready}
	    {
			This:SnapBack
			return
	    }
	    
		if ${FastSwitch}
			BackRegion:SnapTo
		else
			BackRegion:RestoreFull
	}

	/* Snaps the window back to full size, and removes always on top */
	method SnapBack()
	{
	 ; TODO
		if ${FastSwitch}
			ForeRegion:SnapBack
		else
			ForeRegion:RestoreFull
	}

	/* Handler for the "On Deactivate" event, which fires when the window is no longer the active one */
	method OnDeactivate()
	{
		if ${AutoDeactivateMode}==DEACTIVATE_ALWAYS
			This:Deactivate
			
		relay "FOCUSCHANGETARGETINCLUSIVE" -noredirect snapset -lostfocus "${Snapper.SwapGroup.Escape}" "${Session.Escape}" -refreshalwaysontop
	}
	
	/* Handler for the "On Activate" event, which fires when the window is once again the active one */
	method OnActivate()
	{
		if ${Display.Window.IsMinimized}
		{
;			echo Minimized. blocking OnActivate.
			return
		}

		relay "FOCUSCHANGETARGET" -noredirect snapset -gotfocus "${Snapper.SwapGroup.Escape}" "${Session.Escape}" "${Display.Window.HWND.Hex}" -refreshalwaysontop
		This:GotFocus["${Snapper.SwapGroup.Escape}","${Session.Escape}","${Display.Window.HWND.Hex}"]
		This:UpdateMouseScale

		if ${Ignore}
		{
			if ${AutoToggleIgnore}
				Ignore:Set[FALSE]
			else
			{
;				relay "OTHERLOCALSWAPGROUP" -noredirect snapset -refreshalwaysontop
				return
			}
		}

		This:Activate
	}

	/* Handler for the "OnInternalActivate" event, which fires when the window is once again the active one, due to an Inner Space focus command */
	method OnInternalActivate()
	{
		if ${Display.Window.IsMinimized}
		{
;			echo Minimized. blocking OnActivate.
			return
		}

		; this should have already happened from the base OnActivate
		
		relay "FOCUSCHANGETARGET" -noredirect snapset -gotfocus "${Snapper.SwapGroup.Escape}" "${Session.Escape}" "${Display.Window.HWND.Hex}" -refreshalwaysontop
		This:GotFocus["${Snapper.SwapGroup.Escape}","${Session.Escape}","${Display.Window.HWND.Hex}"]
		This:UpdateMouseScale
		/**/

		if ${IgnoreInternal}
		{
			return
		}

		relay "OTHERLOCALSWAPGROUP" -noredirect snapset -forcedeactivate
		This:Activate
	}
	
	method GotFocus(string swapGroup, string name, string _hwnd)
	{
;		UIElement[output@console]:Echo["GotFocus ${name.Escape} _hwnd=${_hwnd}"]

		if ${Snapper.SessionIsVFXLayout["${name.Escape}"]}
		{
			Snapper.VFXLayoutSlots:Set["${_hwnd.Escape}",1]
		}
		else
		{
			LastGameWindowFocused:Set["${GameWindowFocused.Escape}"]
			LastGameWindowFocusedHWND:Set["${GameWindowFocusedHWND.Escape}"]
		}

		GameWindowFocused:Set["${name.Escape}"]
		GameWindowFocusedHWND:Set["${_hwnd.Escape}"]
		if ${swapGroup.Equal["${Snapper.SwapGroup.Escape}"]}
		{
			SwapGroupGameWindowFocused:Set["${name.Escape}"]
			SwapGroupGameWindowFocusedHWND:Set["${_hwnd.Escape}"]
		}
		VFXLayout:GotFocus["${name.Escape}"]
;		UIElement[output@console]:Echo["GotFocus ${name.Escape},${_hwnd.Escape}"]		
	}
	
	method LostFocus(string swapGroup,string name)
	{
;		UIElement[output@console]:Echo["LostFocus ${name.Escape} gwf=${GameWindowFocused.Escape}"]
		if ${GameWindowFocused.Equal["${name.Escape}"]}
		{
			GameWindowFocused:Set[""]
			GameWindowFocusedHWND:Set[""]
		}
		if ${swapGroup.Equal["${Snapper.SwapGroup.Escape}"]}
		{
			if ${SwapGroupGameWindowFocused.Equal["${name.Escape}"]}
			{
				SwapGroupGameWindowFocused:Set[""]
				SwapGroupGameWindowFocusedHWND:Set[""]
			}
		}
		VFXLayout:LostFocus["${name.Escape}"]
	}

	method Reset()
	{
		ResetRegion:RestoreFull
	}
	
	method ResetFore()
	{
		ForeRegion:RestoreFull
	}

	method ResetBack()
	{
		BackRegion:ResetFull
	}
	
	method SetState(string region, string change)
	{
		switch ${region}
		{
			case Reset
			case ResetRegion
				region:Set[ResetRegion]
				break
			case Foreground
			case ForeRegion
				region:Set[ForeRegion]
				break
			case Background
			case BackRegion
				region:Set[BackRegion]
				break
			default
				return
		}
		switch ${change}
		{
			case Fast
				noop ${${region}:SnapTo}
				break
			case Full
				noop ${${region}:RestoreFull}
				break
			case Auto
				noop ${${region}:Restore}
				break
		}
	}	

	/* Manually activate */
	method Activate()
	{
		if !${Active}
		{
			RollOverFrame:Set[0]
/*
			echo Timing SnapBack
			execute -time \
/**/
			This:SnapBack
			Active:Set[TRUE]

			if ${PiPSqueak} && ${String["${Session.Escape}"].NotEqual["PIPSQUEAKSLOT"]}   /*${ISBoxerSlot}!=1*/
			{
				BackRegion:PiPSqueak
			}
			

		}
		relay "OTHERLOCALSWAPGROUP" -noredirect snapset -refreshalwaysontop
	}

	/* Manually deactivate */
	method Deactivate()
	{
;		echo deactivate. ignore=${Ignore} active=${Active}
		This:UpdateMouseScale

		if ${Ignore}
		{
			return
		}
	
		if ${Active}
		{
			This:ForceDeactivate
		}
	}

	method ForceDeactivate()
	{
;		echo forcedeactivate
		RolledOver:Set[FALSE]
;			This:Store
/*
		echo Timing SnapTo
		execute -time \
/**/
		This:SnapTo
		if ${BackRegion.Ready}
			Active:Set[FALSE]
	}

	/* Handler for the OnMouseWheel event, which fires when mouse wheel is moved. This is for our wheel switcher functionality. */
	method OnMouseWheel(int offset)
	{
		/* If our wheel switcher key is not pressed, let's not eat the mouse wheel movement or switch */
		if !${Input.Button["${WheelSwitcherKey.Escape}"].Pressed}
			return
		/* This makes us eat the mouse wheel movement. */	 
		Context:Set[FALSE]

		/* Now depending on the direction we moved the mouse wheel, switch to either the next or previous window */
		if ${offset}<0
			uplink focus -next
		if ${offset}>0
			uplink focus -previous
	}

	/* Enables wheel switcher functionality. Pass in ONE KEY to hold down while mouse wheeling for it to work. */
	method EnableWheelSwitcher(string key)
	{
		WheelSwitcherKey:Set["${key.Escape}"]
		if ${WheelSwitcher}
			return
		WheelSwitcher:Set[TRUE]
		Event[OnMouseWheel]:AttachAtom[This:OnMouseWheel]
	}

	/* Disables wheel switcher functionality. */
	method DisableWheelSwitcher()
	{
		if !${WheelSwitcher}
			return

		WheelSwitcher:Set[FALSE]
		Event[OnMouseWheel]:DetachAtom[This:OnMouseWheel]
	}
	

}

/* Declare our windowsnapper object, called Snapper */
variable(global) windowsnapper Snapper

atom(global) resetregion(int X, int Y, int Width, int Height, bool AlwaysOnTop, string Frame, bool SometimesOnTop)
{
	Snapper.ResetRegion:Set[${X},${Y},${Width},${Height},${AlwaysOnTop},"${Frame.Escape}",${SometimesOnTop}]
}

atom(global) foreregion(int X, int Y, int Width, int Height, bool AlwaysOnTop, string Frame, bool SometimesOnTop)
{
	Snapper.ForeRegion:Set[${X},${Y},${Width},${Height},${AlwaysOnTop},"${Frame.Escape}",${SometimesOnTop}]
}

atom(global) backregion(int X, int Y, int Width, int Height, bool AlwaysOnTop, string Frame, bool SometimesOnTop)
{
	Snapper.BackRegion:Set[${X},${Y},${Width},${Height},${AlwaysOnTop},"${Frame.Escape}",${SometimesOnTop}]
}

/* Create a command called snapsize to change the size. The command is here until the script is terminated. */
atom(global) snapsize(string size)
{
	Snapper.BackRegion:SetSize["${size}"]
		echo \agWindowSnapper: Window will snap to ${Snapper.SnapPos} with size ${Snapper.SnapSize}
	if !${Snapper.Active}
		squelch windowsize -rescale -viewable ${Snapper.SnapSize}
}

/* Create a command called snappos to change the position. The command is here until the script is terminated. */
atom(global) snappos(string position)
{
	Snapper.Backregion:SetPos["${position}"]
		echo \agWindowSnapper: Window will snap to ${Snapper.SnapPos} with size ${Snapper.SnapSize}
	if !${Snapper.Active}
		squelch windowpos -stealth ${Snapper.SnapPos}
}

/* Create a command called snapignore to ignore the next deactivation, until reactivated (again to change your mind) */
atom(global) snapignore()
{
	if ${Snapper.Ignore:Toggle}
	{
		echo \agWindowSnapper: Ignoring ${If[${Snapper.AutoToggleIgnore},"next ",""]}deactivation
	}
	else
	{
		echo \agWindowSnapper: NOT Ignoring ${If[${Snapper.AutoToggleIgnore},"next ",""]}deactivation
	}
}

/* Create a command called snapdock to allow docking of another session's snap-to, adjacent to this session's snap-to */
atom(global) snapdock(string session, string where)
{
	variable string pos

	switch ${where}
	{
	case top
		pos:Set["${Snapper.SnapX},${Math.Calc[${Snapper.SnapY}-${Snapper.SnapHeight}]}"]
		relay "${session}" -noredirect "snappos ${pos};snapsize ${Snapper.SnapSize}"		
		break
	case bottom
		pos:Set["${Snapper.-noredirect SnapX},${Math.Calc[${Snapper.SnapY}+${Snapper.SnapHeight}]}"]		
		relay "${session}" "snappos ${pos};snapsize ${Snapper.SnapSize}"		
		break
	case left
		pos:Set["${Math.Calc[${Snapper.SnapX}-${Snapper.SnapWidth}]},${Snapper.SnapY}"]		
		relay "${session}" -noredirect "snappos ${pos};snapsize ${Snapper.SnapSize}"		
		break
	case right
		pos:Set["${Math.Calc[${Snapper.SnapX}+${Snapper.SnapWidth}]},${Snapper.SnapY}"]		
		relay "${session}" -noredirect "snappos ${pos};snapsize ${Snapper.SnapSize}"		
		break
	default
		echo Unknown dock position, try top, bottom, left or right
		break
	}
}

atom(global) snapstyle(... Params)
{
	echo ${Session}: snapstyle ${Params.Expand.Escape}
	/* Process parameters */
	variable int p=1
	variable string regiontype=ForeRegion
	for (${p}<=${Params.Size} ; p:Inc)
	{
		/* Switch does a string comparison, so parameter processing is easy */
		switch ${Params[${p}]}
		{
		case -background
		case -backregion
			regiontype:Set[BackRegion]
			Snapper.BackRegion.Ready:Set[GO]
			break
		case -foreground
		case -foreregion
			regiontype:Set[ForeRegion]
			Snapper.ForeRegion.Ready:Set[GO]
			break
		case -reset
		case -resetregion
			regiontype:Set[ResetRegion]
			Snapper.ResetRegion.Ready:Set[GO]
			break
		case -position
			p:Inc[2]
			if ${p}<=${Params.Size}
			{
				noop ${Snapper.${regiontype}.X:Set["${Params[${Math.Calc[${p}-1]}].Escape}"]} ${Snapper.${regiontype}.Y:Set["${Params[${p}].Escape}"]}
			}
			break
		case -size			
			p:Inc[2]
			if ${p}<=${Params.Size}
			{
				noop ${Snapper.${regiontype}.Width:Set["${Params[${Math.Calc[${p}-1]}].Escape}"]} ${Snapper.${regiontype}.Height:Set["${Params[${p}].Escape}"]}
			}
			break
		case -alwaysontop
			p:Inc[1]
			if ${p}<=${Params.Size}
			{
				switch ${Params[${p}]}
				{
				case on
					noop ${Snapper.${regiontype}.AlwaysOnTop:Set[TRUE]}
					break
				case off
					noop ${Snapper.${regiontype}.AlwaysOnTop:Set[FALSE]}
					break
				case toggle
					noop ${Snapper.${regiontype}.AlwaysOnTop:Toggle}
					break
				}
				
			}
			break
		case -sometimesontop
			p:Inc[1]
			if ${p}<=${Params.Size}
			{
				switch ${Params[${p}]}
				{
				case on
					noop ${Snapper.${regiontype}.SometimesOnTop:Set[TRUE]}
					break
				case off
					noop ${Snapper.${regiontype}.SometimesOnTop:Set[FALSE]}
					break
				case toggle
					noop ${Snapper.${regiontype}.SometimesOnTop:Toggle}
					break
				}
				
			}
			break
		case -frame
			p:Inc[1]
			if ${p}<=${Params.Size}
			{
				noop ${Snapper.${regiontype}.Frame:Set["${Params[${p}].Escape}"]}
			}
			break
		}
	}
}

atom(global) snapset(... Params)
{
	/* Process parameters */
	variable int p=1
	for (${p}<=${Params.Size} ; p:Inc)
	{
		/* Switch does a string comparison, so parameter processing is easy */
		switch ${Params[${p}]}
		{
		case -zoom
			p:Inc
			if ${p}<=${Params.Size}
				Snapper:ApplyZoom["${Params[${p}]}",1]
			break
		case -state
			p:Inc[2]
			if ${p}<=${Params.Size}
			{
				Snapper:SetState["${Params[${Math.Calc[${p}-1]}].Escape}","${Params[${p}].Escape}"]
			}
			break		
		case -gotfocus
			p:Inc[3]
			if ${p}<=${Params.Size}
				Snapper:GotFocus["${Params[${Math.Calc[${p}-2]}].Escape}","${Params[${Math.Calc[${p}-1]}].Escape}","${Params[${p}].Escape}"]
			break
		case -lostfocus		
			p:Inc[2]
			if ${p}<=${Params.Size}
				Snapper:LostFocus["${Params[${Math.Calc[${p}-1]}].Escape}","${Params[${p}].Escape}"]
			break
		case -refreshalwaysontop
			Snapper:RefreshAlwaysOnTop
			break
		case -sometimesontop
			Snapper.BackRegion.SometimesOnTop:Set[TRUE]
			break
		case -nosometimesontop
			Snapper.BackRegion.SometimesOnTop:Set[FALSE]
			break
		case -alwaysontop
			Snapper.BackRegion.AlwaysOnTop:Set[TRUE]
			break
		case -noalwaysontop
			Snapper.BackRegion.AlwaysOnTop:Set[FALSE]
			break
		case -instantswap
			Snapper.FastSwitch:Set[TRUE]
			break
		case -noinstantswap
			Snapper.FastSwitch:Set[FALSE]
			break			
		case -toggleinstantswap
			Snapper.FastSwitch:Toggle
			break			
		case -pipsqueak
			Snapper:EnablePiPSqueak
			break
		case -nopipsqueak
			Snapper:DisablePiPSqueak
			break
		case -autodeactivatemode
			p:Inc
			if ${p}<=${Params.Size}
				Snapper:SetAutoDeactivateMode["${Params[${p}]}"]		
			break
		case -ignore
			Snapper.Ignore:Set[TRUE]
			break
		case -noignore
			Snapper.Ignore:Set[FALSE]
			break
		case -autotoggleignore
			Snapper.AutoToggleIgnore:Set[TRUE]
			break
		case -noautotoggleignore
			Snapper.AutoToggleIgnore:Set[FALSE]
			break
		case -home
			Snapper:SnapBack
			break
		case -activate
			Snapper:Activate
			break
		case -deactivate
			Snapper:Deactivate
			break
		case -deactivateothers
			relay "OTHERLOCALSWAPGROUP" -noredirect snapset -forcedeactivate
			break
		case -swapgroup
			p:Inc
			if ${p}<=${Params.Size}
				Snapper.SwapGroup:Set["${Params[${p}]}"]
			break
		case -pipsqueakslot
			p:Inc
			if ${p}<=${Params.Size}
				Snapper.PiPSqueakSlot:Set["${Params[${p}]}"]
			break
		case -reset
			Snapper:Reset
			break
		case -resetfore
			Snapper:ResetFore
			break
		case -forcedeactivate
			Snapper:ForceDeactivate
			break
		case -size
			/* we got the -size switch, so if there's another parameter, set Snapper.SnapSize to the new value */
			p:Inc
			if ${p}<=${Params.Size}
				snapsize "${Params[${p}]}"
			break
		case -pos
			/* we got the -pos switch, so if there's another parameter, set Snapper.SnapPos to the new value */
			p:Inc
			if ${p}<=${Params.Size}
				snappos "${Params[${p}]}" 
			break
		case -norollover
			Snapper:DisableRollOver
			break
		case -rollover
			Snapper:EnableRollOver
			break
		case -rolloverscale
			p:Inc
			if ${p}<=${Params.Size}
				Snapper:EnableRollOver["${Params[${p}]}"]
			break
		case -rolloverframes
			p:Inc
			Snapper:EnableRollOver[${Snapper.RollOverScale}]
			if ${p}<=${Params.Size} && ${Params[${p}]}
				Snapper.RollOverMaxFrame:Set["${Params[${p}]}"]
			else
				Snapper.RollOverMaxFrame:Set["1"]

			if ${Snapper.RollOverFrame}>${Snapper.RollOverMaxFrame}
				Snapper.RollOverFrame:Set[${Snapper.RollOverMaxFrame}]
			break
		case -ignorekey
			p:Inc
			if ${p}<=${Params.Size}
			{
				bind snapignore "${Params[${p}].Escape}" snapignore
			}
			break
		case -wheelswitcher
			p:Inc
			if ${p}<=${Params.Size}
			{
				Snapper:EnableWheelSwitcher["${Params[${p}].Escape}"]
			}
			break
		case -nowheelswitcher
			Snapper:DisableWheelSwitcher
			break
		case -usevideofxlayout
			Snapper:SetUseVideoFXLayout[1]
			break
		}
	}
}

/* Entry point for the script. All parameters passed to it will be put in an array called Params */
function main(... Params)
{
;	echo WindowSnapper Parameters=${Params.Expand.Escape}
	if ${InnerSpace.Build}<4759
	{
		echo \ayThis version of WindowSnapper requires Inner Space build 4759 or later
		return
	}
	variable float RollOverScale=1.5
	variable bool RollOver=TRUE

	/* Process parameters */
	variable int p=1
	for (${p}<=${Params.Size} ; p:Inc)
	{
		/* Switch does a string comparison, so parameter processing is easy */
		switch ${Params[${p}]}
		{
		case -sometimesontop
			Snapper.BackRegion.SometimesOnTop:Set[TRUE]
			break
		case -nosometimesontop
			Snapper.BackRegion.SometimesOnTop:Set[FALSE]
			break
		case -alwaysontop
			Snapper.BackRegion.AlwaysOnTop:Set[TRUE]
			break
		case -noalwaysontop
			Snapper.BackRegion.AlwaysOnTop:Set[FALSE]
			break
		case -pipsqueak
			Snapper:EnablePiPSqueak
			break
		case -nopipsqueak
			Snapper:DisablePiPSqueak
			break
		case -instantswap
			Snapper.FastSwitch:Set[TRUE]
			break
		case -noinstantswap
			Snapper.FastSwitch:Set[FALSE]
			break
		case -autodeactivatemode
			p:Inc
			if ${p}<=${Params.Size}
				Snapper:SetAutoDeactivateMode["${Params[${p}]}"]		
			break
		case -ignore
			Snapper.Ignore:Set[TRUE]
			break
		case -noignore
			Snapper.Ignore:Set[FALSE]
			break
		case -ignoreinternal
			Snapper.IgnoreInternal:Set[TRUE]
			break
		case -noignoreinternal
			Snapper.IgnoreInternal:Set[FALSE]
			break
		case -autotoggleignore
			Snapper.AutoToggleIgnore:Set[TRUE]
			break
		case -noautotoggleignore
			Snapper.AutoToggleIgnore:Set[FALSE]
			break
		case -activate
			Snapper:Activate
			break
		case -deactivate
			Snapper:Deactivate
			break
		case -size
			/* we got the -size switch, so if there's another parameter, set Snapper.SnapSize to the new value */
			p:Inc
			if ${p}<=${Params.Size}
				Snapper.BackRegion:SetSize["${Params[${p}]}"]
			break
		case -pos
			/* we got the -pos switch, so if there's another parameter, set Snapper.SnapPos to the new value */
			p:Inc
			if ${p}<=${Params.Size}
				Snapper.BackRegion:SetPos["${Params[${p}]}"]
			break
		case -swapgroup
			p:Inc
			if ${p}<=${Params.Size}
				Snapper.SwapGroup:Set["${Params[${p}]}"]
			break
		case -pipsqueakslot
			p:Inc
			if ${p}<=${Params.Size}
				Snapper.PiPSqueakSlot:Set["${Params[${p}]}"]
			break
		case -norollover
			RollOver:Set[FALSE]
			break
		case -rollover
			RollOver:Set[TRUE]
			break
		case -rolloverscale
			RollOver:Set[TRUE]
			p:Inc
			if ${p}<=${Params.Size}
				RollOverScale:Set["${Params[${p}]}"]
			break
		case -rolloverframes
			RollOver:Set[TRUE]
			p:Inc
			if ${p}<=${Params.Size} && ${Params[${p}]}
			{
				Snapper.RollOverMaxFrame:Set["${Params[${p}]}"]
				if ${Snapper.RollOverFrame}>${Snapper.RollOverMaxFrame}
					Snapper.RollOverFrame:Set[${Snapper.RollOverMaxFrame}]
			}
			break
		case -ignorekey
			p:Inc
			if ${p}<=${Params.Size}
			{
				bind snapignore "${Params[${p}].Escape}" snapignore
			}
			break
		case -wheelswitcher
			p:Inc
			if ${p}<=${Params.Size}
			{
				Snapper:EnableWheelSwitcher["${Params[${p}].Escape}"]
			}
			break
		case -nowheelswitcher
			Snapper:DisableWheelSwitcher
			break
		case -usevideofxlayout
			Snapper:SetUseVideoFXLayout[1]
			break
		}
	}

	/* Parameters have been processed, let's get going. */	 
	if ${RollOver}
		Snapper:EnableRollOver[${RollOverScale}]

	/* Add autolayout alias so people can use this command instead of running the script. same thing.*/
	alias autolayout run autolayout

	Snapper:Go
	wait 10
	if !${Display.Window.IsForeground}
		Snapper:Deactivate
	
	
	/* Now just keep the script running, so our functionality doesn't go away */
	while 1
	{
		waitframe
	}
}

atom atexit()
{
	bind -delete snapignore
}
