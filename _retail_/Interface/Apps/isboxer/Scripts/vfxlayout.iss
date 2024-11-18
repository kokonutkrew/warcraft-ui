objectdef vfxlRegion
{
    method Initialize(int regionNumber, int x, int y, int w, int h)
	{
;		echo vfxlRegion:Initialize[${regionNumber},${x},${y},${w},${h}]
		RegionNumber:Set[${regionNumber}]
		X:Set[${x}]
		Y:Set[${y}]
		Width:Set[${w}]
		Height:Set[${h}]
	}

	member ToText()
	{
		return "${X},${Y},${Width},${Height}"
	}

	variable int RegionNumber
	variable int X
	variable int Y
	variable int Width
	variable int Height
}

objectdef vfxlSlot
{
	method Initialize(int slotNumber, string sessionName, int homeRegion)
	{
;		echo vfxlSlot:Initialize[${slotNumber},${sessionName},${homeRegion}]
		SessionName:Set["${sessionName.Escape}"]
		HomeRegion:Set[${homeRegion}]
		SlotNumber:Set[${slotNumber}]
		This:UpdateRegion[${homeRegion}]
	}

	method Shutdown()
	{
		This:Disable
	}

	method Enable()
	{
		if ${Enabled}	
			return

		if !${CurrentRegion}
			return

		Enabled:Set[1]

		echo ISBoxerUI:AddVideoFeed[0,"${SessionName.Escape}",${VFXLayout.Regions[${CurrentRegion}]},255,"",1,1,"${VFXLayout.UseKeyMap}","${VFXLayout.UseMappedKey}",0,${VFXLayout.UseClickToFocus}]
		ISBoxerUI:AddVideoFeed[0,"${SessionName.Escape}",${VFXLayout.Regions[${CurrentRegion}]},255,"",1,1,"${VFXLayout.UseKeyMap}","${VFXLayout.UseMappedKey}",0,${VFXLayout.UseClickToFocus}]
		
		; AddVideoFeed(bool isSource, string feedName, int X, int Y, int Width, int Height, int opacity, string borderRGB, bool use_mouse, bool use_keyboard, string keymapname, string mappedkeyname, bool keep_source, bool click_to_focus)
	}

	method Disable()
	{
		if !${Enabled}
			return

		Enabled:Set[0]

		ISBoxerUI:PermanentlyRemoveVideoFeed[0,"${SessionName.Escape}"]
		; ISBoxerUI:RemoveVideoFeed[]
	}

	method UpdateRegion(int newRegion)
	{
;		echo Slot[${SessionName.Escape}]:UpdateRegion[${newRegion}]
		if !${newRegion}
		{
			This:Disable
			CurrentRegion:Set[0]
			return
		}

		variable bool WasEnabled
		WasEnabled:Set[${Enabled}]
		if ${Enabled}
		{
			This:Disable
		}

		;echo CurrentRegion:Set[${newRegion}]
		CurrentRegion:Set[${newRegion}]
		

;		if ${WasEnabled}
			This:Enable
	}

	variable bool Enabled

	variable string SessionName
	variable int HomeRegion
	variable int SlotNumber

	variable int CurrentRegion
}

objectdef vfxLayout
{
    variable index:vfxlRegion Regions
    variable collection:vfxlSlot Slots

	variable string RoamingSlot
	variable string BorrowedFrom

	variable bool UseClickToFocus=1
	variable string UseKeyMap="ISB42 - Video FX Layout"
	variable string UseMappedKey="Slot \${SlotNumber} Mouseover"

	member:bool Enabled()
	{
		if ${This.Regions.Used}==0
			return 0
		return 1
	}

	/*
This:AddVideoFeed[0,"${Iterator.Value.FindAttribute["feedoutput"].String.Escape}",${Iterator.Value.FindAttribute["X"].Int},${Iterator.Value.FindAttribute["Y"].Int},${Iterator.Value.FindAttribute["Width"].Int},${Iterator.Value.FindAttribute["Height"].Int},${Iterator.Value.FindAttribute["opacity"].Int},"${Iterator.Value.FindAttribute["bordercolor"].String.Escape}","${Iterator.Value.FindAttribute["usemouse"].String.Escape}","${Iterator.Value.FindAttribute["usekeyboard"].String.Escape}","${Iterator.Value.FindAttribute["keymap"].String.Escape}","${Iterator.Value.FindAttribute["mappedkey"].String.Escape}",0,"${Iterator.Value.FindAttribute["usefocushotkey"].String.Escape}"]
This:AddVideoFeed[1,"${Iterator.Value.FindAttribute["feedsource"].String.Escape}",${Iterator.Value.FindAttribute["X"].Int},${Iterator.Value.FindAttribute["Y"].Int},${Iterator.Value.FindAttribute["Width"].Int},${Iterator.Value.FindAttribute["Height"].Int}]

method AddVideoFeed(bool isSource, string feedName, int X, int Y, int Width, int Height, int opacity, string borderRGB, bool use_mouse, bool use_keyboard, string keymapname, string mappedkeyname, bool keep_source, bool click_to_focus)

	*/

	method Clear()
	{
		This.Slots:Clear
		This.Regions:Clear
		This.RoamingSlot:Set[""]
	}

	method AddRegion(int regionNumber, int x, int y, int w, int h)
	{
		;echo VFXLayout.AddRegion:  Regions:Insert[${regionNumber},${x},${y},${w},${h}]
		This.Regions:Insert[${regionNumber},${x},${y},${w},${h}]
	}

	method AddSlot(int slotNumber, string sessionName, int homeRegion)
	{
		;echo VFXLayout.AddSlot:  Slots:Set["${sessionName.Escape}",${slotNumber},"${sessionName.Escape}",${homeRegion}]
		This.Slots:Set["${sessionName.Escape}",${slotNumber},"${sessionName.Escape}",${homeRegion}]
		if !${homeRegion}
		{
			RoamingSlot:Set["${sessionName.Escape}"]
		}
		else
		{
			;echo This.Slots.Element["${sessionName.Escape}"]:Enable
			This.Slots.Element["${sessionName.Escape}"]:Enable
		}
	}

	method ApplyLayout()
	{
	}

	method GotFocus(string sessionName)
	{
;		echo VFXLayout:GotFocus["${sessionName.Escape}"]
		This.Slots.Element["${sessionName.Escape}"]:Disable
		if ${sessionName.Equal["${Session.Escape}"]}
			return

		if ${RoamingSlot.Length} && !${sessionName.Equals[${RoamingSlot.Escape}]}
		{
			BorrowedFrom:Set["${sessionName.Escape}"]
			This.Slots.Element["${RoamingSlot.Escape}"]:UpdateRegion["${Slots.Element["${sessionName.Escape}"].CurrentRegion}"]
		}
	}

	method LostFocus(string sessionName)
	{
;		echo VFXLayout:LostFocus["${sessionName.Escape}"]
		This.Slots.Element["${sessionName.Escape}"]:Enable
	}
}

variable(global) vfxLayout VFXLayout

atom(global) vfxlayout(... Params)
{
	
}

function main(... Params)
{
	VideoFeed:SetPermanentVideoFeeds[1]

	/* Now just keep the script running, so our functionality doesn't go away */
	while 1
	{
		waitframe
	}
}

atom atexit()
{
}