objectdef isboxervideocarousel
{
	variable string carouselElement

	variable index:string Sources
	variable set ActiveSources

	variable uint CurrentPosition=1
	variable uint Columns=5
	variable uint Rows=1
	variable bool Visible=0
	variable string Border=ffffffff
	variable int Opacity=255

	variable bool Grow=1
	variable bool ClickToSwitch=1
	variable bool UseRepeater=0

	variable int X=50
	variable int Y=350
	variable uint Width=${Math.Calc[${Display.Width}-100]}
	variable uint Height=100

	method Initialize()
	{
		Sources:Resize[10]
		Audio:SetMute[0]
	}

	method Previous()
	{
		CurrentPosition:Dec
		if ${CurrentPosition}<1
		{
			if ${Sources.Used}
				CurrentPosition:Set[${Sources.Used}]
			else
				CurrentPosition:Set[1]
		}
	}

	method Next()
	{
		CurrentPosition:Inc
		if ${CurrentPosition}>${Sources.Used}
		{
			CurrentPosition:Set[1]
		}
	}

	member:int FindSource(string name)
	{
		variable int i=1
		for (${i}<=${Sources.Used} ; i:Inc)
		{
			if ${Sources[${i}].Equal["${name.Escape}"]}
				return ${i}
		}
		return 0
	}

	method AddSource(string name)
	{
		if ${This.FindSource["${name.Escape}"]}
			return
		Sources:Insert["${name.Escape}"]
	}

	method AddAllSources()
	{
		variable iterator Iterator
		VideoFeed:GetSourceIterator[Iterator]
		if ${Iterator:First(exists)}
		{
			do
			{
				if ${Iterator.Value.Window.HWND}!=${Display.Window.HWND}
					This:AddSource["${Iterator.Key.Escape}"]
			}
			while ${Iterator:Next(exists)}
		}

	}

	method RegisterExternalSources()
	{
		variable index:gdiwindow Windows
		Display:EnumVisibleWindows[Windows]

		variable iterator Iterator
		variable string processName

		Windows:GetIterator[Iterator]
		if ${Iterator:First(exists)}
		{
			do
			{
				if ${Iterator.Value.ViewableWidth} && ${Iterator.Value.ViewableHeight}
				{
					processName:Set["${Iterator.Value.ProcessName.Escape}"]
					if ${processName.Length} && ${processName.NotEqual[NULL]}
					{		
						variable file f
						f:SetFilename["${processName.Escape}"]
						variable string FileName
						FileName:Set["${f.Filename.Escape}"]
					
					echo relay uplink "noop \${VideoFeed:RegisterSource[\"${FileName.Escape}-pid${Iterator.Value.ProcessID}\",\"${Iterator.Value.HWND.Hex}\"]}"
						relay uplink "timed 0 noop \\\${VideoFeed:RegisterSource[\"${FileName.Escape}-pid${Iterator.Value.ProcessID}\",\"${Iterator.Value.HWND.Hex}\"]}"
					}
				}
			}
			while ${Iterator:Next(exists)}
		}

	}


	method RemoveSource(string name)
	{
		variable int id=${This.FindSource["${name.Escape}"]}
		if ${id}
			Sources:Remove[${id}]
	}

	
	method ApplyLayout()
	{
		if !${Visible} || !${Columns} || !${Sources.Used}
			return

		variable int x
		variable int y
		variable int max_width
		variable int max_height

		variable int use_columns=${Columns}
		if ${Sources.Used}<${use_columns}
			use_columns:Set[${Sources.Used}]
		
		max_width:Set[${Width}/${use_columns}]
		max_height:Set[${Height}/${Rows}]

		; leave 1 pixel on all sides...
		max_width:Dec[2]
		max_height:Dec[2]

		if ${max_height}<1 || ${max_width}<1
			return

		x:Set[${This.X}+1]
		y:Set[${This.Y}+1]

		variable int elementid
		variable iterator Iterator
		Sources:GetIterator[Iterator]


		if ${Iterator:JumpTo[${Math.Calc[${CurrentPosition}]}](exists)}
		{
			do
			{
				elementid:Set[${This.RenderSource["${Iterator.Value}",${x},${y},${max_width},${max_height}]}]

				if ${elementid}
				{
					if ${UIElement[${elementid}].Type.Equal[window]}
					{
						elementid:Set[${UIElement[${elementid}].FindChild[videobox].ID}]
						if !${elementid}
							return
					}

					x:Inc[${UIElement[${elementid}].Width}+2]

					if ${x}+${max_width}>${This.X}+${This.Width}
					{
						y:Inc[${max_height}+2]
						if ${y}+${max_height}>${This.Y}+${This.Height}
						{
							break
						}
					}
				}
			}
			while ${Iterator:Next(exists)}
		}

	}

	method UpdateRendering()
	{
		; keep a record of previously active sources
		variable set PreviouslyActiveSources
		PreviouslyActiveSources:Merge[ActiveSources]
		ActiveSources:Clear

		; render current sources with current information
		This:ApplyLayout

		; remove sources that are in PreviouslyActiveSources but not in ActiveSources
		variable set GoneSources
		GoneSources:Not[PreviouslyActiveSources,ActiveSources]

		variable iterator Iterator
		GoneSources:GetIterator[Iterator]
		if ${Iterator:First(exists)}
		{
			do
			{
				ISBoxerUI:PermanentlyRemoveVideoFeedByID[${Iterator.Value}]
			}
			while ${Iterator:Next(exists)}
		}
	}

	method Hide()
	{
		Visible:Set[0]
		This:UpdateRendering
	}

	method Show()
	{
		Visible:Set[1]
		This:UpdateRendering
	}

	member:int RenderSource(string name, int x, int y, uint max_width, uint max_height)
	{

		variable int src_height=${VideoFeed.Source["${name.Escape}"].Height}
		variable int src_width=${VideoFeed.Source["${name.Escape}"].Width}

		if !${src_height} || !${src_width}
		{
			
			ISBoxerUI:PermanentlyRemoveVideoFeedByID[${ISBoxerUI.FindVideoFeed["${name.Escape}"]}]
			return
		}

		variable int use_height=${src_height}
		variable int use_width=${src_width}

	
		if ${Grow}
		{
				; must grow!
				if ${max_width}>${max_height}
				{
					use_height:Set[${max_height}]
					use_width:Set[(${src_width}/${src_height})*${use_height}]
				}
				else
				{
					use_width:Set[${max_width}]
					use_height:Set[(${src_height}/${src_width})*${use_width}]
				}
		}

;		if ${Grow} || (${src_height}>${max_height} || ${src_width}>${max_width})
		{
			if ${src_height}>${max_height}
			{
				use_height:Set[${max_height}]
				use_width:Set[(${src_width}/${src_height})*${use_height}]
			}
			elseif ${src_width}>${max_width}
			{
				use_width:Set[${max_width}]
				use_height:Set[(${src_height}/${src_width})*${use_width}]
			}
/*
			elseif ${Grow}
			{
				; must grow!
				if ${max_width}>${max_height}
				{
					use_height:Set[${max_height}]
					use_width:Set[(${src_width}/${src_height})*${use_height}]
				}
				else
				{
					use_width:Set[${max_width}]
					use_height:Set[(${src_height}/${src_width})*${use_width}]
				}
			}
*/
		}

		variable int use_opacity
		use_opacity:Set[${Opacity}]
		variable string use_border
		use_border:Set["${Border.Escape}"]
		variable string repeater_target
		
		variable bool use_repeater

		use_repeater:Set[${UseRepeater}]
		if ${use_repeater}
		{
			repeater_target:Set["${VideoFeed.Source["${name.Escape}"].Session}"]
		}

		variable bool use_click_switch
		use_click_switch:Set[${ClickToSwitch}]

		ISBoxerUI:AddVideoFeed[0,"${name.Escape}",${x},${y},${use_width},${use_height},${use_opacity},"${use_border.Escape}","${use_repeater}",${use_repeater},"","",1,${ClickToSwitch}]

		variable int elementid
		elementid:Set[${ISBoxerUI.FindVideoFeed[${name.Escape}]}]
		ActiveSources:Add[${elementid}]
		return ${elementid}
	}

	method OnResize()
	{
		
	}
}
variable(global) isboxervideocarousel VideoCarousel

objectdef isboxerui
{
	variable settingsetref VideoFeedSettings
	variable settingsetref ISBoxerUISettings
	variable settingsetref ClickBarSettings

	variable bool AutoMuteBackground
	variable bool PositionsLoaded
	variable int InButton

	variable int SelectedWindow
	variable int SelectedFrame

	variable collection:bool DebugTypes
	variable int DebugAll

	variable bool VideoFeedsWhileEditing=0

	variable collection:int VKCategories
	variable collection:int VKSubCategories
	variable collection:int VKNodes

	variable int TutorialPage=0

	method Initialize()
	{
		ui -reload isboxerui.skin.xml
		ui -reload -skin ISBoxerUI isboxerui.xml

		DebugTypes:Set["Popup Text",TRUE]
		DebugTypes:Set["Button",FALSE]
		DebugTypes:Set["Key Map",TRUE]
		DebugTypes:Set["Paste",TRUE]
		DebugTypes:Set["Variable Keystroke",TRUE]

		DebugTypes:Set["Mapped Key",FALSE]
		DebugTypes:Set["Cursor",FALSE]
		DebugTypes:Set["Repeater Target",FALSE]
		DebugTypes:Set["Virtual Mapped Key",FALSE]
		DebugTypes:Set["Timer Pool",FALSE]

		Event[OnVideoSourceAdded]:AttachAtom[This:OnVideoSourceAdded]
		Event[OnVideoSourceRemoved]:AttachAtom[This:OnVideoSourceRemoved]

		LavishScript:RegisterEvent[VariableKeystrokeAdded]
		Event[VariableKeystrokeAdded]:AttachAtom[This:OnVariableKeystrokeAdded]		
	}
	method Shutdown()
	{
		This:UnregisterCursorOutput
		This:UnregisterCursorSource
		ISBoxerUISettings:Remove
	}

	method FirstRun()
	{
		if ${ISBoxerSlot}!=1
			return

		if ${MenuMan.IsMenuVisible["Standard"]} || ${MenuMan.IsMenuVisible["Toggles"]}
		{
			This:ShowUI
			UIElement[isboxerfirstrun]:Show
			This:FirstRunNext
		}

		/*
		UIElement[output@isboxerfirstrun]:Echo["\ar*\ax It looks like you're running your new team ${ISBoxerCharacterSet}!\n\n"]



		UIElement[output@isboxerfirstrun]:Echo["\ar*\ax If you're playing an MMO and haven't been playing close attention, you might be curious about some \agsee-through green squares\ax."]
		UIElement[output@isboxerfirstrun]:Echo["\ar*\ax Those green squares are the Standard Menu, which broadcasts 1 through = and may be placed over your game's Action Bar. If you do not need this bar, you can remove the Standard Menu from your Character Set in ISBoxer."]
		
		UIElement[output@isboxerfirstrun]:Echo["\ar*\ax With a new \ayCharacter Set\ax, the first thing you usually want to do is position (or hide) your visible \ayMenus\ax."]
		UIElement[output@isboxerfirstrun]:Echo["\ar*\ax To do that, press your \ayISBoxer Control Panel\ax Hotkey, which is \ag${Input.Bind[ISBoxer UI].Combo}\ax."]
		UIElement[output@isboxerfirstrun]:Echo["\ar*\ax With the ISBoxer Control Panel open, you can arrange and reconfigure ISBoxer widgets such as Menus and Click Bars."]
		UIElement[output@isboxerfirstrun]:Echo["\ar*\ax After repositioning your Menus, make sure to click '\agSave All Menu Positions\ax', which will keep your Menus where you left them for next time.\n\n"]

		UIElement[output@isboxerfirstrun]:Echo["\ar*\ax Close this window by clicking the X in the top right corner. This message will not appear again for this Character Set!\n\n"]
		*/
	}

	method FirstRunNext()
	{
		UIElement[output@isboxerfirstrun]:Clear

		if ${TutorialPage}==0
		{
			UIElement[output@isboxerfirstrun]:Echo["\ar*\ax It looks like you're running your new team ${ISBoxerCharacterSet}!\n\n"]

			if ${MenuMan.IsMenuVisible["Standard"]}
			{
				UIElement[output@isboxerfirstrun]:Echo["\ag*\ax It looks like you have the \ayStandard\ax Menu, which broadcasts 1 through = by default and may be placed over your game's Action Bar. If you do not want this bar, you can remove the Standard Menu from your Character Set in ISBoxer."]

				if ${MenuMan.IsMenuVisible["Toggles"]}
				{
					UIElement[output@isboxerfirstrun]:Echo["  \ar*\ax You will want to move the Standard Menu (and probably Toggles), which can be dragged if the ISBoxer Control Panel is visible (we've done that part for you this time)."]
				}
				else
				{
					UIElement[output@isboxerfirstrun]:Echo["  \ar*\ax You will want to move the Standard Menu, which can be dragged if the ISBoxer Control Panel is visible (we've done that part for you this time)."]
				}
				UIElement[output@isboxerfirstrun]:Echo["  \ar*\ax After positioning the Menu, make sure to click '\agSave All Menu Positions\ax' in the Menus tab, which will keep your Menus where you left them for next time."]
				UIElement[output@isboxerfirstrun]:Echo["  \ar*\ax You can toggle the control panel (and the border around the Menu) with your \ayISBoxer Control Panel\ax Hotkey, which is \ag${Input.Bind[ISBoxer UI].Combo}\ax."]

				UIElement[output@isboxerfirstrun]:Echo["  \ar*\ax If you would like to \ayresize\ax the Standard Menu to fit over your Action Bar, this must be done through the \ayISBoxer Toolkit\ax in the \ayMenus\ax section, under \ayMenu Templates\ax.\n\n"]
			}
			elseif ${MenuMan.IsMenuVisible["Toggles"]}
			{
				UIElement[output@isboxerfirstrun]:Echo["\ag*\ax It looks like you have the \ayToggles\ax Menu, which you can use to toggle Hotkeys and Broadcasting Modes, and see whether they are currently enabled."]
				UIElement[output@isboxerfirstrun]:Echo["  \ar*\ax If you do not want this bar, you can remove the Toggles Menu from your Character Set in ISBoxer."]
			}
			else
				TutorialPage:Inc
		}

		switch ${TutorialPage}
		{
		case 1
				UIElement[output@isboxerfirstrun]:Echo["\ag*\ax You can toggle the control panel with your \ayISBoxer Control Panel\ax Hotkey, which is \ag${Input.Bind[ISBoxer UI].Combo}\ax."]			
			break
		}

		TutorialPage:Inc
	}

	method OnVariableKeystrokeFocus()
	{
		Input:DisableBinds
		Event[OnButtonMove]:AttachAtom[This:OnButtonMoved]
	}

	method OnVariableKeystrokeFocusLost()
	{
		Event[OnButtonMove]:DetachAtom[This:OnButtonMoved]
		Input:EnableBinds
		; UIElement["keybox@variable keystrokes@tabs@isboxermain"]
	}

	method OnButtonMoved(string Button, bool Position, uint TimeStamp)
	{
		if !${Position} && !${Button.Equal[Sys Req]}
			return

		if !${UIElement["keybox@variable keystrokes@tabs@isboxermain"].Focus} || !${UIElement[isboxermain].Visible}
		{
			This:OnVariableKeystrokeFocusLost
			return
		}

		switch ${Button}
		{
		case Mouse1
		case Mouse2
		case Mouse3
		case Mouse4
		case Mouse5		
		case MouseWheelUp
		case MouseWheelDown
			if !${UIElement["keybox@variable keystrokes@tabs@isboxermain"].MouseOver}
			{
				;This:OnVariableKeystrokeFocusLost
				return
			}
			break
		}

		variable string newValue

		if ${Input.Button[160].Pressed} && ${Button.NotEqual["${Input.Button[160].Name.Escape}"]}
			newValue:Concat["${Input.Button[160].Name.Escape}+"]
		if ${Input.Button[161].Pressed} && ${Button.NotEqual["${Input.Button[161].Name.Escape}"]}
			newValue:Concat["${Input.Button[161].Name.Escape}+"]
		if ${Input.Button[162].Pressed} && ${Button.NotEqual["${Input.Button[162].Name.Escape}"]}
			newValue:Concat["${Input.Button[162].Name.Escape}+"]
		if ${Input.Button[163].Pressed} && ${Button.NotEqual["${Input.Button[163].Name.Escape}"]}
			newValue:Concat["${Input.Button[163].Name.Escape}+"]
		if ${Input.Button[164].Pressed} && ${Button.NotEqual["${Input.Button[164].Name.Escape}"]}
			newValue:Concat["${Input.Button[164].Name.Escape}+"]
		if ${Input.Button[165].Pressed} && ${Button.NotEqual["${Input.Button[165].Name.Escape}"]}
			newValue:Concat["${Input.Button[165].Name.Escape}+"]

		newValue:Concat["${Button.Escape}"]
		UIElement["keybox@variable keystrokes@tabs@isboxermain"]:SetText["${newValue.Escape}"]:SetMetadata[value,"${newValue.Escape}"]
		keymapper -setvariable "${UIElement["vktree@variable keystrokes@tabs@isboxermain"].Selection.GetMetadata[vk].Escape}" "${newValue.Escape}"
	}

	method OnVariableKeystrokeSelected(int selectedNode)
	{
		variable int elementid=${UIElement["vktree@variable keystrokes@tabs@isboxermain"].ID}
		variable string vkname
		variable string keyValue
		if ${UIElement["${elementid}"].GetNode[${selectedNode}].GetMetadata[description](exists)}
		{
			UIElement["description@variable keystrokes@tabs@isboxermain"]:SetText["${UIElement["${elementid}"].GetNode[${selectedNode}].GetMetadata[description].Escape}"]

			vkname:Set["${UIElement["${elementid}"].GetNode[${selectedNode}].GetMetadata[vk].Escape}"]
			keyValue:Set["${KeyMapper.VariableKeystrokes.Element["${vkname}"].Keystroke.Escape}"]
			UIElement["keybox@variable keystrokes@tabs@isboxermain"]:SetText["${keyValue.Escape}"]:SetMetadata[value,"${keyValue.Escape}"]

		; ${UIElement["${elementid}"].GetNode[${selectedNode}].GetMetadata[description]}

		}
		else
		{
			UIElement["keybox@variable keystrokes@tabs@isboxermain"]:SetText[""]			
			UIElement["description@variable keystrokes@tabs@isboxermain"]:SetText[""]
		}
	}

	method OnVariableKeystrokeAdded(string name, string newValue, string category, string subCategory, string description)
	{

		; remove existing variable keystroke
		UIElement["vktree@variable keystrokes@tabs@isboxermain"].GetNode["${This.VKNodes.Element["${name.Escape}"]}\""]:Remove

		variable int parentNode = ${UIElement["vktree@variable keystrokes@tabs@isboxermain"].Root}

		; add category
		if ${category.Length} && ${category.NotEqual[NULL]}
		{
			if !${UIElement["vktree@variable keystrokes@tabs@isboxermain"].GetNode["${This.VKCategories.Element["${category.Escape}"]}"](exists)}
			{
				parentNode:Set[${UIElement["vktree@variable keystrokes@tabs@isboxermain"].Root.AddChild["${category.Escape}","FFFFFFFF"]}]
				This.VKCategories:Set["${category.Escape}",${parentNode}]
			}
			else
				parentNode:Set[${UIElement["vktree@variable keystrokes@tabs@isboxermain"].GetNode["${This.VKCategories.Element["${category.Escape}"]}"]}]

			; add sub-category
			if ${subCategory.Length} && ${subCategory.NotEqual[NULL]}
			{

				if !${UIElement["vktree@variable keystrokes@tabs@isboxermain"].GetNode["${This.VKSubCategories.Element["${subCategory.Escape}"]}"](exists)}
				{
					parentNode:Set[${UIElement["vktree@variable keystrokes@tabs@isboxermain"].GetNode[${parentNode}].AddChild["${subCategory.Escape}","FFFFFFFF"]}]
					This.VKSubCategories:Set["${subCategory.Escape}",${parentNode}]
				}
				else
					parentNode:Set[${UIElement["vktree@variable keystrokes@tabs@isboxermain"].GetNode["${This.VKSubCategories.Element["${subCategory.Escape}"]}"]}]
			}
		}

		; add node
		variable int newNode
		variable string display_name
		display_name:Set["${name.Escape}"]
		if ${display_name.Find[" Slot "]}
		{
			display_name:Set["${This.ProcessSlotNames["${display_name.Escape}"].Escape}"]
		}

		newNode:Set[${UIElement["vktree@variable keystrokes@tabs@isboxermain"].GetNode[${parentNode}].AddChild["${display_name.Escape}","FFFFFFFF"]}]
		UIElement["vktree@variable keystrokes@tabs@isboxermain"].GetNode[${newNode}]:SetMetadata[vk,"${name.Escape}"]:SetMetadata[description,"${description.Escape}"]
		This.VKNodes:Set["${name.Escape}",${newNode}]
	}

	member:string ProcessSlotNames(string txt)
	{
		variable int i
		variable int Slot=1
		variable string find_str

		while ${Slot}<=${ISBoxerSlots}
		{	
			find_str:Set[" Slot ${Slot}"]

			while ${i:Set[${txt.Find["${find_str.Escape}"]}]}
			{
				txt:Set["${txt.Left[${Math.Calc[${i}]}].Escape}Slot #${Slot} (${ISBoxerSlot${Slot}})${txt.Right[-${Math.Calc[(${find_str.Length}-1)+${i}]}]}"]
			}

			Slot:Inc
		}
		
		return "${txt.Escape}"
	}

	method OnVideoSourceAdded(string name)
	{
		if ${Iterator.Value.Window.HWND}!=${Display.Window.HWND} && !${UIElement["sources@video fx@tabs@isboxermain"].ItemByText["${name.Escape}"](exists)}
			UIElement["sources@video fx@tabs@isboxermain"]:AddItem["${name.Escape}"]
	}

	method OnVideoSourceRemoved(string name)
	{
		variable int id
		id:Set[${UIElement["sources@video fx@tabs@isboxermain"].ItemByText["${name.Escape}"].ID}]
		if !${id}
			return
		UIElement["sources@video fx@tabs@isboxermain"]:RemoveItem[${id}]
	}

	method OnVideoSourceSelected(string name)
	{
		UIElement[name@video fx@tabs@isboxermain]:SetText["${name.Escape}"]
		UIElement[feedWidth@video fx@tabs@isboxermain]:SetText[${Int[${VideoFeed.Source["${name.Escape}"].Width}]}]
		UIElement[feedHeight@video fx@tabs@isboxermain]:SetText[${Int[${VideoFeed.Source["${name.Escape}"].Height}]}]
	}

	method PopupText(string text, int milliseconds=500, int fadeMS=500, string color="FFFFFFFF")
	{
		;UIElement[output@console]:Echo["Popup Text: ${text}"]
		This:DebugOut["Popup Text","${text}"]
		UIElement[text@isboxerpopup]:SetText["${text}"]
		UIElement[text@isboxerpopup].Font:SetColor["${color.Escape}"]
		UIElement[isboxerpopup]:Show:SetZOrder[movetop]:ResetFade
		UIElement[isboxerpopup]:SetFadeDelay[${milliseconds}]:SetFadeDuration[${fadeMS}]:SetFadeAlpha[0]
	}

	variable bool StopupGotPressed

	method StopupText(string text, string color="FFFFFFFF")
	{
		This:DebugOut["Popup Text","${text}"]
		UIElement[text@isboxerstopup]:SetText["${text}"]
		UIElement[text@isboxerstopup].Font:SetColor["${color.Escape}"]
		UIElement[isboxerstopup]:Show:SetZOrder[movetop]:ResetFade
		UIElement[isboxerstopup]:SetFadeDelay[0]:SetFadeDuration[0]:SetFadeAlpha[1]
		StopupGotPressed:Set[FALSE]
		Event[OnButtonMove]:AttachAtom[This:Stopup_OnButtonMoved]
	}

	method Stopup_OnButtonMoved(string Button, bool Position, uint TimeStamp)
	{
		if ${StopupGotPressed}
		{
			Event[OnButtonMove]:DetachAtom[This:Stopup_OnButtonMoved]
			UIElement[isboxerstopup]:SetFadeDelay[500]:SetFadeDuration[1500]:SetFadeAlpha[0]
		}
		if ${Position}
		{
			StopupGotPressed:Set[TRUE]
		}
	}

;			UIElement[isboxermain]:ToggleVisible


	method ToggleUI()
	{
		if ${UIElement[isboxermain].Visible}
			This:HideUI
		else
			This:ShowUI				
	}

	method Echo(string Text)
	{
		echo "| ${Time} \atISBoxer\ax: ${Text.Escape}"
	}

	
	method DebugOut(string debugtype, string text)
	{
		if ${This.DebugAll}<0
			return
		if ${This.DebugAll}>0
		{
			UIElement[output@isboxerconsole]:Echo["${debugtype.Escape}: ${text.Escape}"]
			return
		}

		if ${This.DebugTypes.Element["${debugtype.Escape}"]}
			UIElement[output@isboxerconsole]:Echo["${debugtype.Escape}: ${text.Escape}"]
	}
	
	method ResetTargetCombo(string Combo, bool blocklocal, string ToSelect)
	{	
		if !${Combo.Length}
		{
			Combo:Set[targets@repeater regions@tabs@isboxermain]
			blocklocal:Set[${UIElement[block local@repeater regions@tabs@isboxermain].Checked}]
		}

		variable int comboid
		comboid:Set[${UIElement[${Combo}].ID}]
		if !${comboid}
			return

		variable settingsetref ISBoxerSettings
		LavishSettings:AddSet[ISBoxerUI]
		ISBoxerSettings:Set[${LavishSettings.FindSet["ISBoxerUI"]}]
		ISBoxerSettings:Import["ISBoxerToolkit.GeneralSettings.XML"]
		
		UIElement["${comboid}"]:ClearItems
		if ${blocklocal}
			UIElement["${comboid}"]:AddItem["all"]
			
		UIElement["${comboid}"]:AddItem["all other"]
			
		variable int Slots
		for (Slots:Set[1] ; ${Slots}<=${Sessions}+1 ; Slots:Inc)
		{
			UIElement["${comboid}"]:AddItem["${Slots}"]
		}
			
		variable iterator Iterator
		ISBoxerSettings.FindSet["Relay Groups"]:GetSettingIterator[Iterator]
		
		if ${Iterator:First(exists)}
		{		
			do
			{
				if ${blocklocal}
					UIElement["${comboid}"]:AddItem["${Iterator.Key.Escape}"]
				UIElement["${comboid}"]:AddItem["other ${Iterator.Key.Escape}"]
			}
			while ${Iterator:Next(exists)}
		}

		ISBoxerSettings:Remove		

		UIElement[${comboid}]:SelectItem["${UIElement[${comboid}].ItemByText["${ToSelect.Escape}"].ID}"]
	}
	
	method ResetSourcesCombo(string combo)
	{
		if !${combo.Length} || ${combo.Equal[NULL]}
			combo:Set["sources@video fx@tabs@isboxermain"]

		UIElement["${combo}"]:ClearItems

		variable iterator Iterator
		VideoFeed:GetSourceIterator[Iterator]
		if ${Iterator:First(exists)}
		{
			do
			{
				if ${Iterator.Value.Window.HWND}!=${Display.Window.HWND} && !${UIElement["${combo}"].ItemByText["${Iterator.Key.Escape}"](exists)}
					UIElement["${combo}"]:AddItem["${Iterator.Key.Escape}"]
			}
			while ${Iterator:Next(exists)}
		}
	}

	method ResetKeyMapsCombo(string combo)
	{
		if !${combo.Length} || ${combo.Equal[NULL]}
			combo:Set["key maps@repeater regions@tabs@isboxermain"]

		variable settingsetref ListRoot
		ListRoot:Set[${LavishSettings.FindSet["KeyMapper"]}]
		variable iterator Iterator
		ListRoot.FindSet["key maps"]:GetSetIterator[Iterator]
		
		UIElement["${combo}"]:ClearItems
		UIElement["${combo}"]:AddItem[""]
		
		if ${Iterator:First(exists)}
		{		
			do
			{
				UIElement["${combo}"]:AddItem["${Iterator.Key.Escape}"]
			}
			while ${Iterator:Next(exists)}
		}		
	}
	
	method ResetMappedKeysCombo(string keymapscombo, string mappedkeyscombo)
	{
		if !${keymapscombo.Length} || ${keymapscombo.Equal[NULL]}
		{
			keymapscombo:Set["key maps@repeater regions@tabs@isboxermain"]
			mappedkeyscombo:Set["mapped keys@repeater regions@tabs@isboxermain"]
		}
		
		variable settingsetref ListRoot
		ListRoot:Set[${LavishSettings.FindSet["KeyMapper"]}]
		variable iterator Iterator
		ListRoot.FindSet["key maps"].FindSet["${UIElement["${keymapscombo}"].SelectedItem.Text.Escape}"]:GetSetIterator[Iterator]
		
		UIElement["${mappedkeyscombo}"]:ClearItems
		UIElement["${mappedkeyscombo}"]:AddItem[""]
		
		if ${Iterator:First(exists)}
		{		
			do
			{
				UIElement["${mappedkeyscombo}"]:AddItem["${Iterator.Key.Escape}"]
			}
			while ${Iterator:Next(exists)}
		}		
	}

	method ShowUI()
	{
		UIElement[isboxermain]:Show		
		TwitchMan:ShowUI
		UIElement[obsremote]:Show
		This:PopupText[Showing UI]

		This:ResetTargetCombo
;		This:ResetTargetCombo[targets@editor@isboxervideofeededitor,1]
		This:ResetSourcesCombo
		This:ResetKeyMapsCombo
		This:ResetMappedKeysCombo
		This:ResetKeyMapsCombo[key maps@editor@isboxervideofeededitor]
		This:ResetMappedKeysCombo[key maps@editor@isboxervideofeededitor,mapped keys@editor@isboxervideofeededitor]
		This:ForEachRegion[RegionToWindow]
		This:ForEachClickBar[ShowTitleBar]
		This:ForEachVideoFeed[Show]
		This:ForEachMenu[ShowTitleBar]
		if ${LavishScript.Executable.Find[Terraria.exe]} && ${InnerSpace.Build}>=5540
		{
			Mouse:ShowCursor
		}
	}

	method ForEachMenu(string method,string passthru)
	{
		variable int id
		variable int nextid
		id:Set[${UIElement[screen].Children.ID}]
		while ${id}
		{
			nextid:Set[${UIElement[${id}].Next.ID}]
			if ${UIElement[${id}].GetMetadata[menuman](exists)}
			{
				noop ${This:${method}[${id},"${passthru.Escape}"]}
			}
	
			id:Set[${nextid}]		
		}		
	}
	
	method ForEachClickBar(string method,string passthru)
	{
		variable int id
		variable int nextid
		id:Set[${UIElement[screen].Children.ID}]
		while ${id}
		{
			nextid:Set[${UIElement[${id}].Next.ID}]
			if ${UIElement[${id}].GetMetadata[isboxer](exists)} && ${UIElement[${id}].GetMetadata[clickbar](exists)}
			{
				noop ${This:${method}[${id},"${passthru.Escape}"]}
			}
	
			id:Set[${nextid}]		
		}		
	}

	method ForEachRegion(string method,string passthru)
	{
		variable int id
		variable int nextid
		id:Set[${UIElement[screen].Children.ID}]
		while ${id}
		{
			nextid:Set[${UIElement[${id}].Next.ID}]
			if ${UIElement[${id}].GetMetadata[isboxer](exists)} && ${UIElement[${id}].GetMetadata[region](exists)}
			{
				noop ${This:${method}[${id},"${passthru.Escape}"]}
			}
	
			id:Set[${nextid}]		
		}			
	}

	method ForEachVideoFeed(string method,string passthru)
	{
		variable int id
		variable int nextid
		id:Set[${UIElement[screen].Children.ID}]
		while ${id}
		{
			nextid:Set[${UIElement[${id}].Next.ID}]
			if ${UIElement[${id}].GetMetadata[isboxer](exists)} && (${UIElement[${id}].GetMetadata[feedsource](exists)} || ${UIElement[${id}].GetMetadata[feedoutput](exists)})
			{
				noop ${This:${method}[${id},"${passthru.Escape}"]}
			}
	
			id:Set[${nextid}]		
		}			
	}

	method ForEachVideoFeedOutput(string method,string passthru)
	{
		variable int id
		variable int nextid
		id:Set[${UIElement[screen].Children.ID}]
		while ${id}
		{
			nextid:Set[${UIElement[${id}].Next.ID}]
			if ${UIElement[${id}].GetMetadata[isboxer](exists)} && ${UIElement[${id}].GetMetadata[feedoutput](exists)}
			{
				noop ${This:${method}[${id},"${passthru.Escape}"]}
			}
	
			id:Set[${nextid}]		
		}			
	}

	method DuplicateVideoFeedOutput(int elementid)
	{
		variable int frameid
		frameid:Set[${UIElement[${elementid}].FindChild[videobox].ID}]
		if !${frameid}
			return
		if !${UIElement[${elementid}].GetMetadata[feedoutput](exists)}
			return

		relay "all other local" "ISBoxerUI:AddVideoFeed[0,\"${UIElement[${elementid}].GetMetadata[feedoutput].Escape}\",${This.AbsoluteX[${frameid}]},${This.AbsoluteY[${frameid}]},${UIElement[${frameid}].Width},${UIElement[${frameid}].Height},\"${UIElement[${elementid}].GetMetadata[opacity].Escape}\",\"${UIElement[${elementid}].GetMetadata[bordercolor].Escape}\",\"${UIElement[${elementid}].GetMetadata[use mouse].Escape}\",\"${UIElement[${elementid}].GetMetadata[use keyboard].Escape}\",\"${UIElement[${elementid}].GetMetadata[key map].Escape}\",\"${UIElement[${elementid}].GetMetadata[mapped key].Escape}\",1,\"${UIElement[${elementid}].GetMetadata[use focus hotkey].Escape}\"]"
	}

	member:string GetDuplicationName(string source_name)
	{
		variable int pos=${source_name.Find["${ISBoxerSlot}"]}
		if !${pos}
			return
		
		return "${source_name.Left[${Math.Calc[${pos}-1]}]}\${ISBoxerSlot}${source_name.Right[-${Math.Calc[${pos}+${String[${ISBoxerSlot}].Length}-1]}]}"
	}

	method DuplicateVideoFeedSource(int elementid)
	{
		variable int frameid
		frameid:Set[${UIElement[${elementid}].FindChild[videobox].ID}]
		if !${frameid}
			return
		if !${UIElement[${elementid}].GetMetadata[feedsource](exists)}
			return

		variable string source_name
		source_name:Set["${This.GetDuplicationName["${UIElement[${elementid}].GetMetadata[feedsource].Escape}"].Escape}"]
		if ${source_name.Length}
			relay "all other local" "ISBoxerUI:AddVideoFeed[1,\"${source_name.Escape}\",${This.AbsoluteX[${frameid}]},${This.AbsoluteY[${frameid}]},${UIElement[${frameid}].Width},${UIElement[${frameid}].Height}]"
		else
		{
			This:PopupText["Please use the current Slot number -- that's ${ISBoxerSlot} -- in the source name, for safe Syncing!"]
		}
	}
	
	method Duplicate(int elementid)
	{
		if ${UIElement[${elementid}].Type.Equal[frame]}
		{
			relay "all other" "ISBoxerUI:AddRepeaterRegion[\"${UIElement[${elementid}].GetMetadata[target].Escape}\",\"${UIElement[${elementid}].GetMetadata[block local].Escape}\",${UIElement[${elementid}].X},${UIElement[${elementid}].Y},${UIElement[${elementid}].Width},${UIElement[${elementid}].Height},\"${UIElement[${elementid}].GetMetadata[key map].Escape}\",\"${UIElement[${elementid}].GetMetadata[mapped key].Escape}\",\"${UIElement[${elementid}].GetMetadata[Region Name].Escape}\"]"
;			echo relay "all other" "ISBoxerUI:AddRepeaterRegion[\"${UIElement[${elementid}].GetMetadata[target].Escape}\",${UIElement[${elementid}].X},${UIElement[${elementid}].Y},${UIElement[${elementid}].Width},${UIElement[${elementid}].Height}]"
		}
		if ${UIElement[${elementid}].Type.Equal[window]}
		{
			variable int frameid
			frameid:Set[${UIElement[${elementid}].FindChild[clickbox].ID}]
			if !${frameid}
				return
				
				
			relay "all other" "ISBoxerUI:AddRepeaterRegion[\"${UIElement[${elementid}].GetMetadata[target].Escape}\",\"${UIElement[${elementid}].GetMetadata[block local].Escape}\",${This.AbsoluteX[${frameid}]},${This.AbsoluteY[${frameid}]},${UIElement[${frameid}].Width},${UIElement[${frameid}].Height},\"${UIElement[${elementid}].GetMetadata[key map].Escape}\",\"${UIElement[${elementid}].GetMetadata[mapped key].Escape}\",\"${UIElement[${elementid}].GetMetadata[Region Name].Escape}\"]"
;			echo relay "all other" "ISBoxerUI:AddRepeaterRegion[\"${UIElement[${elementid}].GetMetadata[target].Escape}\",${This.AbsoluteX[${frameid}]},${This.AbsoluteY[${frameid}]},${UIElement[${frameid}].Width},${UIElement[${frameid}].Height}]"
		}	
	}

	method SyncVideoFeedOutputs()
	{
		relay "all other" ISBoxerUI:ClearVideoFeedOutputs
		This:ForEachVideoFeedOutput[DuplicateVideoFeedOutput]
	}
	
	method SyncRepeaterRegions()
	{
		relay "all other" ISBoxerUI:ClearRepeaterRegions
		This:ForEachRegion[Duplicate]
	}

	method HideUI()
	{
		UIElement[isboxermain]:Hide		
		This:PopupText[Hiding UI]

		UIElement[isboxervideofeededitor]:Hide

		This:ForEachRegion[WindowToRegion]
		This:ForEachClickBar[HideTitleBar]
		This:ForEachMenu[HideTitleBar]
		This:ForEachVideoFeed[Hide]
		if ${LavishScript.Executable.Find[Terraria.exe]} && ${InnerSpace.Build}>=5540
		{
			Mouse:HideCursor
		}
	}

	method AddRepeaterRegion(string target, bool blocklocal, int X, int Y, int Width, int Height, string keymapname, string mappedkeyname, string region_name)
	{			
;		echo AddRepeaterRegion mappedkeyname=${mappedkeyname} region_name=${region_name.Escape}
		variable int regionid
		regionid:Set[${nextregionid}]
		nextregionid:Inc
		
		variable string name
		name:Set["isboxer_repeaterregion_${regionid}"]

;		echo using name ${name}
		ui -load -skin isboxerui isboxerui isboxerrepeaterregion "${name}"

		variable int ID
		ID:Set[${UIElement["${name}"].ID}]

		if ${X}
			UIElement[${ID}]:SetX[${X}]
		if ${Y}
			UIElement[${ID}]:SetY[${Y}]
		if ${Width}
			UIElement[${ID}]:SetWidth[${Width}]
		if ${Height}
			UIElement[${ID}]:SetHeight[${Height}]
		if ${keymapname.Equal[NULL]}
			keymapname:Set[""]
		if ${mappedkeyname.Equal[NULL]}
			mappedkeyname:Set[""]
			
;		echo keymapname=${keymapname}, mappedkeyname=${mappedkeyname}
			
		UIElement[${ID}]:Show:SetMetadata[isboxer,1]:SetMetadata[region,${regionid}]:SetMetadata[target,"${target.Escape}"]:SetMetadata[block local,${blocklocal}]:SetMetadata[key map,"${keymapname.Escape}"]:SetMetadata[mapped key,"${mappedkeyname.Escape}"]
		if ${region_name.Length}
			UIElement[${ID}]:SetMetadata[Region Name,"${region_name.Escape}"]
		UIElement[${ID}]:SetLeftClickThru[1]:SetRightClickThru[1]
	
		if ${UIElement[isboxermain].Visible}
		{		
			This:RegionToWindow[${ID}]
		}
	}

	method ClearVideoFeedOutputs()
	{
		This:ForEachVideoFeedOutput[PermanentlyRemoveVideoFeedByID]
	}
	
	method ClearVideoFeeds()
	{
		This:ForEachVideoFeed[PermanentlyRemoveVideoFeedByID]
	}
	
	method ClearRepeaterRegions()
	{
		variable int id
		variable int nextid
		id:Set[${UIElement[screen].Children.ID}]
		while ${id}
		{
			nextid:Set[${UIElement[${id}].Next.ID}]
			if ${UIElement[${id}].GetMetadata[isboxer](exists)} && ${UIElement[${id}].GetMetadata[region](exists)}
			{
				MouseRepeater:ExitRegion[${id}]
				UIElement[${id}]:Destroy
			}

			id:Set[${nextid}]		
		}	
	}

	method HideClickBars()
	{
		This:ForEachClickBar[Hide]
	}
	method ShowClickBars()
	{
		This:ForEachClickBar[Show]
	}
	
	method HideTitleBars()
	{
		This:ForEachClickBar[HideTitleBar]
		This:ForEachMenu[HideTitleBar]
	}
	
	method ShowTitleBars()
	{
		This:ForEachClickBar[ShowTitleBar]
		This:ForEachMenu[ShowTitleBar]
	}
	
	method ResetClickBars()
	{		
		This:ForEachClickBar[ResetClickBar]
	}


	method RepopulateClickBarSetBox(string ToSelect)
	{		
		UIElement[sets@click bars@tabs@isboxermain]:ClearItems

		variable iterator Iterator
		ClickBarSettings:GetSetIterator[Iterator]
		
		if !${Iterator:First(exists)}
		{
			UIElement[sets@click bars@tabs@isboxermain]:AddItem[Auto]:SelectItem[1]
			return
		}
		
		if !${ClickBarSettings.FindSet["Auto"]}
			UIElement[sets@click bars@tabs@isboxermain]:AddItem[Auto]

		do
		{
			UIElement[sets@click bars@tabs@isboxermain]:AddItem["${Iterator.Key.Escape}"]
		}
		while ${Iterator:Next(exists)}
		
		UIElement[sets@click bars@tabs@isboxermain]:SelectItem["${UIElement[sets@click bars@tabs@isboxermain].ItemByText["${ToSelect.Escape}"].ID}"]
	}


	member TrimFilename(string Filename)
	{
		if ${Filename.Left[8].Equals["ISBoxer."]}
		{
			Filename:Set["${Filename.Right[-8].Escape}"]

			if ${Filename.Left[6].Equals["Menus."]}
			{
				Filename:Set["${Filename.Right[-6].Escape}"]
			}
			elseif ${Filename.Left[11].Equals["VideoFeeds."]}
			{
				Filename:Set["${Filename.Right[-11].Escape}"]
			}
			elseif ${Filename.Left[10].Equals["ClickBars."]}
			{
				Filename:Set["${Filename.Right[-10].Escape}"]
			}
			elseif ${Filename.Left[8].Equals["Regions."]}
			{
				Filename:Set["${Filename.Right[-8].Escape}"]
			}
		}
		if ${Filename.Right[4].Equals[".XML"]}
		{
			Filename:Set["${Filename.Left[-4].Escape}"]
		}
		return ${Filename}
	}

	method RepopulateWithFileList(int elementid, string ToSelect, string filefilter)
	{
		UIElement[${elementid}]:ClearItems

		variable filelist FileList
		FileList:GetFiles["${Script.CurrentDirectory}/${filefilter.Escape}"]
		; echo FileList:GetFiles["${Script.CurrentDirectory}/${filefilter.Escape}"]=${FileList.Files}

		if !${FileList.Files}
		{
			return
		}

		variable int i=1
		for (${i} <= ${FileList.Files} ; i:Inc)
		{			
			; echo UIElement[${elementid}]:AddItem["${This.TrimFilename["${FileList.File[${i}].Filename.Escape}"]}"]
			UIElement[${elementid}]:AddItem["${This.TrimFilename["${FileList.File[${i}].Filename.Escape}"]}"]
		}
		
		UIElement[${elementid}]:SelectItem["${UIElement[${elementid}].ItemByText["${This.TrimFilename["${ToSelect.Escape}"]}"].ID}"]
	}

	method OnImportTypeSelected(int importType)
	{
		switch ${importType}
		{
			case 1
				This:RepopulateWithFileList["${UIElement[file@import@tabs@isboxermain].ID}","","ISBoxer.Regions.*.XML"]
				break
			case 2
				This:RepopulateWithFileList["${UIElement[file@import@tabs@isboxermain].ID}","","ISBoxer.VideoFeeds.*.XML"]
				break
			case 3
				This:RepopulateWithFileList["${UIElement[file@import@tabs@isboxermain].ID}","","ISBoxer.Menus.*.XML"]
				break
			case 4
				This:RepopulateWithFileList["${UIElement[file@import@tabs@isboxermain].ID}","","ISBoxer.ClickBars.*.XML"]
				break
		}
	}

	method OnImportClicked()
	{
;		echo importtype=${UIElement[importtype@import@tabs@isboxermain].SelectedItem.Value}
		switch ${UIElement[importtype@import@tabs@isboxermain].SelectedItem.Value}
		{
			case 1
				; ${UIElement[file@import@tabs@isboxermain].SelectedItem.Text}				
				This:LoadRepeaterRegions["${UIElement[file@import@tabs@isboxermain].SelectedItem.Text}"]
				break
			case 2
				This:LoadVideoFeeds["${UIElement[file@import@tabs@isboxermain].SelectedItem.Text}"]
				break
			case 3
				This:LoadMenus["${UIElement[file@import@tabs@isboxermain].SelectedItem.Text}"]
;				echo This:LoadMenus["${UIElement[file@import@tabs@isboxermain].SelectedItem.Text}"]
				menuman -restartgui
				break
			case 4
				This:LoadClickBars["${UIElement[file@import@tabs@isboxermain].SelectedItem.Text}"]
				break
		}


	}

	method RemoveClickBars(string ClickBarProfile)
	{
		LavishSettings:AddSet[ClickBars]
		
		ClickBarSettings:Set[${LavishSettings.FindSet["ClickBars"]}]
		ClickBarSettings:Import["ISBoxer.ClickBars.${ISBoxerCharacterSet.Escape}.${ISBoxerCharacter.Escape}.XML"]
		
		if ${ClickBarProfile.Equal[Auto]}
			ClickBarSettings.FindSet["${ClickBarProfile.Escape}"]:Clear
		else
			ClickBarSettings.FindSet["${ClickBarProfile.Escape}"]:Remove
				
		This:RepopulateClickBarSetBox["Auto"]
		if !${ClickBarSettings:Export["ISBoxer.ClickBars.${ISBoxerCharacterSet.Escape}.${ISBoxerCharacter.Escape}.XML"](exists)}
		{
			This:PopupText["Failed to save Click Bar settings to file ISBoxer.ClickBars.${ISBoxerCharacterSet.Escape}.${ISBoxerCharacter.Escape}.XML"]
		}

	}

 	method StoreClickBars(string CharacterSet, string Character, string ClickBarProfile)
	{
		LavishSettings:AddSet[ClickBars]
		
		ClickBarSettings:Set[${LavishSettings.FindSet["ClickBars"]}]
		ClickBarSettings:Import["ISBoxer.ClickBars.${CharacterSet.Escape}.${Character.Escape}.XML"]
		
		if !${ClickBarProfile.Length}
			ClickBarProfile:Set["Auto"]

		ClickBarSettings:AddSet["${ClickBarProfile.Escape}"]
		ClickBarSettings.FindSet["${ClickBarProfile.Escape}"]:Clear
		
		This:ForEachClickBar["ClickBarToSetting","${ClickBarProfile.Escape}"]
		if !${ClickBarSettings:Export["ISBoxer.ClickBars.${CharacterSet.Escape}.${Character.Escape}.XML"](exists)}
		{
			This:PopupText["Failed to save Click Bar settings to file ISBoxer.ClickBars.${CharacterSet.Escape}.${Character.Escape}.XML"]
		}
		
		This:RepopulateClickBarSetBox["${ClickBarProfile.Escape}"]
	}
	
	method LoadClickBars(string FilenamePart, string ClickBarProfile)
	{
		LavishSettings:AddSet[ClickBars]
		ClickBarSettings:Set[${LavishSettings.FindSet["ClickBars"]}]
		ClickBarSettings:Import["ISBoxer.ClickBars.${FilenamePart.Escape}.XML"]
		
		variable iterator Iterator
		if !${ClickBarProfile.Length}
			ClickBarProfile:Set["Auto"]
			
		This:RepopulateClickBarSetBox["${ClickBarProfile.Escape}"]
		UIElement[save as@click bars@tabs@isboxermain]:SetText["${ClickBarProfile.Escape}"]
		ClickBarSettings.FindSet["${ClickBarProfile.Escape}"]:GetSettingIterator[Iterator]
		if !${Iterator:First(exists)}
			return
		This:HideClickBars
		do
		{
			UIElement["${Iterator.Key}"]:SetX[${Iterator.Value.FindAttribute["X"].Int}]:SetY[${Iterator.Value.FindAttribute["Y"].Int}]

			; if no Visible attribute, assume it's showing. otherwise, only if Visible is TRUE
			if !${Iterator.Value.FindAttribute[Visible](exists)} || ${Bool["${Iterator.Value.FindAttribute[Visible].String.Escape}"]}
			{
				UIElement["${Iterator.Key}"]:Show
			}
			else
			{
				UIElement["${Iterator.Key}"]:Hide
			}
		}
		while ${Iterator:Next(exists)}		
	}
	
	method LoadMyClickBars(string ClickBarProfile)
	{
		This:LoadClickBars["${ISBoxerCharacterSet.Escape}.${ISBoxerCharacter.Escape}","${ClickBarProfile.Escape}"]
	}

	method LoadMyMenus()
	{
		;echo TODO: LoadMyMenus["${MenuProfile.Escape}"]
		This:LoadMenus["${ISBoxerCharacterSet.Escape}.${ISBoxerCharacter.Escape}"]
	}
	
	method ClickBarToSetting(int elementid,string ClickBarProfile)
	{
		ClickBarSettings.FindSet["${ClickBarProfile.Escape}"]:AddSetting["${UIElement[${elementid}].Name.Escape}",""]
		ClickBarSettings.FindSet["${ClickBarProfile.Escape}"].FindSetting["${UIElement[${elementid}].Name.Escape}"]:AddAttribute[X,${UIElement[${elementid}].X}]:AddAttribute[Y,${UIElement[${elementid}].Y}]:AddAttribute[Visible,${UIElement[${elementid}].Visible}]
	}

	method VideoFeedToSetting(int elementid,string VideoFeedProfile)
	{
		variable int frameid
		frameid:Set[${UIElement[${elementid}].FindChild[videobox].ID}]
		if !${frameid}
			return

		if ${UIElement[${elementid}].GetMetadata[feedsource].Length}
		{
			VideoFeedSettings.FindSet["${VideoFeedProfile.Escape}"]:AddSetting["element${elementid}","feedsource"]
			VideoFeedSettings.FindSet["${VideoFeedProfile.Escape}"].FindSetting["element${elementid}"]:AddAttribute["feedsource","${UIElement[${elementid}].GetMetadata[feedsource].Escape}"]:AddAttribute["X","${This.AbsoluteX[${frameid}]}"]:AddAttribute["Y","${This.AbsoluteY[${frameid}]}"]:AddAttribute["Width","${UIElement[${frameid}].Width}"]:AddAttribute["Height","${UIElement[${frameid}].Height}"]
		}
		elseif ${UIElement[${elementid}].GetMetadata[feedoutput].Length}
		{
			VideoFeedSettings.FindSet["${VideoFeedProfile.Escape}"]:AddSetting["element${elementid}","feedoutput"]
			VideoFeedSettings.FindSet["${VideoFeedProfile.Escape}"].FindSetting["element${elementid}"]:AddAttribute["feedoutput","${UIElement[${elementid}].GetMetadata[feedoutput].Escape}"]:AddAttribute["X","${This.AbsoluteX[${frameid}]}"]:AddAttribute["Y","${This.AbsoluteY[${frameid}]}"]:AddAttribute["Width","${UIElement[${frameid}].Width}"]:AddAttribute["Height","${UIElement[${frameid}].Height}"]:AddAttribute["opacity","${UIElement[${elementid}].GetMetadata[opacity].Escape}"]:AddAttribute["bordercolor","${UIElement[${elementid}].GetMetadata[bordercolor].Escape}"]:AddAttribute["keymap","${UIElement[${elementid}].GetMetadata[key map].Escape}"]:AddAttribute["mappedkey","${UIElement[${elementid}].GetMetadata[mapped key].Escape}"]
		}
	}

	
	/*
	method SaveClickBarPositions()
	{
		
		LavishSettings:AddSet[ClickBars]
		
		ClickBarSettings:Set[${LavishSettings.FindSet["ClickBars"]}]
		
		ClickBarSettings:Import["ISBoxer.ClickBarPositions.XML"]
		PositionsLoaded:Set[1]
		This:ForEachClickBar["ClickBarToSetting"]			

		ClickBarSettings:Export["ISBoxer.ClickBarPositions.XML"]
		
	}
	*/

	method SyncMenus()
	{
		This:ForEachMenu[SyncMenu]
	}

	method SyncMenu(int elementid)
	{
		if ${UIElement[${elementid}].Visible}
			relay all "UIElement[\"${UIElement[${elementid}].Name.Escape}\"]:SetX[${UIElement[${elementid}].X}]:SetY[${UIElement[${elementid}].Y}]"
	}

	method SaveMenus()
	{
		variable settingsetref positionsSet
		positionsSet:Set["${LavishSettings.FindSet["MenuMan"].FindSet["Positions"]}"]

		if !${positionsSet:Export["ISBoxer.Menus.${ISBoxerCharacterSet.Escape}.${ISBoxerCharacter.Escape}.XML"](exists)}
		{
			This:PopupText["Failed to save Menu settings to file ISBoxer.Menus.${ISBoxerCharacterSet.Escape}.${ISBoxerCharacter.Escape}.XML"]
		}			
	}

	method LoadMenus(string FilenamePart)
	{
		variable settingsetref mainSet
		LavishSettings:AddSet["MenuMan"]
		mainSet:Set["${LavishSettings.FindSet["MenuMan"]}"]

		variable settingsetref positionsSet
		mainSet:AddSet["Positions"]
		positionsSet:Set["${mainSet.FindSet["Positions"]}"]

		positionsSet:Import["ISBoxer.Menus.${FilenamePart.Escape}.XML"]
	}


	method SyncClickBars()
	{
		This:ForEachClickBar[SyncClickBar]
	}
	
	method SyncClickBar(int elementid)
	{
		relay all "UIElement[\"${UIElement[${elementid}].Name.Escape}\"]:SetX[${UIElement[${elementid}].X}]:SetY[${UIElement[${elementid}].Y}]"
	}
	
	method ResetClickBar(int elementid)
	{
		UIElement[${elementid}]:Reset
	}
	
	method HideTitleBar(int elementid)
	{
		UIElement[titlebar@${UIElement[${elementid}]}]:Hide
		UIElement[${elementid}]:SetLeftClickThru[1]:SetRightClickThru[1]
	}
	
	method ShowTitleBar(int elementid)
	{
		UIElement[titlebar@${UIElement[${elementid}]}]:Show
		UIElement[${elementid}]:SetLeftClickThru[0]:SetRightClickThru[0]
	}

	method Hide(int elementid)
	{
		UIElement[${elementid}]:Hide
	}
	
	method Show(int elementid)
	{
		UIElement[${elementid}]:Show
	}
	
	member ResolveTarget(string name)
	{
		name:Set["${KeyMapper.ProcessVariables["${name.Escape}"].Escape}"]
		if !${name.Length} || ${name.Equal[self]} || ${name.Equal[NULL]}
			return
		switch ${name.Left[1]}
		{
		case +
			return is${Math.Calc[(${Slot}+0${name.Escape})%${ISBoxerSlots}].Int}
		case -
			return is${Math.Calc[(${ISBoxerSlots}+${Slot}+0${name.Escape})%${ISBoxerSlots}].Int}
		}
		if ${name.Equal[${Int["${name.Escape}"]}]}
			return "is${name.Escape}"

		return "${name.Escape}"
	}


	method EnterClickBarButton(int elementid)
	{
		variable string target
		target:Set["${This.ResolveTarget["${UIElement[${elementid}].GetMetadata[mouseover target].Escape}"]}"]
		if ${target.Length}
			relay "${target.Escape}" keymapper -holdmappedkey "${UIElement[${elementid}].GetMetadata[key map].Escape}" "${UIElement[${elementid}].GetMetadata[mapped key].Escape}"
		else
			keymapper -holdmappedkey "${UIElement[${elementid}].GetMetadata[key map].Escape}" "${UIElement[${elementid}].GetMetadata[mapped key].Escape}"
		InButton:Set[${elementid}]
	}
	
	method ExitClickBarButton(int elementid)
	{
		if !${InButton}
			return
		variable string target
		target:Set["${This.ResolveTarget["${UIElement[${elementid}].GetMetadata[mouseover target].Escape}"]}"]
		if ${target.Length}
			relay "${target.Escape}" keymapper -releasemappedkey "${UIElement[${elementid}].GetMetadata[key map].Escape}" "${UIElement[${elementid}].GetMetadata[mapped key].Escape}"
		else
			keymapper -releasemappedkey "${UIElement[${elementid}].GetMetadata[key map].Escape}" "${UIElement[${elementid}].GetMetadata[mapped key].Escape}"

		InButton:Set[0]
	}
	
	method ExitCurrentClickBarButton()
	{
		This:ExitClickBarButton[${InButton}]
	}
	
	member GetRegionInfo(int elementid)
	{
		if ${UIElement[${elementid}].Type.Equal[frame]}
		{
			return "\"${UIElement[${elementid}].GetMetadata[Region Name].Escape}\",${UIElement[${elementid}].X},${UIElement[${elementid}].Y},${UIElement[${elementid}].Width},${UIElement[${elementid}].Height}"
		}
		if ${UIElement[${elementid}].Type.Equal[window]}
		{
			variable int frameid
			frameid:Set[${UIElement[${elementid}].FindChild[clickbox].ID}]
			if ${frameid}
				return "\"${UIElement[${elementid}].GetMetadata[Region Name].Escape}\",${This.AbsoluteX[${frameid}]},${This.AbsoluteY[${frameid}]},${UIElement[${frameid}].Width},${UIElement[${frameid}].Height}"

			frameid:Set[${UIElement[${elementid}].FindChild[videobox].ID}]
			if ${frameid}
			{
				return "\"${UIElement[${elementid}].GetMetadata[feedoutput].Escape}\",${This.AbsoluteX[${frameid}]},${This.AbsoluteY[${frameid}]},${UIElement[${frameid}].Width},${UIElement[${frameid}].Height}"
			}
		}
	}

	member:int FindRegion(string name)
	{
		variable int id
		variable int nextid

		variable int notexactID

		id:Set[${UIElement[screen].Children.ID}]
		while ${id}
		{
			nextid:Set[${UIElement[${id}].Next.ID}]
			if ${UIElement[${id}].GetMetadata[isboxer](exists)}
			{
				if (${UIElement[${id}].GetMetadata[Region Name].Equal["${name.Escape}"]} || ${UIElement[${id}].GetMetadata[feedsource].Equal["${name.Escape}"]})
				{
					return ${id}
				}
				
				if (${UIElement[${id}].GetMetadata[Region Name].Equal["${name.Escape}${ISBoxerSlot}"]} || ${UIElement[${id}].GetMetadata[feedsource].Equal["${name.Escape}${ISBoxerSlot}"]})
				{
					notexactID:Set[${id}]
				}
			}
	
			id:Set[${nextid}]		
		}
		return ${notexactID}
	}

	member Transform(int x, int y, string region_name, int region_x, int region_y, int region_width, int region_height)
	{
		variable int elementid
		variable float regionxFactor
		variable float regionyFactor

		if !${region_name.Length}
		{
			return "${x},${y}"
		}

		if ${region_name.Equal["${Session.Escape}"]}
		{
			x:Dec[${region_x}]
			y:Dec[${region_y}]

			regionxFactor:Set[${Display.Width}/${region_width}]
			regionyFactor:Set[${Display.Height}/${region_height}]	

			x:Set[(${x}*${regionxFactor})]
			y:Set[(${y}*${regionyFactor})]
			return "${x},${y}"
			
		}

		elementid:Set[${This.FindRegion["${region_name.Escape}"]}]
		if !${elementid}
		{
			if ${VideoFeed.Source["${region_name.Escape}"](exists)}
			{
				x:Dec[${region_x}]
				y:Dec[${region_y}]

				regionxFactor:Set[${VideoFeed.Source["${region_name.Escape}"].Width}/${region_width}]
				regionyFactor:Set[${VideoFeed.Source["${region_name.Escape}"].Height}/${region_height}]	

				x:Set[(${x}*${regionxFactor})+${VideoFeed.Source["${region_name.Escape}"].X}]
				y:Set[(${y}*${regionyFactor})+${VideoFeed.Source["${region_name.Escape}"].Y}]
				return "${x},${y}"

			}

			x:Dec[${region_x}]
			y:Dec[${region_y}]

			regionxFactor:Set[${Display.Width}/${region_width}]
			regionyFactor:Set[${Display.Height}/${region_height}]	

			x:Set[(${x}*${regionxFactor})]
			y:Set[(${y}*${regionyFactor})]
			return "${x},${y}"
		}

		x:Dec[${region_x}]
		y:Dec[${region_y}]


		if ${UIElement[${elementid}].Type.Equal[frame]}
		{		
			regionxFactor:Set[${UIElement[${elementid}].Width}/${region_width}]
			regionyFactor:Set[${UIElement[${elementid}].Height}/${region_height}]	

			x:Set[(${x}*${regionxFactor})+${UIElement[${elementid}].X}]
			y:Set[(${y}*${regionyFactor})+${UIElement[${elementid}].Y}]
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
			regionxFactor:Set[${UIElement[${frameid}].Width}/${region_width}]
			regionyFactor:Set[${UIElement[${frameid}].Height}/${region_height}]	

			x:Set[(${x}*${regionxFactor})+${This.AbsoluteX[${frameid}]}]
			y:Set[(${y}*${regionyFactor})+${This.AbsoluteY[${frameid}]}]
			return "${x},${y}"
		}

		return "${x},${y}"
	}


	method RegionToSetting(int elementid,string RegionProfile)
	{
		if ${UIElement[${elementid}].Type.Equal[frame]}
		{
			ISBoxerUISettings.FindSet["${RegionProfile.Escape}"]:AddSetting["element${elementid}","${UIElement[${elementid}].GetMetadata[target].Escape}"]
			ISBoxerUISettings.FindSet["${RegionProfile.Escape}"].FindSetting["element${elementid}"]:AddAttribute["BlockLocal","${UIElement[${elementid}].GetMetadata[block local].Escape}"]:AddAttribute["X","${UIElement[${elementid}].X}"]:AddAttribute["Y","${UIElement[${elementid}].Y}"]:AddAttribute["Width","${UIElement[${elementid}].Width}"]:AddAttribute["Height","${UIElement[${elementid}].Height}"]:AddAttribute["keymap","${UIElement[${elementid}].GetMetadata[key map].Escape}"]:AddAttribute["mappedkey","${UIElement[${elementid}].GetMetadata[mapped key].Escape}"]:AddAttribute["regionname","${UIElement[${elementid}].GetMetadata[Region Name].Escape}"]
		}
		if ${UIElement[${elementid}].Type.Equal[window]}
		{
			variable int frameid
			frameid:Set[${UIElement[${elementid}].FindChild[clickbox].ID}]
			if !${frameid}
				return

			ISBoxerUISettings.FindSet["${RegionProfile.Escape}"]:AddSetting["element${elementid}","${UIElement[${elementid}].GetMetadata[target].Escape}"]
			ISBoxerUISettings.FindSet["${RegionProfile.Escape}"].FindSetting["element${elementid}"]:AddAttribute["BlockLocal","${UIElement[${elementid}].GetMetadata[block local].Escape}"]:AddAttribute["X","${This.AbsoluteX[${frameid}]}"]:AddAttribute["Y","${This.AbsoluteY[${frameid}]}"]:AddAttribute["Width","${UIElement[${frameid}].Width}"]:AddAttribute["Height","${UIElement[${frameid}].Height}"]:AddAttribute["keymap","${UIElement[${elementid}].GetMetadata[key map].Escape}"]:AddAttribute["mappedkey","${UIElement[${elementid}].GetMetadata[mapped key].Escape}"]:AddAttribute["regionname","${UIElement[${elementid}].GetMetadata[Region Name].Escape}"]
		}
	}

	method RepopulateRegionSetBox(string ToSelect)
	{
		
		UIElement[sets@repeater regions@tabs@isboxermain]:ClearItems
;		UIElement[sets@repeater regions@tabs@isboxermain]:AddItem["all other"]

		variable iterator Iterator
		ISBoxerUISettings:GetSetIterator[Iterator]
		
		if !${Iterator:First(exists)}
		{
			UIElement[sets@repeater regions@tabs@isboxermain]:AddItem[Auto]:SelectItem[1]
			return
		}
		
		if !${ISBoxerUISettings.FindSet["Auto"]}
			UIElement[sets@repeater regions@tabs@isboxermain]:AddItem[Auto]

		do
		{
			UIElement[sets@repeater regions@tabs@isboxermain]:AddItem["${Iterator.Key.Escape}"]
		}
		while ${Iterator:Next(exists)}
		
		UIElement[sets@repeater regions@tabs@isboxermain]:SelectItem["${UIElement[sets@repeater regions@tabs@isboxermain].ItemByText["${ToSelect.Escape}"].ID}"]
	}
	
	method RemoveRepeaterRegions(string RegionProfile)
	{
		LavishSettings:AddSet[ISBoxerUI]
		
		ISBoxerUISettings:Set[${LavishSettings.FindSet["ISBoxerUI"]}]
		ISBoxerUISettings:Import["ISBoxer.Regions.${ISBoxerCharacterSet.Escape}.${ISBoxerCharacter.Escape}.XML"]
		
		if ${RegionProfile.Equal[Auto]}
			ISBoxerUISettings.FindSet["${RegionProfile.Escape}"]:Clear
		else
			ISBoxerUISettings.FindSet["${RegionProfile.Escape}"]:Remove
				
		This:RepopulateRegionSetBox["Auto"]
		if !${ISBoxerUISettings:Export["ISBoxer.Regions.${ISBoxerCharacterSet.Escape}.${ISBoxerCharacter.Escape}.XML"](exists)}
		{
			This:PopupText["Failed to save Repeater Region settings to file ISBoxer.Regions.${CharacterSet.Escape}.${Character.Escape}.XML"]
		}

	}
	
	method StoreRepeaterRegions(string CharacterSet, string Character, string RegionProfile)
	{
		LavishSettings:AddSet[ISBoxerUI]
		
		ISBoxerUISettings:Set[${LavishSettings.FindSet["ISBoxerUI"]}]
		ISBoxerUISettings:Import["ISBoxer.Regions.${CharacterSet.Escape}.${Character.Escape}.XML"]
		
		if !${RegionProfile.Length}
			RegionProfile:Set["Auto"]

		ISBoxerUISettings:AddSet["${RegionProfile.Escape}"]
		ISBoxerUISettings.FindSet["${RegionProfile.Escape}"]:Clear
		
		This:ForEachRegion["RegionToSetting","${RegionProfile.Escape}"]
		if !${ISBoxerUISettings:Export["ISBoxer.Regions.${CharacterSet.Escape}.${Character.Escape}.XML"](exists)}
		{
			This:PopupText["Failed to save Repeater Region settings to file ISBoxer.Regions.${CharacterSet.Escape}.${Character.Escape}.XML"]
		}

		
		This:RepopulateRegionSetBox["${RegionProfile.Escape}"]
	}
	
	method LoadRepeaterRegions(string FilenamePart, string RegionProfile)
	{
		This:ClearRepeaterRegions
		LavishSettings:AddSet[ISBoxerUI]
		ISBoxerUISettings:Set[${LavishSettings.FindSet["ISBoxerUI"]}]
		ISBoxerUISettings:Import["ISBoxer.Regions.${FilenamePart.Escape}.XML"]
		
		variable iterator Iterator
		if !${RegionProfile.Length}
			RegionProfile:Set["Auto"]
			
		This:RepopulateRegionSetBox["${RegionProfile.Escape}"]
		UIElement[save as@repeater regions@tabs@isboxermain]:SetText["${RegionProfile.Escape}"]
		ISBoxerUISettings.FindSet["${RegionProfile.Escape}"]:GetSettingIterator[Iterator]
		if !${Iterator:First(exists)}
			return
		do
		{
			This:AddRepeaterRegion["${Iterator.Value.String.Escape}","${Bool["${Iterator.Value.FindAttribute["BlockLocal"].String.Escape}"]}",${Iterator.Value.FindAttribute["X"].Int},${Iterator.Value.FindAttribute["Y"].Int},${Iterator.Value.FindAttribute["Width"].Int},${Iterator.Value.FindAttribute["Height"].Int},"${Iterator.Value.FindAttribute["keymap"].String.Escape}","${Iterator.Value.FindAttribute["mappedkey"].String.Escape}","${Iterator.Value.FindAttribute["regionname"].String.Escape}"]
		}
		while ${Iterator:Next(exists)}
		
		
	}
	
	method LoadMyRepeaterRegions(string RegionProfile)
	{
		This:LoadRepeaterRegions["${ISBoxerCharacterSet.Escape}.${ISBoxerCharacter.Escape}","${RegionProfile.Escape}"]
	}

	method PermanentlyRemoveVideoFeedByID(int elementid)
	{
		This:RemoveVideoFeedByID[${elementid}]
		UIElement[${elementid}]:Destroy
	}

	method PermanentlyRemoveVideoFeed(bool isSource, string feedName)
	{
		variable int elementid = ${ISBoxerUI.FindVideoFeed["${feedName.Escape}"]}
		if ${isSource}==${UIElement[${elementid}].GetMetadata[feedsource](exists)}
		{
			This:PermanentlyRemoveVideoFeedByID[${elementid}]	
		}
	}

	method RemoveVideoFeedByID(int elementid)
	{
		if ${UIElement[${elementid}].GetMetadata[feedsource](exists)}
		{
			This:RemoveVideoFeed[1,"${UIElement[${elementid}].GetMetadata[feedsource].Escape}"]
		}
		else
		{
			MouseRepeater:ExitRegion[${elementid}]
			This:RemoveVideoFeed[0,"${UIElement[${elementid}].GetMetadata[feedoutput].Escape}"]
		}
		UIElement[${elementid}]:UnsetMetadata[feedlastinfo]

;		This:DeselectWindow[${elementid}]
	}

	method RemoveVideoFeed(bool isSource, string feedName)
	{
		if ${isSource}
			relay uplink "noop \${VideoFeed:UnregisterSource[\"${feedName.Escape}\"]}"
		else
			VideoFeed:UnregisterOutput["${feedName.Escape}"]
;			relay uplink "noop \${VideoFeed:UnregisterOutput[\"${feedName.Escape}\",\"${Session.Escape}\"]}"
	}

	variable float xFactor=1
	variable float yFactor=1

	member TransformRect(int X, int Y, int X2, int Y2)
	{
		;echo TransformRect[${X},${Y},${X2},${Y2}]
		if ${Display.Width} && ${Display.Height}
		{
			xFactor:Set[${Display.Window.ViewableWidth}/${Display.Width}]
			yFactor:Set[${Display.Window.ViewableHeight}/${Display.Height}]

			if ${xFactor}!=1
			{
				X:Set[${X}*${xFactor}]
				X2:Set[${X2}*${xFactor}]
			}
			if ${yFactor}!=1
			{
				Y:Set[${Y}*${yFactor}]
				Y2:Set[${Y2}*${yFactor}]
			}
		}

		return "${X},${Y},${X2},${Y2}"
	}

	variable int LastCursorSourceX
	variable int LastCursorSourceY
	variable int LastCursorOutputX
	variable int LastCursorOutputY
	variable bool CursorSource
	variable bool CursorOutput

	variable int SourceWidth=100
	variable int SourceHeight=100
	variable int OutputWidth=100
	variable int OutputHeight=100
	variable int CursorOutputOpacity=255
	variable string CursorOutputBorder=00ff00

	method SetCursorSourceSize(int Width, int Height)
	{
		if ${Width}==${SourceWidth} && ${Height}==${SourceHeight}
			return

		SourceWidth:Set[${Width}]
		SourceHeight:Set[${Height}]

		LastCursorSourceX:Set[-999]
	}

	method SetCursorOutputSize(int Width, int Height)
	{
		if ${Width}==${OutputWidth} && ${Height}==${OutputHeight}
			return

		OutputWidth:Set[${Width}]
		OutputHeight:Set[${Height}]

		LastCursorOutputX:Set[-999]
		if ${CursorOutput}
		{
			This:RegisterCursorOutput
		}
	}

	method SetCursorOutputOpacity(int opacity)
	{
		if ${opacity}==${CursorOutputOpacity}
			return
		CursorOutputOpacity:Set[${opacity}]
		LastCursorOutputX:Set[-999]
		if ${CursorOutput}
		{
			This:RegisterCursorOutput
		}		
	}

	method SetCursorOutputBorder(string bordercolor)
	{
		if ${opacity}==${CursorOutputOpacity}
			return
		CursorOutputBorder:Set["${bordercolor.Escape}"]
		LastCursorOutputX:Set[-999]
		if ${CursorOutput}
		{
			This:RegisterCursorOutput
		}		
	}

	method RegisterCursorSource(int X, int Y)
	{
		if ${CursorOutput}
			return

		if ${CursorSource} && ${X}==${LastCursorSourceX} && ${Y}==${LastCursorSourceY}
			return
		CursorSource:Set[1]
		LastCursorSourceX:Set[${X}]
		LastCursorSourceY:Set[${Y}]

		variable int X1
		variable int X2
		variable int Y1
		variable int Y2

		X1:Set[${X}-(${SourceWidth}/2)]
		X2:Set[${X}+(${SourceWidth}/2)]
		Y1:Set[${Y}-(${SourceHeight}/2)]
		Y2:Set[${Y}+(${SourceHeight}/2)]
	
		relay uplink "noop \${VideoFeed:RegisterSource[\"cursorfeed\",\"${Session.Escape}\",${This.TransformRect[${X1},${Y1},${X2},${Y2}]}]}"

	}

	method RegisterCursorOutput()
	{
		if ${CursorSource}
			return

		variable int newX
		variable int newY
		newX:Set[${Mouse.X}]
		newY:Set[${Mouse.Y}]

		if ${CursorOutput} && ${newX}==${LastCursorOutputX} && ${newY}==${LastCursorOutputY}
			return
		CursorOutput:Set[1]

		LastCursorOutputX:Set[${newX}]
		LastCursorOutputY:Set[${newY}]

		variable int X1
		variable int X2
		variable int Y1
		variable int Y2

		X1:Set[${newX}-(${OutputWidth}/2)]
		X2:Set[${newX}+(${OutputWidth}/2)]
		Y1:Set[${newY}-(${OutputHeight}/2)]
		Y2:Set[${newY}+(${OutputHeight}/2)]
	
		VideoFeed:RegisterOutput["cursorfeed",${This.TransformRect[${X1},${Y1},${X2},${Y2}]},${CursorOutputOpacity},"${CursorOutputBorder.Escape}"]
	}

	method UnregisterCursorOutput()
	{
		if ${CursorOutput}
		{
			VideoFeed:UnregisterOutput["cursorfeed"]
			CursorOutput:Set[0]
		}
	}

	method UnregisterCursorSource()
	{
		if ${CursorSource}
		{
			relay uplink "noop \${VideoFeed:RegisterSource[\"cursorfeed\",\"${Session.Escape}\"]}"
			CursorSource:Set[0]
		}
	}

	method RegisterSource(int elementid, string feedName, int X, int Y, int X2, int Y2)
	{
		;echo RegisterSource[${elementid},${feedName},${X},${Y},${X2},${Y2}]
		variable string newPosition
		newPosition:Set["${X}-${Y}-${X2}-${Y2}"]
		if ${UIElement[${elementid}].GetMetadata[feedlastinfo].Equal["${newPosition}"]}
		{
			return
		}

		relay uplink "noop \${VideoFeed:RegisterSource[\"${feedName.Escape}\",\"${Session.Escape}\",${X},${Y},${X2},${Y2}]}"
		;echo relay uplink "noop \${VideoFeed:RegisterSource[\"${feedName.Escape}\",\"${Session.Escape}\",${X},${Y},${X2},${Y2}]}"
		UIElement[${elementid}]:SetMetadata[feedlastinfo,"${newPosition}"]		
	}

	method RegisterOutput(int elementid, string feedName, int X, int Y, int X2, int Y2, int opacity, string bordercolor)
	{
		;echo RegisterOutput[${elementid},${feedName},${X},${Y},${X2},${Y2}]
		variable string newPosition
		newPosition:Set["${X}-${Y}-${X2}-${Y2}-${opacity}-${bordercolor.Escape}"]
		if ${UIElement[${elementid}].GetMetadata[feedlastinfo].Equal["${newPosition.Escape}"]}
		{
			return
		}

		VideoFeed:RegisterOutput["${feedName.Escape}",${X},${Y},${X2},${Y2},${opacity},"${bordercolor.Escape}"]
		;echo VideoFeed:RegisterOutput["${feedName.Escape}",${X},${Y},${X2},${Y2}]
		UIElement[${elementid}]:SetMetadata[feedlastinfo,"${newPosition.Escape}"]
	}

	method AddVideoFeed(bool isSource, string feedName, int X, int Y, int Width, int Height, int opacity, string borderRGB, bool use_mouse, bool use_keyboard, string keymapname, string mappedkeyname, bool keep_source, bool click_to_focus)
	{
		if ${feedName.Equal["${Session.Escape}"]}
			return

		if ${isSource} && ${InnerSpace.Build}>=5423 && ${VideoFeed.PermanentVideoFeeds}
		{
			This:PopupText["Not adding Video FX Source '${feedName}' because my Viewers are permanent"]
			return
		}

		variable int ID
		ID:Set[${This.FindVideoFeed["${feedName.Escape}"]}]
		if ${ID}
		{
			if ${UIElement[${ID}].GetMetadata[feedsource](exists)}
			{
				if ${keep_source}
					return

				if !${isSource}
				{
					This:RemoveVideoFeedByID[${ID}]
					UIElement[${ID}]:Destroy
					ID:Set[0]
				}
			}
			else
			{
				if ${isSource}
				{
					This:RemoveVideoFeedByID[${ID}]
					UIElement[${ID}]:Destroy
					ID:Set[0]
				}
			}
		}

		variable string name

		if ${ID}
		{
		;	keep existing UIElement
			name:Set["${UIElement[${ID}].Name.Escape}"]
		}
		else
		{
			;   generate new UIElement
			variable int regionid
			regionid:Set[${nextregionid}]
			nextregionid:Inc
		
			name:Set["isboxer_videofeed_${regionid}"]

			ui -load -skin isboxerui isboxerui isboxervideowindow "${name}"

			ID:Set[${UIElement["${name}"].ID}]		
		}


		;echo AddVideoFeed[${isSource},${feedName},${X},${Y},${Width},${Height}]

		variable int frameid
		frameid:Set[${UIElement[${ID}].FindChild[videobox].ID}]


;		echo AddVideoFeed first ${This.AbsoluteX[${frameid}]} ${This.AbsoluteY[${frameid}]} ${UIElement[${frameid}].Width} ${UIElement[${frameid}].Height}

		UIElement[${ID}]:SetX[${X}]
		UIElement[${ID}]:SetY[${Y}]

		variable int diffX
		variable int diffY
		diffX:Set["${UIElement[${ID}].Width} - ${UIElement[${frameid}].Width}"]		
		diffY:Set["${UIElement[${ID}].Height} - ${UIElement[${frameid}].Height}"]
		if ${Width}
			UIElement[${ID}]:SetWidth[${Math.Calc[${Width}+${diffX}]}]
		if ${Height}
			UIElement[${ID}]:SetHeight[${Math.Calc[${Height}+${diffY}]}]

		;echo AddVideoFeed frameid=${frameid}

		if ${isSource}
			UIElement[${ID}]:SetTitle["Source: ${feedName.Escape}"]
		else
			UIElement[${ID}]:SetTitle["Viewer: ${feedName.Escape}"]

;		echo ID=${ID} frameid=${frameid}
;		echo AddVideoFeed pre ${This.AbsoluteX[${frameid}]} ${This.AbsoluteY[${frameid}]} ${UIElement[${frameid}].Width} ${UIElement[${frameid}].Height}

		UIElement[${ID}]:SetX[${Math.Calc[ ${UIElement[${ID}].X} - ${This.AbsoluteX[${frameid}]} + ${UIElement[${ID}].X} ]}]
		UIElement[${ID}]:SetY[${Math.Calc[ ${UIElement[${ID}].Y} - ${This.AbsoluteY[${frameid}]} + ${UIElement[${ID}].Y} ]}]

;		echo AddVideoFeed post ${This.AbsoluteX[${frameid}]} ${This.AbsoluteY[${frameid}]} ${UIElement[${frameid}].Width} ${UIElement[${frameid}].Height}
			
		if ${keymapname.Equal[NULL]}
			keymapname:Set[""]
		if ${mappedkeyname.Equal[NULL]}
			mappedkeyname:Set[""]
		if !${mappedkeyname.Length}
			keymapname:Set[""]

		UIElement[${ID}]:SetMetadata[isboxer,1]:SetMetadata[${If[${isSource},feedsource,feedoutput]},"${feedName.Escape}"]:SetMetadata[opacity,${opacity}]:SetMetadata[bordercolor,"${borderRGB.Escape}"]:SetMetadata[key map,"${keymapname.Escape}"]:SetMetadata[mapped key,"${mappedkeyname.Escape}"]
		if ${use_mouse}
		{
			UIElement[${ID}]:SetMetadata[use mouse,"${use_mouse}"]:SetMetadata[block local,1]:SetMetadata[use keyboard,${use_keyboard}]
		}
		else
		{
			UIElement[${ID}]:UnsetMetadata[use mouse]
		}

		if ${click_to_focus}
			UIElement[${ID}]:SetMetadata[use focus hotkey,${click_to_focus}]
		else
			UIElement[${ID}]:UnsetMetadata[use focus hotkey]
			
		if ${UIElement[isboxermain].Visible}
		{		
			UIElement[${ID}]:Show
			This:SelectWindow[${ID}]
		}

		if ${isSource}
		{
			UIElement[toomuchgreen@videobox@${name}]:Hide
			UIElement[toomuchgreensource@videobox@${name}]:Show
			This:RegisterSource[${ID},"${feedName.Escape}",${This.TransformRect[${X},${Y},${Math.Calc[${Width}+${X}].Int},${Math.Calc[${Height}+${Y}].Int}]}]}]
		}
		else
		{
			UIElement[toomuchgreen@videobox@${name}]:Show
			UIElement[toomuchgreensource@videobox@${name}]:Hide
			This:RegisterOutput[${ID},"${feedName.Escape}",${This.TransformRect[${X},${Y},${Math.Calc[${Width}+${X}].Int},${Math.Calc[${Height}+${Y}].Int}]}]},${opacity},"${borderRGB.Escape}"]
		}

        This:VideoFeedEditorRefreshList
	}

	method UpdateVideoFeedAlphaByID(int elementid, int value)
	{
		variable int frameid
		frameid:Set[${UIElement[${elementid}].FindChild[videobox].ID}]
		if !${frameid}
			return
		
		if ${UIElement[${elementid}].GetMetadata[feedsource].Length}
		{
		}
		elseif ${UIElement[${elementid}].GetMetadata[feedoutput].Length}
		{
			VideoFeed["${UIElement[${elementid}].GetMetadata[feedoutput].Escape}"]:SetAlpha[${value}/255]
		}		
	}
	
	member:int FindVideoFeed(string name)
	{
		variable int id
		variable int nextid
		id:Set[${UIElement[screen].Children.ID}]
		while ${id}
		{
			nextid:Set[${UIElement[${id}].Next.ID}]
			if ${UIElement[${id}].GetMetadata[isboxer](exists)} && (${UIElement[${id}].GetMetadata[feedsource](exists)} || ${UIElement[${id}].GetMetadata[feedoutput](exists)})
			{
				if ${UIElement[${id}].GetMetadata[feedsource].Equal["${name.Escape}"]}
					return ${id}
				if ${UIElement[${id}].GetMetadata[feedoutput].Equal["${name.Escape}"]}
					return ${id}
			}
	
			id:Set[${nextid}]		
		}
		return 0
	}

	method ShowVideoFeed(string name)
	{
		variable int ID
		ID:Set[${This.FindVideoFeed["${name.Escape}"]}]
		if ${ID}
			UIElement[${ID}]:Unminimize
	}

	method HideVideoFeed(string name)
	{
		variable int ID
		ID:Set[${This.FindVideoFeed["${name.Escape}"]}]
		if ${ID}
			UIElement[${ID}]:Minimize
	}

	variable int LastRepeaterVideoFeedOutput
	variable bool LastRepeaterVideoFeedOutputUsedRepeater

	variable int RepeaterVideoFeedOutput
	variable bool RepeaterVideoFeedOutputSet

	variable bool RepeaterVideoFeedOutputUsesRepeater

	member:bool ShouldShowVideoFeeds()
	{
		if !${UIElement[isboxermain].Visible}
			return 1

		if ${VideoFeedsWhileEditing}
			return 1

		if ${Input.Button[162].Pressed} || ${Input.Button[163].Pressed}
			return 1

		return 0
	}

	method UpdateVideoFeed(int elementid)
	{
		if ${UIElement[${elementid}].Minimized}
		{			
			This:RemoveVideoFeedByID[${elementid}]
			return
		}


		variable int frameid
		frameid:Set[${UIElement[${elementid}].FindChild[videobox].ID}]
		if !${frameid}
			return
		
		if ${UIElement[${elementid}].GetMetadata[feedsource].Length}
		{
			This:RegisterSource[${elementid},"${UIElement[${elementid}].GetMetadata[feedsource].Escape}",${This.TransformRect[${This.AbsoluteX[${frameid}]},${This.AbsoluteY[${frameid}]},${Math.Calc[${UIElement[${frameid}].Width}+${This.AbsoluteX[${frameid}]}].Int},${Math.Calc[${UIElement[${frameid}].Height}+${This.AbsoluteY[${frameid}]}].Int}]}]
		}
		elseif ${UIElement[${elementid}].GetMetadata[feedoutput].Length}
		{
			if ${This.ShouldShowVideoFeeds} && (${Display.Window.IsForeground} || ${InnerSpace.Build}>=5423 && ${VideoFeed.PermanentVideoFeeds})
			{
				if ${InnerSpace.Build}>=5420 && !${UIElement[isboxermain].Visible} && ${UIElement[${frameid}].HitTest} && ${Mouse.Cursor}
				{
					RepeaterVideoFeedOutputSet:Set[1]
					RepeaterVideoFeedOutput:Set[${elementid}]
					if ${Bool["${UIElement[${elementid}].GetMetadata[use mouse].Escape}"]} || ${Bool["${UIElement[${elementid}].GetMetadata[use keyboard].Escape}"]}
					{
						RepeaterVideoFeedOutputUsesRepeater:Set[1]
					}
					else
					{
						RepeaterVideoFeedOutputUsesRepeater:Set[0]
					}
				}
				This:RegisterOutput[${elementid},"${UIElement[${elementid}].GetMetadata[feedoutput].Escape}",${This.TransformRect[${This.AbsoluteX[${frameid}]},${This.AbsoluteY[${frameid}]},${Math.Calc[${UIElement[${frameid}].Width}+${This.AbsoluteX[${frameid}]}].Int},${Math.Calc[${UIElement[${frameid}].Height}+${This.AbsoluteY[${frameid}]}].Int}]},"${UIElement[${elementid}].GetMetadata[opacity].Escape}","${UIElement[${elementid}].GetMetadata[bordercolor].Escape}"]
;				echo This:RegisterOutput[${elementid},"${UIElement[${elementid}].GetMetadata[feedoutput].Escape}",${This.TransformRect[${This.AbsoluteX[${frameid}]},${This.AbsoluteY[${frameid}]},${Math.Calc[${UIElement[${frameid}].Width}+${This.AbsoluteX[${frameid}]}].Int},${Math.Calc[${UIElement[${frameid}].Height}+${This.AbsoluteY[${frameid}]}].Int}]},"${UIElement[${elementid}].GetMetadata[opacity].Escape}","${UIElement[${elementid}].GetMetadata[bordercolor].Escape}"]
			}
			else   /* if ${InnerSpace.Build}<5423 || !${VideoFeed.PermanentVideoFeeds} */
				This:RemoveVideoFeedByID[${elementid}]
		}
	}

	method MuteBackground()
	{
		if ${Display.Window.IsForeground}
		{
			Audio:SetMute[0]
		}
		else
		{
			Audio:SetMute[1]
		}
	}

	method ProcessFrame()
	{
		ISBoxerUI:UpdateVideoFeeds
		if ${AutoMuteBackground}
			ISBoxerUI:MuteBackground
	}

	method UpdateVideoFeeds()
	{
		LastRepeaterVideoFeedOutput:Set[${RepeaterVideoFeedOutput}]
		LastRepeaterVideoFeedOutputUsedRepeater:Set[${RepeaterVideoFeedOutputUsesRepeater}]
		RepeaterVideoFeedOutputSet:Set[0]
		This:ForEachVideoFeed[UpdateVideoFeed]
		if !${RepeaterVideoFeedOutputSet}
		{
			if ${LastRepeaterVideoFeedOutput}
			{
				if ${LastRepeaterVideoFeedOutputUsedRepeater}
					MouseRepeater:ExitRegion[${LastRepeaterVideoFeedOutput}]
				else
					This:ExitRegion[${LastRepeaterVideoFeedOutput}]

				RepeaterVideoFeedOutput:Set[0]			
			}
		}
		elseif ${RepeaterVideoFeedOutput}!=${LastRepeaterVideoFeedOutput} 
		{
			if ${LastRepeaterVideoFeedOutput} && !${LastRepeaterVideoFeedOutputUsedRepeater}
			{
					This:ExitRegion[${LastRepeaterVideoFeedOutput}]
			}

			if ${RepeaterVideoFeedOutputUsesRepeater}
			{
				MouseRepeater:EnterRegion[${RepeaterVideoFeedOutput}]
			}
			else
			{
				if ${LastRepeaterVideoFeedOutputUsedRepeater}
					MouseRepeater:ExitRegion[${LastRepeaterVideoFeedOutput}]

				This:EnterRegion[${RepeaterVideoFeedOutput}]
			}
		}
	}

	method EnterRegion(int elementid)
	{
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
			variable string sourcename
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
	}

	method ExitRegion(int elementid)
	{
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

	method VideoFeedToSetting(int elementid,string VideoFeedProfile)
	{
		variable int frameid
		frameid:Set[${UIElement[${elementid}].FindChild[videobox].ID}]
		if !${frameid}
			return

		if ${UIElement[${elementid}].GetMetadata[feedsource].Length}
		{
			VideoFeedSettings.FindSet["${VideoFeedProfile.Escape}"]:AddSetting["element${elementid}","feedsource"]
			VideoFeedSettings.FindSet["${VideoFeedProfile.Escape}"].FindSetting["element${elementid}"]:AddAttribute["feedsource","${UIElement[${elementid}].GetMetadata[feedsource].Escape}"]:AddAttribute["X","${This.AbsoluteX[${frameid}]}"]:AddAttribute["Y","${This.AbsoluteY[${frameid}]}"]:AddAttribute["Width","${UIElement[${frameid}].Width}"]:AddAttribute["Height","${UIElement[${frameid}].Height}"]
		}
		elseif ${UIElement[${elementid}].GetMetadata[feedoutput].Length}
		{
			VideoFeedSettings.FindSet["${VideoFeedProfile.Escape}"]:AddSetting["element${elementid}","feedoutput"]
			VideoFeedSettings.FindSet["${VideoFeedProfile.Escape}"].FindSetting["element${elementid}"]:AddAttribute["feedoutput","${UIElement[${elementid}].GetMetadata[feedoutput].Escape}"]:AddAttribute["X","${This.AbsoluteX[${frameid}]}"]:AddAttribute["Y","${This.AbsoluteY[${frameid}]}"]:AddAttribute["Width","${UIElement[${frameid}].Width}"]:AddAttribute["Height","${UIElement[${frameid}].Height}"]:AddAttribute["opacity","${UIElement[${elementid}].GetMetadata[opacity].Escape}"]:AddAttribute["bordercolor","${UIElement[${elementid}].GetMetadata[bordercolor].Escape}"]:AddAttribute["keymap","${UIElement[${elementid}].GetMetadata[key map].Escape}"]:AddAttribute["mappedkey","${UIElement[${elementid}].GetMetadata[mapped key].Escape}"]
			if ${UIElement[${elementid}].GetMetadata[use mouse].Length}
			{
				VideoFeedSettings.FindSet["${VideoFeedProfile.Escape}"].FindSetting["element${elementid}"]:AddAttribute["usemouse","${UIElement[${elementid}].GetMetadata[use mouse].Escape}"]:AddAttribute["usekeyboard","${UIElement[${elementid}].GetMetadata[use keyboard].Escape}"]
			}

			if ${UIElement[${elementid}].GetMetadata[use focus hotkey].Length}
			{
				VideoFeedSettings.FindSet["${VideoFeedProfile.Escape}"].FindSetting["element${elementid}"]:AddAttribute["usefocushotkey","${UIElement[${elementid}].GetMetadata[use focus hotkey].Escape}"]
			}
		}
	}

	method RepopulateVideoFeedSetBox(string ToSelect)
	{
		
		UIElement[sets@video fx@tabs@isboxermain]:ClearItems
;		UIElement[sets@video fx@tabs@isboxermain]:AddItem["all other"]

		variable iterator Iterator
		VideoFeedSettings:GetSetIterator[Iterator]
		
		if !${Iterator:First(exists)}
		{
			UIElement[sets@video fx@tabs@isboxermain]:AddItem[Auto]:SelectItem[1]
			return
		}
		
		if !${VideoFeedSettings.FindSet["Auto"]}
			UIElement[sets@video fx@tabs@isboxermain]:AddItem[Auto]

		do
		{
			UIElement[sets@video fx@tabs@isboxermain]:AddItem["${Iterator.Key.Escape}"]
		}
		while ${Iterator:Next(exists)}
		
		UIElement[sets@video fx@tabs@isboxermain]:SelectItem["${UIElement[sets@video fx@tabs@isboxermain].ItemByText["${ToSelect.Escape}"].ID}"]
	}

	method RemoveVideoFeeds(string VideoFeedProfile)
	{
		LavishSettings:AddSet[VideoFeeds]
		
		VideoFeedSettings:Set[${LavishSettings.FindSet["VideoFeeds"]}]
		VideoFeedSettings:Import["ISBoxer.VideoFeeds.${ISBoxerCharacterSet.Escape}.${ISBoxerCharacter.Escape}.XML"]
		
		if ${VideoFeedProfile.Equal[Auto]}
			VideoFeedSettings.FindSet["${VideoFeedProfile.Escape}"]:Clear
		else
			VideoFeedSettings.FindSet["${VideoFeedProfile.Escape}"]:Remove
				
		This:RepopulateVideoFeedSetBox["Auto"]
		if !${VideoFeedSettings:Export["ISBoxer.VideoFeeds.${ISBoxerCharacterSet.Escape}.${ISBoxerCharacter.Escape}.XML"](exists)}
		{
			This:PopupText["Failed to save Video FX settings to file ISBoxer.VideoFeeds.${ISBoxerCharacterSet.Escape}.${ISBoxerCharacter.Escape}.XML"]
		}
		
	}

	method StoreVideoFeeds(string CharacterSet, string Character, string VideoFeedProfile)
	{
		LavishSettings:AddSet[VideoFeeds]
		
		VideoFeedSettings:Set[${LavishSettings.FindSet["VideoFeeds"]}]
		VideoFeedSettings:Import["ISBoxer.VideoFeeds.${CharacterSet.Escape}.${Character.Escape}.XML"]
		
		if !${VideoFeedProfile.Length}
			VideoFeedProfile:Set["Auto"]

		VideoFeedSettings:AddSet["${VideoFeedProfile.Escape}"]
		VideoFeedSettings.FindSet["${VideoFeedProfile.Escape}"]:Clear
		
		This:ForEachVideoFeed["VideoFeedToSetting","${VideoFeedProfile.Escape}"]
		if !${VideoFeedSettings:Export["ISBoxer.VideoFeeds.${CharacterSet.Escape}.${Character.Escape}.XML"](exists)}
		{
			This:PopupText["Failed to save Video FX settings to file ISBoxer.VideoFeeds.${ISBoxerCharacterSet.Escape}.${ISBoxerCharacter.Escape}.XML"]
		}
		
		This:RepopulateVideoFeedSetBox["${RegionProfile.Escape}"]
	}

	method LoadVideoFeeds(string FilenamePart, string VideoFeedProfile)
	{
		; echo LoadVideoFeeds cset='${CharacterSet}' char='${Character}' profile='${VideoFeedProfile.Escape}'
		This:ClearVideoFeeds
		LavishSettings:AddSet[VideoFeeds]
		VideoFeedSettings:Set[${LavishSettings.FindSet["VideoFeeds"]}]
		VideoFeedSettings:Import["ISBoxer.VideoFeeds.${FilenamePart.Escape}.XML"]
		
		variable iterator Iterator
		if !${VideoFeedProfile.Length}
			VideoFeedProfile:Set["Auto"]
			
		This:RepopulateVideoFeedSetBox["${VideoFeedProfile.Escape}"]
		UIElement[save as@video fx@tabs@isboxermain]:SetText["${VideoFeedProfile.Escape}"]
		VideoFeedSettings.FindSet["${VideoFeedProfile.Escape}"]:GetSettingIterator[Iterator]
		if !${Iterator:First(exists)}
			return
		variable bool use_mouse
		do
		{
			if ${Iterator.Value.FindAttribute["feedoutput"](exists)}
			{
				use_mouse:Set[0]

				if ${Iterator.Value.FindAttribute["target"].String.Length} || ${Bool["${Iterator.Value.FindAttribute["usemouse"].String.Escape}"]}
					use_mouse:Set[1]

				This:AddVideoFeed[0,"${Iterator.Value.FindAttribute["feedoutput"].String.Escape}",${Iterator.Value.FindAttribute["X"].Int},${Iterator.Value.FindAttribute["Y"].Int},${Iterator.Value.FindAttribute["Width"].Int},${Iterator.Value.FindAttribute["Height"].Int},${Iterator.Value.FindAttribute["opacity"].Int},"${Iterator.Value.FindAttribute["bordercolor"].String.Escape}","${Iterator.Value.FindAttribute["usemouse"].String.Escape}","${Iterator.Value.FindAttribute["usekeyboard"].String.Escape}","${Iterator.Value.FindAttribute["keymap"].String.Escape}","${Iterator.Value.FindAttribute["mappedkey"].String.Escape}",0,"${Iterator.Value.FindAttribute["usefocushotkey"].String.Escape}"]
			}
			elseif ${Iterator.Value.FindAttribute["feedsource"](exists)}
			{				
				This:AddVideoFeed[1,"${Iterator.Value.FindAttribute["feedsource"].String.Escape}",${Iterator.Value.FindAttribute["X"].Int},${Iterator.Value.FindAttribute["Y"].Int},${Iterator.Value.FindAttribute["Width"].Int},${Iterator.Value.FindAttribute["Height"].Int}]
			}
			
		}
		while ${Iterator:Next(exists)}
	}

	method LoadMyVideoFeeds(string VideoFeedProfile)
	{
		This:LoadVideoFeeds["${ISBoxerCharacterSet.Escape}.${ISBoxerCharacter.Escape}","${VideoFeedProfile.Escape}"]
	}

	member:int AbsoluteX(int elementid)
	{
		variable int val
		val:Set[${UIElement[${elementid}].X}]
		if ${UIElement[${elementid}].Parent.Type.Equal[windowclient]}
			val:Inc[${UIElement[${elementid}].Parent.Parent.X}+${UIElement[${elementid}].Parent.Parent.Border}]
		else
			val:Inc[${UIElement[${elementid}].Parent.X}]

		return ${val}
	}
	member:int AbsoluteY(int elementid)
	{
		variable int val
		val:Set[${UIElement[${elementid}].Y}]
		if ${UIElement[${elementid}].Parent.Type.Equal[windowclient]}
			val:Inc[${UIElement[${elementid}].Parent.Parent.Y}+${UIElement[${elementid}].Parent.Parent.Border}+${UIElement["titlebar@${UIElement[${elementid}].Parent.Parent.FullName.Escape}"].Height}]
		else
			val:Inc[${UIElement[${elementid}].Parent.Y}]

		return ${val}
	}

	method RegionToWindow(int elementid)
	{
		if !${UIElement[${elementid}].Type.Equal[frame]}
			return
		
		variable string name
		variable int regionid

		regionid:Set["${UIElement[${elementid}].GetMetadata[region]}"]
		name:Set["isboxer_repeaterwindow_${regionid}"]

		ui -load -skin isboxerui isboxerui isboxerrepeaterwindow "${name}"

		variable int ID
		ID:Set[${UIElement["${name}"].ID}]

		variable int frameid
		frameid:Set[${UIElement[${ID}].FindChild[clickbox].ID}]

		UIElement[${ID}]:SetTitle["${UIElement[${elementid}].GetMetadata[target].Escape}"]
		
		UIElement[${ID}]:SetWidth[${UIElement[${elementid}].Width}]
		UIElement[${ID}]:SetHeight[${UIElement[${elementid}].Height}]
		UIElement[${ID}]:SetX[${UIElement[${elementid}].X}]
		UIElement[${ID}]:SetY[${UIElement[${elementid}].Y}]
		
		UIElement[${ID}]:SetWidth[${Math.Calc[ ${UIElement[${ID}].Width} - ${UIElement[${frameid}].Width} + ${UIElement[${elementid}].Width} ]}]
		UIElement[${ID}]:SetHeight[${Math.Calc[ ${UIElement[${ID}].Height} - ${UIElement[${frameid}].Height} + ${UIElement[${elementid}].Height} ]}]

		UIElement[${ID}]:SetX[${Math.Calc[ ${UIElement[${ID}].X} - ${This.AbsoluteX[${frameid}]} + ${UIElement[${elementid}].X} ]}]
		UIElement[${ID}]:SetY[${Math.Calc[ ${UIElement[${ID}].Y} - ${This.AbsoluteY[${frameid}]} + ${UIElement[${elementid}].Y} ]}]

		UIElement[${ID}]:Show:SetMetadata[isboxer,1]:SetMetadata[region,${regionid}]:SetMetadata[target,"${UIElement[${elementid}].GetMetadata[target].Escape}"]:SetMetadata[block local,"${UIElement[${elementid}].GetMetadata[block local].Escape}"]:SetMetadata[key map,"${UIElement[${elementid}].GetMetadata[key map].Escape}"]:SetMetadata[mapped key,"${UIElement[${elementid}].GetMetadata[mapped key].Escape}"]:SetMetadata[Region Name,"${UIElement[${elementid}].GetMetadata[Region Name].Escape}"]
		MouseRepeater:ExitRegion[${elementid}]
		UIElement[${elementid}]:Destroy
	}

	method WindowToRegion(int elementid)
	{
		if !${UIElement[${elementid}].Type.Equal[window]}
			return

		variable string name
		variable int regionid

		variable int frameid
		frameid:Set[${UIElement[${elementid}].FindChild[clickbox].ID}]

;		echo desired elementX=${This.AbsoluteX[${frameid}]} elementY=${This.AbsoluteY[${frameid}]} elementWidth=${UIElement[${frameid}].Width} elementHeight=${UIElement[${frameid}].Height}

		regionid:Set["${UIElement[${elementid}].GetMetadata[region]}"]
		name:Set["isboxer_repeaterregion_${regionid}"]

		ui -load -skin isboxerui isboxerui isboxerrepeaterregion "${name}"

		variable int ID
		ID:Set[${UIElement["${name}"].ID}]

		UIElement[${ID}]:SetX[${This.AbsoluteX[${frameid}]}]:SetY[${This.AbsoluteY[${frameid}]}]:SetWidth[${UIElement[${frameid}].Width}]:SetHeight[${UIElement[${frameid}].Height}]
		UIElement[${ID}]:Show:SetMetadata[isboxer,1]:SetMetadata[region,${regionid}]:SetMetadata[target,"${UIElement[${elementid}].GetMetadata[target].Escape}"]:SetMetadata[block local,"${UIElement[${elementid}].GetMetadata[block local].Escape}"]:SetMetadata[key map,"${UIElement[${elementid}].GetMetadata[key map].Escape}"]:SetMetadata[mapped key,"${UIElement[${elementid}].GetMetadata[mapped key].Escape}"]:SetMetadata[Region Name,"${UIElement[${elementid}].GetMetadata[Region Name].Escape}"]
		UIElement[${ID}]:SetLeftClickThru[1]:SetRightClickThru[1]


		MouseRepeater:ExitRegion[${elementid}]
		UIElement[${elementid}]:Destroy
	}

	method VideoFXTabAdd()
	{
		variable int vfxHeight
		variable int vfxWidth
		variable int vfxX
		variable int vfxY

		if ${UIElement[issource@video fx@tabs@isboxermain].SelectedItem.Value}==2
		{
			if ${UIElement[otherWindows@video fx@tabs@isboxermain].SelectedItem.Value.Length}>1 && ${UIElement[name@video fx@tabs@isboxermain].Text.Length}
			{
				vfxX:Set[${Int["${UIElement[feedX@video fx@tabs@isboxermain].Text.Escape}"]}]
				vfxY:Set[${Int["${UIElement[feedY@video fx@tabs@isboxermain].Text.Escape}"]}]
				vfxHeight:Set[${Int["${UIElement[feedHeight@video fx@tabs@isboxermain].Text.Escape}"]}]
				vfxWidth:Set[${Int["${UIElement[feedWidth@video fx@tabs@isboxermain].Text.Escape}"]}]

				if ${vfxHeight}>0 && ${vfxWidth}>0
					relay uplink "timed 0 noop \\\${VideoFeed:RegisterSource[\"${UIElement[name@video fx@tabs@isboxermain].Text.Escape}\",\"${UIElement[otherWindows@video fx@tabs@isboxermain].SelectedItem.Value.Escape}\",${vfxX},${vfxY},${Math.Calc[${vfxWidth}+${vfxX}]},${Math.Calc[${vfxHeight}+${vfxY}]}]}"
				else
					relay uplink "timed 0 noop \\\${VideoFeed:RegisterSource[\"${UIElement[name@video fx@tabs@isboxermain].Text.Escape}\",\"${UIElement[otherWindows@video fx@tabs@isboxermain].SelectedItem.Value.Escape}\"]}"
				
				ISBoxerUI:PopupText["${UIElement[issource@video fx@tabs@isboxermain].SelectedItem.Text} '${UIElement[name@video fx@tabs@isboxermain].Text.Escape}' added"]
			}
			else
				ISBoxerUI:PopupText["Please set a Video FX Name before trying to add a ${UIElement[issource@video fx@tabs@isboxermain].SelectedItem.Text}!"]
		}
        elseif ${UIElement[name@video fx@tabs@isboxermain].Text.Length}
        {
			ISBoxerUI:AddVideoFeed["${UIElement[issource@video fx@tabs@isboxermain].SelectedItem.Value}","${UIElement[name@video fx@tabs@isboxermain].Text.Escape}",100,100,${Int["${UIElement[feedWidth@video fx@tabs@isboxermain].Text.Escape}"]},${Int["${UIElement[feedHeight@video fx@tabs@isboxermain].Text.Escape}"]},${UIElement[opacity@video fx@tabs@isboxermain].Value},"${If[${UIElement[useBorder@video fx@tabs@isboxermain].Checked},"${UIElement[border@video fx@tabs@isboxermain].Text.Escape}",""]}"]
			ISBoxerUI:PopupText["${UIElement[issource@video fx@tabs@isboxermain].SelectedItem.Text} '${UIElement[name@video fx@tabs@isboxermain].Text.Escape}' added"]
        ;                echo ISBoxerUI:AddVideoFeed["${UIElement[issource@video fx@tabs@isboxermain].SelectedItem.Value}","${UIElement[name@video fx@tabs@isboxermain].Text.Escape}",100,100,${Int["${UIElement[feedWidth@video fx@tabs@isboxermain].Text.Escape}"]},${Int["${UIElement[feedHeight@video fx@tabs@isboxermain].Text.Escape}"]}]
        }
        else
			ISBoxerUI:PopupText["Please set a Video FX Name before trying to add a ${UIElement[issource@video fx@tabs@isboxermain].SelectedItem.Text}!"]
	}

	method VideoFXTabRefreshWindows()
	{
		variable int comboid
		comboid:Set[${UIElement[otherWindows@video fx@tabs@isboxermain].ID}]
		if !${comboid}
			return
		UIElement["${comboid}"]:ClearItems

		variable index:gdiwindow Windows
		Display:EnumVisibleWindows[Windows]

		variable iterator Iterator
		variable string processName

		Windows:GetIterator[Iterator]
		if ${Iterator:First(exists)}
		{
			do
			{
				if ${Iterator.Value.ViewableWidth} && ${Iterator.Value.ViewableHeight}
				{
					processName:Set["${Iterator.Value.ProcessName.Escape}"]
					if ${processName.Length} && ${processName.NotEqual[NULL]}
					{		
						variable file f
						f:SetFilename["${processName.Escape}"]
						variable string FileName
						FileName:Set["${f.Filename.Escape}"]
					
;					echo relay uplink "noop \${VideoFeed:RegisterSource[\"${FileName.Escape}-pid${Iterator.Value.ProcessID}\",\"${Iterator.Value.HWND.Hex}\"]}"
;						relay uplink "timed 0 noop \\\${VideoFeed:RegisterSource[\"${FileName.Escape}-pid${Iterator.Value.ProcessID}\",\"${Iterator.Value.HWND.Hex}\"]}"					
					
						UIElement["${comboid}"]:AddItem["${FileName.Escape} pid${Iterator.Value.ProcessID} ${Iterator.Value.HWND.Hex} ${Iterator.Value.Text.Escape}","${Iterator.Value.HWND.Hex}"]
					
					}
				}
			}
			while ${Iterator:Next(exists)}
		}		
	}

	method VideoFeedEditorClose()
	{
		This:RemoveVideoFeedByID[${SelectedWindow}]
	}

	method VideoFeedEditorApply()
	{
		variable string oldName
		variable int oldID = ${SelectedWindow}
		if ${UIElement[issource@editor@isboxervideofeededitor].SelectedItem.Value}
		{
			if ${UIElement[${SelectedWindow}].GetMetadata[feedsource](exists)}
			{
				oldName:Set["${UIElement[${SelectedWindow}].GetMetadata[feedsource].Escape}"]
				ISBoxerUI:AddVideoFeed["1","${UIElement[name@editor@isboxervideofeededitor].Text.Escape}",${Int["${UIElement[feedX@editor@isboxervideofeededitor].Text.Escape}"]},${Int["${UIElement[feedY@editor@isboxervideofeededitor].Text.Escape}"]},${Int["${UIElement[feedWidth@editor@isboxervideofeededitor].Text.Escape}"]},${Int["${UIElement[feedHeight@editor@isboxervideofeededitor].Text.Escape}"]},"${UIElement[opacity@editor@isboxervideofeededitor].Text.Escape}","${If[${UIElement[useBorder@editor@isboxervideofeededitor].Checked},"${UIElement[border@editor@isboxervideofeededitor].Text.Escape}",""]}"]
				
				if !${oldName.Equal["${UIElement[name@editor@isboxervideofeededitor].Text.Escape}"]}
				{
					This:RemoveVideoFeedByID[${oldID}]
				}
			}
			if ${UIElement[${SelectedWindow}].GetMetadata[feedoutput](exists)}
			{
				This:RemoveVideoFeedByID[${oldID}]
				ISBoxerUI:AddVideoFeed["1","${UIElement[name@editor@isboxervideofeededitor].Text.Escape}",${Int["${UIElement[feedX@editor@isboxervideofeededitor].Text.Escape}"]},${Int["${UIElement[feedY@editor@isboxervideofeededitor].Text.Escape}"]},${Int["${UIElement[feedWidth@editor@isboxervideofeededitor].Text.Escape}"]},${Int["${UIElement[feedHeight@editor@isboxervideofeededitor].Text.Escape}"]},"${UIElement[opacity@editor@isboxervideofeededitor].Text.Escape}","${If[${UIElement[useBorder@editor@isboxervideofeededitor].Checked},"${UIElement[border@editor@isboxervideofeededitor].Text.Escape}",""]}"]
			}
		}
		else
		{
			if ${UIElement[${SelectedWindow}].GetMetadata[feedsource](exists)}
			{
				This:RemoveVideoFeedByID[${oldID}]
				ISBoxerUI:AddVideoFeed["0","${UIElement[name@editor@isboxervideofeededitor].Text.Escape}",${Int["${UIElement[feedX@editor@isboxervideofeededitor].Text.Escape}"]},${Int["${UIElement[feedY@editor@isboxervideofeededitor].Text.Escape}"]},${Int["${UIElement[feedWidth@editor@isboxervideofeededitor].Text.Escape}"]},${Int["${UIElement[feedHeight@editor@isboxervideofeededitor].Text.Escape}"]},"${UIElement[opacity@editor@isboxervideofeededitor].Text.Escape}","${If[${UIElement[useBorder@editor@isboxervideofeededitor].Checked},"${UIElement[border@editor@isboxervideofeededitor].Text.Escape}",""]}","${UIElement[useRepeater@editor@isboxervideofeededitor].Checked}","${UIElement[useKeyboard@editor@isboxervideofeededitor].Checked}","${UIElement[key maps@editor@isboxervideofeededitor].SelectedItem.Text.Escape}","${UIElement[mapped keys@editor@isboxervideofeededitor].SelectedItem.Text.Escape}",1,${UIElement[useFocusHotkey@editor@isboxervideofeededitor].Checked}]
			}
			if ${UIElement[${SelectedWindow}].GetMetadata[feedoutput](exists)}
			{
				oldName:Set["${UIElement[${SelectedWindow}].GetMetadata[feedoutput].Escape}"]
;				ISBoxerUI:AddVideoFeed["0","${UIElement[name@editor@isboxervideofeededitor].Text.Escape}",${Int["${UIElement[feedX@editor@isboxervideofeededitor].Text.Escape}"]},${Int["${UIElement[feedY@editor@isboxervideofeededitor].Text.Escape}"]},${Int["${UIElement[feedWidth@editor@isboxervideofeededitor].Text.Escape}"]},${Int["${UIElement[feedHeight@editor@isboxervideofeededitor].Text.Escape}"]},"${UIElement[opacity@editor@isboxervideofeededitor].Text.Escape}","${If[${UIElement[useBorder@editor@isboxervideofeededitor].Checked},"${UIElement[border@editor@isboxervideofeededitor].Text.Escape}",""]}"]			
				ISBoxerUI:AddVideoFeed["0","${UIElement[name@editor@isboxervideofeededitor].Text.Escape}",${Int["${UIElement[feedX@editor@isboxervideofeededitor].Text.Escape}"]},${Int["${UIElement[feedY@editor@isboxervideofeededitor].Text.Escape}"]},${Int["${UIElement[feedWidth@editor@isboxervideofeededitor].Text.Escape}"]},${Int["${UIElement[feedHeight@editor@isboxervideofeededitor].Text.Escape}"]},"${UIElement[opacity@editor@isboxervideofeededitor].Text.Escape}","${If[${UIElement[useBorder@editor@isboxervideofeededitor].Checked},"${UIElement[border@editor@isboxervideofeededitor].Text.Escape}",""]}","${UIElement[useRepeater@editor@isboxervideofeededitor].Checked}","${UIElement[useKeyboard@editor@isboxervideofeededitor].Checked}","${UIElement[key maps@editor@isboxervideofeededitor].SelectedItem.Text.Escape}","${UIElement[mapped keys@editor@isboxervideofeededitor].SelectedItem.Text.Escape}",1,${UIElement[useFocusHotkey@editor@isboxervideofeededitor].Checked}]

				if !${oldName.Equal["${UIElement[name@editor@isboxervideofeededitor].Text.Escape}"]}
				{
					This:RemoveVideoFeedByID[${oldID}]
				}
			}
		}
	}

	method VideoFeedEditorSync()
	{
		; the methods will filter it based on which type it is. sorry. ;)
		This:DuplicateVideoFeedOutput[${SelectedWindow}]
		This:DuplicateVideoFeedSource[${SelectedWindow}]	
	}

	variable int vfxDownX=0
	variable int vfxDownY=0
	variable int vfxDownWindow=0

	method VideoFeedWindowLMouseDown(int windowid, int frameid)
	{
		if !${UIElement[isboxermain].Visible}
			return

		if !(${Input.Button[160].Pressed} || ${Input.Button[161].Pressed}) || \
		   !(${Input.Button[162].Pressed} || ${Input.Button[163].Pressed}) || \
		   !(${Input.Button[164].Pressed} || ${Input.Button[165].Pressed})
		   return

		; Ctrl+Shift+Alt+Mouse1
		vfxDownWindow:Set[${windowid}]
		vfxDownX:Set[${Mouse.X}]
		vfxDownY:Set[${Mouse.Y}]

	}

	method VideoFeedWindowLMouseUp(int windowid, int frameid)
	{
		if ${windowid}!=${vfxDownWindow}
		{
			vfxDownWindow:Set[0]
			return
		}

		vfxDownWindow:Set[0]
		if !${UIElement[isboxermain].Visible}
			return

		if !(${Input.Button[160].Pressed} || ${Input.Button[161].Pressed}) || \
		   !(${Input.Button[162].Pressed} || ${Input.Button[163].Pressed}) || \
		   !(${Input.Button[164].Pressed} || ${Input.Button[165].Pressed})
		   return

		; Ctrl+Shift+Alt+Mouse1
		variable int vfxUpX
		variable int vfxUpY
		vfxUpX:Set[${Mouse.X}]
		vfxUpY:Set[${Mouse.Y}]

		variable int vfxViewX
		variable int vfxViewY
		variable int vfxViewWidth
		variable int vfxViewHeight
		vfxViewX:Set[${vfxDownX}]
		vfxViewY:Set[${vfxDownY}]
		vfxViewWidth:Set[${vfxUpX}-${vfxDownX}]
		vfxViewHeight:Set[${vfxUpY}-${vfxDownY}]


		; transform vfxDown X,Y and vfxUp X,Y  to source coordinates
		
		; first, ScreenToClient.
		vfxDownX:Dec[${UIElement[${frameid}].AbsoluteX}]
		vfxDownY:Dec[${UIElement[${frameid}].AbsoluteY}]

		vfxUpX:Dec[${UIElement[${frameid}].AbsoluteX}]
		vfxUpY:Dec[${UIElement[${frameid}].AbsoluteY}]

		; scale against the source size
		variable string name
		name:Set["${UIElement[${windowid}].GetMetadata[feedoutput].Escape}"]
		variable int srcWidth		
		variable int srcHeight
		srcWidth:Set[${VideoFeed.Source["${name.Escape}"].Width}]
		srcHeight:Set[${VideoFeed.Source["${name.Escape}"].Height}]

		variable float srcxFactor
		variable float srcyFactor
		srcxFactor:Set[${srcWidth}/${UIElement[${frameid}].Width}]
		srcyFactor:Set[${srcHeight}/${UIElement[${frameid}].Height}]	
		
		vfxDownX:Set[${vfxDownX}*${srcxFactor}]
		vfxDownY:Set[${vfxDownY}*${srcyFactor}]
		vfxUpX:Set[${vfxUpX}*${srcxFactor}]
		vfxUpY:Set[${vfxUpY}*${srcyFactor}]

		variable int srcX
		variable int srcY
		srcX:Set[${VideoFeed.Source["${name.Escape}"].X}]
		srcY:Set[${VideoFeed.Source["${name.Escape}"].Y}]

		vfxDownX:Inc[${srcX}]
		vfxDownY:Inc[${srcY}]
		vfxUpX:Inc[${srcX}]
		vfxUpY:Inc[${srcY}]



		;echo Source points = ${vfxDownX},${vfxDownY} to ${vfxUpX},${vfxUpY}

		variable string srcWnd
		if ${VideoFeed.Source["${name.Escape}"].Session.Length}
		{
			if ${name.Equal["${VideoFeed.Source["${name.Escape}"].Session.Escape}"]}
			{
				ISBoxerUI:PopupText["The Video FX Source '${name.Escape}' should remain full screen. Create a new Source in that window to crop!"]
				return
			}

			srcWnd:Set["${VideoFeed.Source["${name.Escape}"].Session.Escape}"]
;			relay uplink "timed 0 noop \\\${VideoFeed:RegisterSource[\"${name.Escape}\",\"${srcWnd.Escape}\",${vfxDownX},${vfxDownY},${vfxUpX},${vfxUpY}]}"
;			atom(globalkeep) isboxervideofeeds(string action, string value, bool issource, int x, int y, int width, int height, int alpha, string bordercolor, bool use_mouse, bool use_keyboard, string keymapname, string mappedkeyname, bool use_focus_hotkey)

			relay "${srcWnd.Escape}" "isboxervideofeeds add \"${name.Escape}\" 1 ${vfxDownX} ${vfxDownY} ${Math.Calc[${vfxUpX}-${vfxDownX}].Int} ${Math.Calc[${vfxUpY}-${vfxDownY}].Int}"
		}
		else
		{
			srcWnd:Set["${VideoFeed.Source["${name.Escape}"].Window.HWND.Hex}"]
			relay uplink "timed 0 noop \\\${VideoFeed:RegisterSource[\"${name.Escape}\",\"${srcWnd.Escape}\",${vfxDownX},${vfxDownY},${vfxUpX},${vfxUpY}]}"
		}
		

		ISBoxerUI:PopupText["Cropping Video FX Source '${name.Escape}' to ${vfxDownX},${vfxDownY} ${Math.Calc[${vfxUpX}-${vfxDownX}].Int}x${Math.Calc[${vfxUpY}-${vfxDownY}].Int}",2500,1500]
		; crop the viewer exactly the original click locations.
		;echo timed 1 ISBoxerUI:AddVideoFeed[0,"${UIElement[${windowid}].GetMetadata[feedoutput].Escape}",${vfxViewX},${vfxViewY},${vfxViewWidth},${vfxViewHeight},"${UIElement[${windowid}].GetMetadata[opacity].Escape}","${UIElement[${windowid}].GetMetadata[bordercolor].Escape}","${UIElement[${windowid}].GetMetadata[use mouse].Escape}","${UIElement[${windowid}].GetMetadata[use keyboard].Escape}","${UIElement[${windowid}].GetMetadata[key map].Escape}","${UIElement[${windowid}].GetMetadata[mapped key].Escape}",1,"${UIElement[${windowid}].GetMetadata[use focus hotkey].Escape}"]
		timed 1 ISBoxerUI:AddVideoFeed[0,"${UIElement[${windowid}].GetMetadata[feedoutput].Escape}",${vfxViewX},${vfxViewY},${vfxViewWidth},${vfxViewHeight},"${UIElement[${windowid}].GetMetadata[opacity].Escape}","${UIElement[${windowid}].GetMetadata[bordercolor].Escape}","${UIElement[${windowid}].GetMetadata[use mouse].Escape}","${UIElement[${windowid}].GetMetadata[use keyboard].Escape}","${UIElement[${windowid}].GetMetadata[key map].Escape}","${UIElement[${windowid}].GetMetadata[mapped key].Escape}",1,"${UIElement[${windowid}].GetMetadata[use focus hotkey].Escape}"]
	}
	
	method DeselectWindow(int windowid)
	{
		if ${SelectedWindow}==${windowid}
		{
			SelectedWindow:Set[0]
			SelectedFrame:Set[0]
			UIElement[isboxervideofeededitor]:Hide
			UIElement[isboxerrepeaterregioneditor]:Hide
		}

		This:VideoFeedEditorRefreshList
	}

	method AddVideoFeedToList(int windowid)
	{
		if ${UIElement[${windowid}].GetMetadata[feedsource](exists)}
		{
			UIElement[videofeeds@isboxervideofeededitor]:AddItem["Source: ${UIElement[${windowid}].GetMetadata[feedsource].Escape}",${windowid}]
		}
		else
		{
			UIElement[videofeeds@isboxervideofeededitor]:AddItem["Viewer: ${UIElement[${windowid}].GetMetadata[feedoutput].Escape}",${windowid}]
		}		
	}

	method VideoFeedEditorRefreshList()
	{		
		UIElement[videofeeds@isboxervideofeededitor]:ClearItems
		This:ForEachVideoFeed[AddVideoFeedToList]
	}

	/*
	method OnClickVideo(int windowid)
	{
		variable int frameid
		frameid:Set[${UIElement[${windowid}].FindChild[videobox].ID}]
		if !${frameid}
		{
			return
		}

		if ${Bool["${UIElement[${windowid}].GetMetadata[clicktofocus].Escape}"]}
		{
			variable string sourcename
			sourcename:Set["${UIElement[${windowid}].GetMetadata[feedoutput].Escape}"]

			if ${VideoFeed.Source["${sourcename.Escape}"].Session.Length}
			{
				uplink focus "${VideoFeed.Source["${sourcename.Escape}"].Session.Escape}"
			}
			else
			{
				echo "Click to Focus: Unknown session for source named "${sourcename.Escape}"... trying the source name for kicks...
				uplink focus "${sourcename.Escape}"
			}
		}
	}
	/**/

	method SelectWindow(int windowid)
	{		
		variable int frameid
		frameid:Set[${UIElement[${windowid}].FindChild[clickbox].ID}]
		if ${frameid}
		{
			return
		}
		frameid:Set[${UIElement[${windowid}].FindChild[videobox].ID}]
		if ${frameid}
		{
			if ${windowid}!=${SelectedWindow}
			{
				SelectedWindow:Set[${windowid}]
				UIElement[videofeeds@isboxervideofeededitor].ItemByValue["${windowid}"]:Select
			}
			SelectedFrame:Set[${frameid}]

;			echo window=${This.SelectedWindow} frame=${This.SelectedFrame}

; UIElement[sets@repeater regions@tabs@isboxermain]:SelectItem["${UIElement[sets@repeater regions@tabs@isboxermain].ItemByText["${ToSelect.Escape}"].ID}"]

			if ${UIElement[${windowid}].GetMetadata[feedsource](exists)}
			{
				UIElement[issource@editor@isboxervideofeededitor].ItemByValue["1"]:Select
				UIElement[name@editor@isboxervideofeededitor]:SetText["${UIElement[${windowid}].GetMetadata[feedsource].Escape}"]
			}
			else
			{
				UIElement[issource@editor@isboxervideofeededitor].ItemByValue["0"]:Select
				UIElement[name@editor@isboxervideofeededitor]:SetText["${UIElement[${windowid}].GetMetadata[feedoutput].Escape}"]
			}

/*
		relay "all other local" "ISBoxerUI:AddVideoFeed[
		0,
		\"${UIElement[${windowid}].GetMetadata[feedoutput].Escape}\",
		${This.AbsoluteX[${frameid}]},${This.AbsoluteY[${frameid}]},
		${UIElement[${frameid}].Width},${UIElement[${frameid}].Height},
		\"${UIElement[${windowid}].GetMetadata[opacity].Escape}\",
		\"${UIElement[${windowid}].GetMetadata[bordercolor].Escape}\",
		1]"
*/

			if ${UIElement[${windowid}].GetMetadata[bordercolor].Length}
			{
				UIElement[useBorder@editor@isboxervideofeededitor]:SetChecked
				UIElement[border@editor@isboxervideofeededitor]:SetText["${UIElement[${windowid}].GetMetadata[bordercolor].Escape}"]
			}
			else
			{
				UIElement[useBorder@editor@isboxervideofeededitor]:UnsetChecked
				UIElement[border@editor@isboxervideofeededitor]:SetText["ffffff"]
			}
			UIElement[opacity@editor@isboxervideofeededitor]:SetText["${UIElement[${windowid}].GetMetadata[opacity].Escape}"]

			UIElement[feedx@editor@isboxervideofeededitor]:SetText[${This.AbsoluteX[${frameid}]}]
			UIElement[feedy@editor@isboxervideofeededitor]:SetText[${This.AbsoluteY[${frameid}]}]
			UIElement[feedwidth@editor@isboxervideofeededitor]:SetText[${UIElement[${frameid}].Width}]
			UIElement[feedheight@editor@isboxervideofeededitor]:SetText[${UIElement[${frameid}].Height}]

			if ${UIElement[${windowid}].GetMetadata[key map].Length}
			{
				UIElement[key maps@editor@isboxervideofeededitor]:SelectItem["${UIElement[key maps@editor@isboxervideofeededitor].ItemByText["${UIElement[${windowid}].GetMetadata[key map].Escape}"].ID}"]
				if ${UIElement[${windowid}].GetMetadata[mapped key].Length}
				{
					UIElement[mapped keys@editor@isboxervideofeededitor]:SelectItem["${UIElement[mapped keys@editor@isboxervideofeededitor].ItemByText["${UIElement[${windowid}].GetMetadata[mapped key].Escape}"].ID}"]
				}
				else
				{
					UIElement[mapped keys@editor@isboxervideofeededitor]:SelectItem[0]
				}
			}
			else
			{
				UIElement[key maps@editor@isboxervideofeededitor]:SelectItem[0]
				UIElement[mapped keys@editor@isboxervideofeededitor]:SelectItem[0]
			}

			;if ${UIElement[${windowid}].GetMetadata[target].Length}
			if ${Bool[${UIElement[${windowid}].GetMetadata[use mouse].Escape}]}
			{
				/*
				variable int targetid			
				targetid:Set[${UIElement[targets@editor@isboxervideofeededitor].ItemByText["${UIElement[${windowid}].GetMetadata[target].Escape}"].ID}]
				if !${targetid}
				{
					UIElement[targets@editor@isboxervideofeededitor]:AddItem["${UIElement[${windowid}].GetMetadata[target].Escape}"]
					targetid:Set[${UIElement[targets@editor@isboxervideofeededitor].ItemByText["${UIElement[${windowid}].GetMetadata[target].Escape}"].ID}]
				}
				*/

				UIElement[useRepeater@editor@isboxervideofeededitor]:SetChecked
;				UIElement[targets@editor@isboxervideofeededitor]:SelectItem["${targetid}"]
				if ${Bool[${UIElement[${windowid}].GetMetadata[use keyboard].Escape}]}
					UIElement[useFocusHotkey@editor@isboxervideofeededitor]:SetChecked
				else
					UIElement[useFocusHotkey@editor@isboxervideofeededitor]:UnsetChecked
			}
			else
			{
				UIElement[useRepeater@editor@isboxervideofeededitor]:UnsetChecked
				UIElement[useKeyboard@editor@isboxervideofeededitor]:UnsetChecked
;				UIElement[targets@editor@isboxervideofeededitor]:SelectItem[0]
			}

			if ${Bool[${UIElement[${windowid}].GetMetadata[use focus hotkey].Escape}]}
			{
				UIElement[useFocusHotkey@editor@isboxervideofeededitor]:SetChecked
			}
			else
			{
				UIElement[useFocusHotkey@editor@isboxervideofeededitor]:UnsetChecked
			}

;			UIElement[issource@editor@isboxervideofeededitor]
			UIElement[isboxervideofeededitor]:Show
			return	
		}
	}

	variable int nextregionid=1
}

variable(global) isboxerui ISBoxerUI

atom(globalkeep) isboxerdebugging(string debugtype, int value)
{
	if ${debugtype.Equal["all"]}
	{
		ISBoxerUI.DebugAll:Set[${value}]
		return
	}
	if ${debugtype.Equal["console"]}
	{
		switch ${value}
		{
		case -1
			UIElement[isboxerconsole]:Toggle
			break
		case 0
			UIElement[isboxerconsole]:Hide
			break
		case 1
			UIElement[isboxerconsole]:Show
			break
		}
		return
	}
	ISBoxerUI.DebugTypes:Set["${debugtype.Escape}",${value}]
}

atom(globalkeep) isboxervideofeeds(string action, string value, bool issource, int x, int y, int width, int height, int alpha, string bordercolor, bool use_mouse, bool use_keyboard, string keymapname, string mappedkeyname, bool use_focus_hotkey)
{
	switch ${action}
	{
    case Load
		ISBoxerUI:LoadMyVideoFeeds["${value.Escape}"]
		return
    case Clear
		ISBoxerUI:ClearVideoFeeds
		return
    case Show
		ISBoxerUI:ShowVideoFeed["${value.Escape}"]
		return
    case Hide
		ISBoxerUI:HideVideoFeed["${value.Escape}"]
		return
    case Add
		ISBoxerUI:AddVideoFeed[${issource},"${value.Escape}",${x},${y},${width},${height},${alpha},"${bordercolor.Escape}","${use_mouse}",${use_keyboard},"${keymapname.Escape}","${mappedkeyname.Escape}",0,${use_focus_hotkey}]
		return
    case Remove
		ISBoxerUI:PermanentlyRemoveVideoFeed[${issource},"${value.Escape}"]
		return
	default
		echo \ayVideoFeedsAction: Unrecognized instruction '${action.Escape}'
		return
	}			
}

function main()
{
  ISBoxerUI:LoadRepeaterRegions["${ISBoxerCharacterSet.Escape}.${ISBoxerCharacter.Escape}"]
  ISBoxerUI:LoadVideoFeeds["${ISBoxerCharacterSet.Escape}.${ISBoxerCharacter.Escape}"]
  ISBoxerUI:LoadClickBars["${ISBoxerCharacterSet.Escape}.${ISBoxerCharacter.Escape}"]
  ISBoxerUI:LoadMenus["${ISBoxerCharacterSet.Escape}.${ISBoxerCharacter.Escape}"]
  while 1
  {    
	waitframe
	ISBoxerUI:ProcessFrame
  }
}

atom atexit()
{
/*
	if ${ISBoxerUI.PositionsLoaded} && ${ISBoxerSlot}==1
	{
		ISBoxerUI:SaveClickBarPositions
	}
/**/
	ui -unload isboxerui.xml
	ui -unload isboxertoolkit.clickbars.xml
	variable int id
	variable int nextid
	id:Set[${UIElement[screen].Children.ID}]
	while ${id}
	{
		nextid:Set[${UIElement[${id}].Next.ID}]
		if ${UIElement[${id}].GetMetadata[isboxer](exists)}
		{
			UIElement[${id}]:Destroy
		}

		id:Set[${nextid}]		
	}	
}
