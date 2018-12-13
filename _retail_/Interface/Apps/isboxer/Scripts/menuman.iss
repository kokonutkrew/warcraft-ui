objectdef menuTemplate
{
	variable int NumButtons=-1

	variable string BackgroundColor=ff003300

	variable bool ClickThrough
	variable bool Popup

	variable int Border=1
	variable string BorderColor=FFFFFFFF
	variable string BackgroundImage
	variable float Alpha=1

	variable int frameWidth
	variable int frameHeight

	; Button generation
	variable int buttonWidth
	variable int buttonHeight

	; Image
	variable string buttonImage
	variable string buttonImageHover
	variable string buttonImagePressed

	; Style
	variable float buttonAlpha=1
	variable string buttonBackgroundColor=FF000000
	variable string buttonBorderColor=FFFFFFFF
	variable int buttonBorder=1
	variable string buttonFontColor=FFFFFFFF
	variable int buttonFontBold=-1
	variable int buttonFontSize=-1
	variable string buttonFontName

	member:int GetButtonElementID(string menu_name, int num_button)
	{
		return ${UIElement[buttons@${menu_name.Escape}].FindUsableChild[btn${num_button},lguielement].ID}
	}

	member:int GenerateWindow(string menu_name, int X, int Y)
	{
		variable int UIElementID
		UIElementID:Set[${UIElement[screen].AddChild[window,"${menu_name.Escape}","${This.GenerateBlankXML["${menu_name.Escape}",${X},${Y}].Escape}","ISBoxerUI"].ID}]
		if ${UIElement[${UIElementID}].Type.Equal[windowclient]}
			UIElementID:Set[${UIElement[${UIElementID}].Parent.ID}]

		UIElement[titlebar@${menu_name.Escape}]:AddChild[button,"sync","<button name='sync' template='clickbars.window.TitleBar.Sync'><OnLeftClick><![CDATA[\nrelay all \"UIElement[\\\"\${This.Parent.Parent.Name.Escape}\\\"]:SetX[\${This.Parent.Parent.X}]:SetY[\${This.Parent.Parent.Y}]\"\n]]></OnLeftClick></button>"]
		return ${UIElementID}
	}

	member:string GenerateBlankXML(string menu_name, int X, int Y)
	{
		echo "MenuMan: menuTemplate.GenerateBlankXML not implemented in menuTemplate base class!"
		return ""
	}

	method SetPosition(int UIElementID, int X, int Y)
	{
		UIElement[${UIElementID}]:SetX[${X}]:SetY[${Y}]
	}

	method OnMenuGUIStarted(string menu_name, bool was_already_started)
	{
;		if !${was_already_started}
		{
			variable settingsetref positionsSet
			positionsSet:Set["${LavishSettings.FindSet["MenuMan"].FindSet["Positions"]}"]

			if !${positionsSet.FindSetting["${menu_name.Escape}"](exists)}
				return
		
			variable int UIElementID
			UIElementID:Set[${MenuMan.Menus.Element["${menu_name.Escape}"].UIElementID}]
			This:SetPosition["${UIElementID}",${positionsSet.FindSetting["${menu_name.Escape}"].String}]		
		}
	}

	method OnMenuButtonPress(string menu_name)
	{
		
	}

	method OnMenuButtonRelease(string menu_name)
	{
		if ${Popup}
		{
			MenuMan.Menus.Element["${menu_name.Escape}"]:StopGUI[1]
		}
	}
}


objectdef gridmenuTemplate inherits menuTemplate
{
	; grid template style
	variable int xMargin
	variable int yMargin

	variable int Rows
	variable int Columns

	member:string GenerateBlankXML(string menu_name, int X, int Y)
	{
		variable string xml
		xml:Set["<Window name='${menu_name.Replace[\"'\",\"`\"].Escape}'>"]

		xml:Concat["<Width>${This.frameWidth}</Width>\n"]
		xml:Concat["<Height>${Math.Calc[${This.frameHeight}+14].Int}</Height>\n"]
		xml:Concat["<Title>${menu_name.Escape}</Title>\n"]
		xml:Concat["<BackgroundColor>00000000</BackgroundColor>\n"]
		xml:Concat["<X>${X}</X><Y>${Y}</Y>\n"]
		xml:Concat["<Visible>1</Visible><Border>0</Border><StorePosition>0</StorePosition>\n"]

		xml:Concat["<OnLoad><![CDATA[\nThis:SetMetadata[menuman,1]:SetMetadata[menu,\"${menu_name.Escape}\"]\n"]
		/*
		if ${This.BackgroundImage.Length}
		{
			variable string colorMask
			colorMask:Set["${UIElement[${This.Image.Escape}@clickbarimages].Texture.ColorMask.Hex}"]
			if ${colorMask.Equal[NULL]}
				xml:Concat["noop \${This:SetTexture["<Texture Filename=\"${UIElement[${This.Image.Escape}@clickbarimages].Texture.Filename.Escape}\"><Border>${UIElement[${This.Image.Escape}@clickbarimages].Texture.Border}</Border></Texture>}"]
			else
				xml:Concat["noop \${This:SetTexture["<Texture Filename=\"${UIElement[${This.Image.Escape}@clickbarimages].Texture.Filename.Escape}\"><Border>${UIElement[${This.Image.Escape}@clickbarimages].Texture.Border}</Border><ColorMask>${colorMask.Escape}</ColorMask></Texture>}"]
		}
		/**/

		xml:Concat[""]
		xml:Concat["]]></OnLoad>\n"]
		if ${This.BackgroundImage.Length}
		{
			xml:Concat["${MenuMan.GenerateImageXML[Texture,"${This.BackgroundImage.Escape}"].Escape}"]
		}

		xml:Concat["<Children>\n"]
		xml:Concat["<Table Name='buttons'>\n"]
		xml:Concat["<Width>100%</Width><Height>100%</Height><Alpha>${This.Alpha}</Alpha><BackgroundColor>${This.BackgroundColor.Escape}</BackgroundColor>\n"]
		xml:Concat["<Border>${This.Border}</Border><BorderColor>${This.BorderColor.Escape}</BorderColor>\n"]

		variable int Row=1
		variable int Col=1

		variable int RowHeight
		variable int ColWidth

		variable int num_button=1
;		variable int xMargin2
;		variable int yMargin2
;		xMargin2:Set[${This.xMargin}*2]
;		yMargin2:Set[${This.yMargin}*2]

		RowHeight:Set[(${This.frameHeight}-${This.yMargin})/${This.Rows}]
		ColWidth:Set[(${This.frameWidth}-${This.xMargin})/${This.Columns}]

;		echo ${menu_name.Escape}: Frame size ${This.frameWidth}x${This.frameHeight}  Cell size ${ColWidth}x${RowHeight}  Button margin ${This.xMargin}x${This.yMargin}  Desired button size ${This.buttonWidth}x${This.buttonHeight}  Actual button size ${Math.Calc64[${ColWidth}-${This.xMargin}]}x${Math.Calc64[${RowHeight}-${This.yMargin}]}

		for (${Row}<=${This.Rows} ; Row:Inc )
		{
			xml:Concat["<Row>"]
			for (Col:Set[1]; ${Col}<=${This.Columns} ; Col:Inc )
			{
				xml:Concat["<Cell>"]
				xml:Concat["<Width>${ColWidth}</Width><Height>${RowHeight}</Height>\n"]
				xml:Concat["<Children>\n<Button name='btn${num_button}'>\n"]
				xml:Concat["<X>${This.xMargin}</X>"]
				xml:Concat["<Y>${This.yMargin}</Y>"]
				xml:Concat["<Width>r${This.xMargin}</Width>"]
				xml:Concat["<Height>r${This.yMargin}</Height>\n"]
				if ${This.buttonAlpha}>=0
					xml:Concat["<Alpha>${This.buttonAlpha}</Alpha>"]
				if ${This.buttonBorder}>=0
					xml:Concat["<Border>${This.buttonBorder}</Border>"]
				if ${This.buttonBackgroundColor.Length}
					xml:Concat["<BackgroundColor>${This.buttonBackgroundColor.Escape}</BackgroundColor>"]				
				if ${This.buttonBorderColor.Length}
					xml:Concat["<BorderColor>${This.buttonBorderColor.Escape}</BorderColor>"]				

				if ${This.buttonImage.Length}
				{
					xml:Concat["${MenuMan.GenerateImageXML[Texture,"${This.buttonImage.Escape}"].Escape}"]
				}
				if ${This.buttonImageHover.Length}
				{
					xml:Concat["${MenuMan.GenerateImageXML[TextureHover,"${This.buttonImageHover.Escape}"].Escape}"]
				}
				if ${This.buttonImagePressed.Length}
				{
					xml:Concat["${MenuMan.GenerateImageXML[TexturePressed,"${This.buttonImagePressed.Escape}"].Escape}"]
				}

				/*
				if ${This.buttonImage.Length} || ${This.buttonImageHover.Length} || ${This.buttonImagePressed.Length}
				{
					xml:Concat["<OnLoad><![CDATA[\n"]
					xml:Concat["menuman -buttonimages \"Menu\" \"${menu_name.Escape}\" ${num_button} \"\\\"${This.buttonImage.Escape}\\\",\\\"${This.buttonImageHover.Escape}\\\",\\\"${This.buttonImagePressed.Escape}\\\"\""]
					xml:Concat["]]></OnLoad>\n"]
				}
				*/

				xml:Concat["<Font template='button.Font'>"]
				if ${This.buttonFontName.Length}
					xml:Concat["<Name>${This.buttonFontName}</Name>"]
				if ${This.buttonFontColor.Length}
					xml:Concat["<Color>${This.buttonFontColor.Escape}</Color>"]
				if ${This.buttonFontBold}>=0
					xml:Concat["<Bold>${This.buttonFontBold}</Bold>"]
				if ${This.buttonFontSize}>=0
					xml:Concat["<Size>${This.buttonFontSize}</Size>"]
				xml:Concat["</Font>\n"]

;				xml:Concat["<Text>${num_button}</Text>\n"]
				xml:Concat["<Texture/><TexturePressed/><TextureHover/>\n"]
				xml:Concat["<OnMouseEnter>noop \${MenuMan:OnMenuButtonState[\"${menu_name.Escape}\",\"${num_button}\",\"Enter\"]}</OnMouseEnter>\n"]
				xml:Concat["<OnMouseExit>noop \${MenuMan:OnMenuButtonState[\"${menu_name.Escape}\",\"${num_button}\",\"Exit\"]}</OnMouseExit>\n"]
				xml:Concat["<OnLeftDown>noop \${MenuMan:OnMenuButtonState[\"${menu_name.Escape}\",\"${num_button}\",\"Press\",Mouse1]}</OnLeftDown>\n"]
				xml:Concat["<OnLeftClick>noop \${MenuMan:OnMenuButtonState[\"${menu_name.Escape}\",\"${num_button}\",\"Release\",Mouse1]}</OnLeftClick>\n"]
				xml:Concat["<OnRightDown>noop \${MenuMan:OnMenuButtonState[\"${menu_name.Escape}\",\"${num_button}\",\"Press\",Mouse2]}</OnRightDown>\n"]
				xml:Concat["<OnRightClick>noop \${MenuMan:OnMenuButtonState[\"${menu_name.Escape}\",\"${num_button}\",\"Release\",Mouse2]}</OnRightClick>\n"]
				
				;OnMenuButtonState(string menu_name, int num_button, string state, string state_option)

				xml:Concat["</Button>\n</Children>"]
				xml:Concat["</Cell>"]

				num_button:Inc
			}
			xml:Concat["</Row>\n"]
		}


		xml:Concat["</Table>"]
		xml:Concat["</Children>"]
		xml:Concat["</Window>"]
		;echo "${xml.Escape}"
		return "${xml.Escape}"
	}

}

objectdef xmlmenuTemplate inherits menuTemplate
{
	variable string XMLFile
	variable string ElementName

	method DetectNumButtons()
	{
		variable int UIElementID

		variable string menu_name="xmltemplate_detectnumbuttons"

		noop ${Execute["ui -load -skin ISBoxerUI \"${This.XMLFile.Escape}\" \"${This.ElementName.Escape}\" \"${menu_name.Escape}\""]}
		;ui -load -skin ISBoxerUI "${This.XMLFile.Escape}" "${This.ElementName.Escape}" "${menu_name.Escape}"
		UIElementID:Set["${UIElement["${menu_name.Escape}"].ID}"]

		variable int i = 1
		
		variable int buttonElementID
		
		buttonElementID:Set["${This.GetButtonElementID["${menu_name.Escape}",${i}]}"]
		while ${buttonElementID}
		{
			This.NumButtons:Set["${i}"]

			i:Inc
			buttonElementID:Set["${This.GetButtonElementID["${menu_name.Escape}",${i}]}"]
		}

		echo DetectNumButtons: ${This.NumButtons}
		UIElement[${UIElementID}]:Destroy
	}

	member:int GenerateWindow(string menu_name, int X, int Y)
	{
		variable int UIElementID

		noop ${Execute["ui -load -skin ISBoxerUI \"${This.XMLFile.Escape}\" \"${This.ElementName.Escape}\" \"${menu_name.Escape}\""]}
		UIElementID:Set["${UIElement["${menu_name.Escape}"].ID}"]

		UIElement["${UIElementID}"]:SetMetadata[menuman,1]:SetMetadata[menu,"${menu_name.Escape}"]:SetTitle["${menu_name.Escape}"]
		UIElement["${UIElementID}"]:SetX[${X}]:SetY[${Y}]
		UIElement[titlebar@${menu_name.Escape}]:AddChild[button,"sync","<button name='sync' template='clickbars.window.TitleBar.Sync'><OnLeftClick><![CDATA[\nrelay all \"UIElement[\\\"\${This.Parent.Parent.Name.Escape}\\\"]:SetX[\${This.Parent.Parent.X}]:SetY[\${This.Parent.Parent.Y}]\"\n]]></OnLeftClick></button>"]

		variable int i = 1
		
		variable int buttonElementID
		
		buttonElementID:Set["${This.GetButtonElementID["${menu_name.Escape}",${i}]}"]
		while ${buttonElementID}
		{
			UIElement["${buttonElementID}"]:SetMetadata[menuman,1]:SetMetadata[menu,"${menu_name.Escape}"]:SetMetadata[menu_button,${i}]
			This.NumButtons:Set["${i}"]

			i:Inc
			buttonElementID:Set["${This.GetButtonElementID["${menu_name.Escape}",${i}]}"]
		}


		return ${UIElementID}
	}

}

objectdef radialmenuTemplate inherits menuTemplate
{   
	variable int StartOffset
	variable float RadiusX
	variable float RadiusY
	
	method Initialize()
	{
		Popup:Set[1]
	}

	member:string GenerateBlankXML(string menu_name, int X, int Y)
	{
		variable string xml
		xml:Set["<Window name='${menu_name.Replace[\"'\",\"`\"].Escape}'>"]

		xml:Concat["<Width>${This.frameWidth}</Width>"]
		xml:Concat["<Height>${Math.Calc[${This.frameHeight}+14].Int}</Height>"]
		xml:Concat["<Title>${menu_name.Escape}</Title>"]
		xml:Concat["<BackgroundColor>00000000</BackgroundColor>"]
		xml:Concat["<X>${X}</X><Y>${Y}</Y>"]
		xml:Concat["<Visible>1</Visible><Border>0</Border><StorePosition>0</StorePosition>"]

		xml:Concat["<OnLoad><![CDATA[\nThis:SetMetadata[menuman,1]:SetMetadata[menu,\"${menu_name.Escape}\"]\n]]></OnLoad>"]

		if ${This.BackgroundImage.Length}
		{
			xml:Concat["${MenuMan.GenerateImageXML[Texture,"${This.BackgroundImage.Escape}"].Escape}"]
		}

		xml:Concat["<Children>"]
		xml:Concat["<Frame Name='buttons'>"]
		xml:Concat["<Width>100%</Width><Height>100%</Height><Alpha>${This.Alpha}</Alpha><BackgroundColor>${This.BackgroundColor}</BackgroundColor>\n"]
		xml:Concat["<Border>${This.Border}</Border><BorderColor>${This.BorderColor.Escape}</BorderColor>\n"]
		xml:Concat["<Children>\n"]

		variable int num_button=1

		  variable float degrees
		  variable float degreesPer
		  degreesPer:Set[360/${This.NumButtons}]
		  degrees:Set[${StartOffset}]

		  variable float radiusX=${This.RadiusX}
		  variable float radiusY=${This.RadiusY}
		  if ${radiusX}<1
			  radiusX:Set[${This.frameWidth}/3]
		  if ${radiusY}<1
			  radiusY:Set[${This.frameHeight}/3]

		  variable int PointX
		  variable int PointY

		  variable int centerX
		  centerX:Set[${Math.Calc[${This.frameWidth}/2]}]
		  variable int centerY
		  centerY:Set[${Math.Calc[${This.frameHeight}/2]}]

		for (${num_button}<=${This.NumButtons} ; num_button:Inc )
		{

;              		echo PointX:Set[\${Math.Calc[(${radiusX}*${Math.Sin[${degrees}].Milli})+${centerX}]}]
              		PointX:Set[${Math.Calc[(${radiusX}*${Math.Sin[${degrees}].Milli})+${centerX}]}]
			PointX:Dec[${Math.Calc[${This.buttonWidth}/2]}]

;               		echo PointY:Set[\${Math.Calc[(-${radiusY}*${Math.Cos[${degrees}].Milli})+${centerY}]}]
               		PointY:Set[${Math.Calc[(-${radiusY}*${Math.Cos[${degrees}].Milli})+${centerY}]}]
			PointY:Dec[${Math.Calc[${This.buttonHeight}/2]}]

		         degrees:Inc[${degreesPer}]



				xml:Concat["<Button name='btn${num_button}'>"]
				xml:Concat["<X>${PointX}</X>"]
				xml:Concat["<Y>${PointY}</Y>"]
				xml:Concat["<Width>${This.buttonWidth}</Width>"]
				xml:Concat["<Height>${This.buttonHeight}</Height>"]
				if ${This.buttonAlpha}>=0
					xml:Concat["<Alpha>${This.buttonAlpha}</Alpha>"]
				if ${This.buttonBorder}>=0
					xml:Concat["<Border>${This.buttonBorder}</Border>"]
				if ${This.buttonBackgroundColor.Length}
					xml:Concat["<BackgroundColor>${This.buttonBackgroundColor.Escape}</BackgroundColor>"]				
				if ${This.buttonBorderColor.Length}
					xml:Concat["<BorderColor>${This.buttonBorderColor.Escape}</BorderColor>"]	
					
				if ${This.buttonImage.Length}
				{
					xml:Concat["${MenuMan.GenerateImageXML[Texture,"${This.buttonImage.Escape}"].Escape}"]
				}
				if ${This.buttonImageHover.Length}
				{
					xml:Concat["${MenuMan.GenerateImageXML[TextureHover,"${This.buttonImageHover.Escape}"].Escape}"]
				}
				if ${This.buttonImagePressed.Length}
				{
					xml:Concat["${MenuMan.GenerateImageXML[TexturePressed,"${This.buttonImagePressed.Escape}"].Escape}"]
				}
								
				xml:Concat["<Font template='button.Font'>"]
				if ${This.buttonFontName.Length}
					xml:Concat["<Name>${This.buttonFontName}</Name>"]
				if ${This.buttonFontColor.Length}
					xml:Concat["<Color>${This.buttonFontColor.Escape}</Color>"]
				if ${This.buttonFontBold}>=0
					xml:Concat["<Bold>${This.buttonFontBold}</Bold>"]
				if ${This.buttonFontSize}>=0
					xml:Concat["<Size>${This.buttonFontSize}</Size>"]			
				xml:Concat["</Font>"]

;				xml:Concat["<Text>${num_button}</Text>"]
				xml:Concat["<Texture/><TexturePressed/><TextureHover/>"]
				xml:Concat["<OnMouseEnter>noop \${MenuMan:OnMenuButtonState[\"${menu_name.Escape}\",\"${num_button}\",\"Enter\"]}</OnMouseEnter>"]
				xml:Concat["<OnMouseExit>noop \${MenuMan:OnMenuButtonState[\"${menu_name.Escape}\",\"${num_button}\",\"Exit\"]}</OnMouseExit>"]
				xml:Concat["<OnLeftDown>noop \${MenuMan:OnMenuButtonState[\"${menu_name.Escape}\",\"${num_button}\",\"Press\",Mouse1]}</OnLeftDown>"]
				xml:Concat["<OnLeftClick>noop \${MenuMan:OnMenuButtonState[\"${menu_name.Escape}\",\"${num_button}\",\"Release\",Mouse1]}</OnLeftClick>"]
				xml:Concat["<OnRightDown>noop \${MenuMan:OnMenuButtonState[\"${menu_name.Escape}\",\"${num_button}\",\"Press\",Mouse2]}</OnRightDown>\n"]
				xml:Concat["<OnRightClick>noop \${MenuMan:OnMenuButtonState[\"${menu_name.Escape}\",\"${num_button}\",\"Release\",Mouse2]}</OnRightClick>\n"]
				
				;OnMenuButtonState(string menu_name, int num_button, string state, string state_option)

				xml:Concat["</Button>\n"]
		}

		
		xml:Concat["</Children></Frame>"]
		xml:Concat["</Children>"]
		xml:Concat["</Window>"]
;		echo "${xml.Escape}"
		return "${xml.Escape}"
	}

	method OnMenuGUIStarted(string menu_name, bool was_already_started)
	{
		if ${was_already_started}
		{
			MenuMan.Menus.Element["${menu_name.Escape}"]:StopGUI
			return
		}

		MenuMan.Menus.Element["${menu_name.Escape}"]:HideTitleBar:CenterOnCursor
	}

	/*
	method OnMenuButtonPress(string menu_name)
	{
				
	}

	method OnMenuButtonRelease(string menu_name)
	{
	}
	/**/
}

objectdef hotkeyLayout
{
	variable string Name
	variable string AttachedMenu
	variable bool Bound

	; Soft-attached Hotkeys highlight menu buttons but do not activate the command via Hotkeys, only by clicks.
	variable bool BoundSoft

	variable index:string Hotkeys

	method Initialize(string name, int NumHotkeys)
	{
		This.Name:Set["${name.Escape}"]

		Hotkeys:Resize[${NumHotkeys}]
		variable int i = 1
		while ${i}<=${NumHotkeys}
		{
			Hotkeys:Insert[NONE]
			i:Inc
		}
	}

	method Shutdown()
	{
		This:UnBind
	}

	method Pause()
	{
		This:UnBind
	}

	method UnPause()
	{
		if ${AttachedMenu.Length}
			This:Bind[${This.BoundSoft}]
	}

	method OnState(int NumHotkey, bool pressed)
	{		
		if !${This.Bound} || !${This.AttachedMenu.Length}
		{
;			echo !${This.Bound} || !${This.AttachedMenu.Length}
			return
		}

		variable string stateOption
		if ${BoundSoft}
			stateOption:Set[",HIGHLIGHT"]

		if ${pressed}
			MenuMan:OnMenuButtonState["${This.AttachedMenu.Escape}",${NumHotkey},Press${stateOption}]
		else
			MenuMan:OnMenuButtonState["${This.AttachedMenu.Escape}",${NumHotkey},Release${stateOption}]
	}


	method Attach(string menuName, bool bindSoft)
	{
		; echo hotkeyLayout[${This.Name.Escape}]:Attach["${menuName.Escape}",${bindSoft}]
		if !${menuName.Equal["${This.AttachedMenu.Escape}"]}
		{
			MenuMan:OnMenuHotkeyLayoutDetached["${This.AttachedMenu.Escape}","${This.Name.Escape}"]
		}

		AttachedMenu:Set["${menuName.Escape}"]
		This:Bind[${bindSoft}]
		MenuMan:OnMenuHotkeyLayoutAttached["${menuName.Escape}","${This.Name.Escape}"]
		;echo HotkeyLayout:Attach["${menuName.Escape}"] -- AttachedMenu = "${AttachedMenu.Escape}"
	}

	method DetachCurrentMenu()
	{
		if ${AttachedMenu.Length}
			This:Detach["${AttachedMenu.Escape}"]
	}

	method Detach(string menuName)
	{
		;echo HotkeyLayout:Detach["${menuName.Escape}"] -- AttachedMenu = "${AttachedMenu.Escape}"
		if ${AttachedMenu.Length} && ${AttachedMenu.Equal["${menuName.Escape}"]}
		{
			AttachedMenu:Set[""]
			This:UnBind
			MenuMan:OnMenuHotkeyLayoutAttached["${menuName.Escape}","${This.Name.Escape}"]
		}		
	}

	method SetHotkey(int NumHotkey, string KeyCombo)
	{
		Hotkeys:Set[${NumHotkey},"${KeyCombo.Escape}"]
		if ${This.Bound}
		{
			Input.Bind["${This.GetBindName[${NumHotkey}].Escape}"]:SetCombo["${KeyCombo.Escape}"]
		}
	}

	method ApplyTo(string dest_layout_name, int dest_offset)
	{
		variable int i = 1

		while ${i}<=${Hotkeys.Size}
		{
			MenuMan.HotkeyLayouts.Element["${dest_layout_name.Escape}"]:SetHotkey[${dest_offset},"${This.Hotkeys[${i}].Escape}"]
			dest_offset:Inc
			i:Inc
		}		
	}

	; MenuMan.HotkeyLayouts.Element["${src_layout_name.Escape}"]:ApplyTo["${dest_layout_name.Escape}",${dest_offset}]

	member GetBindName(int NumHotkey)
	{
		return "hotkeyLayout_${This.Name.Escape}_btn${NumHotkey}"
	}

	member:bool ButtonMatchesCombo(string Button, string Combo, bool Position)
	{
		variable int buttonLength=${Button.Length}
		variable int comboLength=${Combo.Length}

		if ${buttonLength} > ${comboLength}
		{
			return 0
		}

		if ${Combo.Right["${Button.Length}"].NotEquals["${Button.Escape}"]}
		{
			return 0
		}	

		; it at least ends with the button name. check modifiers if it's a Press, otherwise just say yes to ensure the highlight is removed.
		if !${Position}
			return 1

		if ${Combo.Find["+"]}>1
		{
			; combo probably has modifiers. check based on IS hotkey rules (l/r modifiers are the same, otherwise modifiers must exactly match)

			if ${Input.Button[160].Pressed(int)}==1 || ${Input.Button[161].Pressed(int)}==1
			{
				if !${Combo.Find[160+]} && !${Combo.Find[161+]}
				{
					; shift not in combo, but is pressed
					return 0
				}
			}

			if ${Input.Button[162].Pressed(int)}==1 || ${Input.Button[163].Pressed(int)}==1
			{
				if !${Combo.Find[162+]} && !${Combo.Find[163+]}
				{
					; ctrl not in combo, but is pressed
					return 0
				}
			}

			if ${Input.Button[164].Pressed(int)}==1 || ${Input.Button[165].Pressed(int)}==1
			{
				if !${Combo.Find[164+]} && !${Combo.Find[165+]}
				{
					; alt not in combo, but is pressed
					return 0
				}
			}
		}



		return 1
	}

	method ButtonMoved(string Button, bool Position, uint TimeStamp)
	{
			variable int i = 1
			variable string Name

			while ${i}<=${Hotkeys.Size}
			{
				if ${This.ButtonMatchesCombo["${Button.Escape}","${This.Hotkeys[${i}].Escape}","${Position}"]}
				{
					noop \${MenuMan:OnHotkey[\"${This.Name.Escape}\",${i},${Position}]}
				}

				i:Inc
			}	
	}

	method Bind(bool bindSoft)
	{
		if ${This.Bound}
		{
			if ${bindSoft}==${This.BoundSoft}
			{
				return
			}
			This:UnBind
		}

		if ${bindSoft}
		{
			Event[OnButtonMove]:AttachAtom[This:ButtonMoved]			
			This.BoundSoft:Set[1]
		}
		else
		{
			variable int i = 1
			variable string Name

			while ${i}<=${Hotkeys.Size}
			{
				Name:Set["${This.GetBindName[${i}].Escape}"]

				Input:Bind[-press,"${Name.Escape}","${This.Hotkeys[${i}].Escape}","noop \${MenuMan:OnHotkey[\"${This.Name.Escape}\",${i},1]}"]			
				Input:Bind[-release,"${Name.Escape}","${This.Hotkeys[${i}].Escape}","noop \${MenuMan:OnHotkey[\"${This.Name.Escape}\",${i},0]}"]			
				; echo Input:Bind[-press,"${Name.Escape}","${This.Hotkeys[${i}].Escape}","noop \${MenuMan:OnHotkey[\"${This.Name.Escape}\",${i},1]}"]			
				; echo Input:Bind[-release,"${Name.Escape}","${This.Hotkeys[${i}].Escape}","noop \${MenuMan:OnHotkey[\"${This.Name.Escape}\",${i},0]}"]			

				i:Inc
			}
			This.BoundSoft:Set[0]
		}

		This.Bound:Set[1]
	}

	method UnBind()
	{
		if !${This.Bound}
			return

		Event[OnButtonMove]:DetachAtom[This:ButtonMoved]	

		variable int i = 1
		variable string Name

		while ${i}<=${Hotkeys.Size}
		{
			Name:Set["${This.GetBindName[${i}].Escape}"]

			Input.Bind["${Name.Escape}"]:Delete
			i:Inc
		}		
		This.Bound:Set[0]
	}

	method SerializeSet(settingsetref dest_set)
	{
		variable int i = 1
		variable string Name

		dest_set:AddSetting["Capacity","${This.Hotkeys.Size}"]
		while ${i}<=${This.Hotkeys.Size}
		{
			if ${This.Hotkeys[${i}](exists)}
				dest_set:AddSetting["Hotkey ${i}","${This.Hotkeys[${i}].Escape}"]
			i:Inc		
		}
	}

	method DeserializeSet(settingsetref src_set)
	{
		variable iterator Iterator
		src_set:GetSettingIterator[Iterator]

		This.Hotkeys:Resize[${src_set.FindSetting[Capacity].Int}]

		if ${Iterator:First(exists)}
		{
			do
			{
				if ${Iterator.Key.Left[7].Equal["Hotkey "]}
				{
					This.Hotkeys[${Iterator.Key.Right[-7].Escape}]:Set["${Iterator.Value.String.Escape}"]
				}
			}
			while ${Iterator:Next(exists)}
		}
	}


	method DumpToFile()
	{
		variable settingsetref hotkeyLayoutSet

		LavishSettings:AddSet["hotkeyLayout_${This.Name.Escape}"]
		hotkeyLayoutSet:Set[${LavishSettings.FindSet["hotkeyLayout_${This.Name.Escape}"]}]
		This:SerializeSet[${hotkeyLayoutSet}]
		hotkeyLayoutSet:Export["hotkeyLayout_${This.Name.Escape}.XML"]
		hotkeyLayoutSet:Remove
	}

	method LoadFromFile()
	{
;		echo LoadFromSettings
		variable settingsetref hotkeyLayoutSet

		LavishSettings:AddSet["hotkeyLayout_${This.Name.Escape}"]
		hotkeyLayoutSet:Set[${LavishSettings.FindSet["hotkeyLayout_${This.Name.Escape}"]}]
		if ${hotkeyLayoutSet:Import["hotkeyLayout_${This.Name.Escape}.XML"](exists)}
		{
			This:DeserializeSet[${hotkeyLayoutSet}]
		}
		hotkeyLayoutSet:Remove
				
	}
}

objectdef menuButton
{
	; either ButtonLayout or Menu will probably be set...
	variable string ButtonLayout
	variable string Menu

	variable int NumButton

	; Commands
	variable string PressCommand
	variable string ReleaseCommand

	; Text
	variable string Text=NULL

	; Image
	variable string Image=NULL
	variable string ImageHover=NULL
	variable string ImagePressed=NULL

	; Style
	variable string BackgroundColor
	variable string BorderColor
	variable float Alpha=-1
	variable int Border=-1
	variable string FontColor
	variable int FontBold=-1
	variable int FontSize=-1
	variable string FontName

	; Propagation
	variable string Source
	variable set Views

	; Rendering
	variable int UIElementID
	variable bool ClickThrough

	variable string StoredState

	method Initialize(string text, string press_command, string release_command)
	{
		This.Text:Set["${text.Escape}"]
		This.PressCommand:Set["${press_command.Escape}"]
		This.ReleaseCommand:Set["${release_command.Escape}"]
	}

	method Shutdown()
	{
		This:UpdateSource[""]
	}

	method DetachSource(string button_layout, string menu_name, int num_button)
	{
		MenuMan.ButtonLayouts.Element["${button_layout.Escape}"]:DetachButtonView[${num_button},"${This.ButtonLayout.Escape}","${This.Menu.Escape}",${This.NumButton}]
	}

	method UpdateSource(string source)
	{
		if ${source.Equal[NULL]}
			source:Set[""]

		if ${This.Source.Length}
		{
			if ${This.Source.Equal["${source.Escape}"]}
				return

			; remove old source
			This:DetachSource[${source.Escape}]
		}
				
		This.Source:Set["${source.Escape}"]
	}

	method PullFrom(string button_layout, string menu_name, int num_button)
	{
;		if ${num_button}<1
;			return

		if ${menu_name.Equal[NULL]}
			menu_name:Set[""]
		if ${button_layout.Equal[NULL]}
			button_layout:Set[""]

		;echo PullFrom button_layout=${button_layout.Escape} menu_name=${menu_name.Escape} num_button=${num_button}

		if ${button_layout.Length}>0
		{
			;echo \ayMenuMan.ButtonLayouts.Element["${This.ButtonLayout.Escape}"](exists)=${MenuMan.ButtonLayouts.Element["${This.ButtonLayout.Escape}"](exists)}.. MenuMan.ButtonLayouts.Element["${button_layout.Escape}"]:AttachButtonView[${num_button},"${This.ButtonLayout.Escape}","${This.Menu.Escape}","${This.NumButton}"]
			MenuMan.ButtonLayouts.Element["${button_layout.Escape}"]:AttachButtonView[${num_button},"${This.ButtonLayout.Escape}","${This.Menu.Escape}","${This.NumButton}"]
			;echo \aydone calling AttachButtonView
		}

		if ${menu_name.Length}>0
		{
			;echo MenuMan.Menus.Element["${menu_name.Escape}"].Buttons.Buttons[${num_button}]:ApplyTo["${This.ButtonLayout.Escape}","${This.Menu.Escape}","${This.NumButton}"]
			MenuMan.Menus.Element["${menu_name.Escape}"].Buttons.Buttons[${num_button}]:ApplyTo["${This.ButtonLayout.Escape}","${This.Menu.Escape}","${This.NumButton}"]
		}
	}


	method Reset()
	{
		This.PressCommand:Set[""]
		This.ReleaseCommand:Set[""]
		This.Image:Set[""]
		This.Text:Set[""]

		if ${This.UIElementID}
		{
			UIElement[${This.UIElementID}]:SetText[""]
		}

;		UIElement[${This.UIElementID}].Texture:Copy["UIElement[${This.Image.Escape}@clickbarimages].Texture"]
	}

	method OnState(string state, string state_option)
	{
		; echo menuButton:OnState["${state.Escape}","${state_option.Escape}"]
		switch ${state}
		{
		case Press
			This:Press["${state_option.Escape}"]
			break
		case Release
			This:Release["${state_option.Escape}"]
			break
		case Enter
			break
		case Exit
			break
		}
	}

	method Press(string state_option)
	{
;		echo executing -reparse press="${PressCommand.Escape}"
		variable bool use_command=1
		variable string _ButtonLayout
		variable string _Menu
		variable int _NumButton
		_ButtonLayout:Set["${This.ButtonLayout.Escape}"]
		_Menu:Set["${This.Menu.Escape}"]
		_NumButton:Set["${This.NumButton}"]

		if (${ClickThrough} && ${state_option.Left[5].Equal["Mouse"]}) || ${state_option.Equal[Mouse2]} || ${state_option.Equal[HIGHLIGHT]}
		{
			use_command:Set[0]
		}

		if ${use_command}
		{
			if ${This.PressCommand.Length}
			{
				execute -reparse "${This.PressCommand.Escape}"
				if !${MenuMan.ButtonExists["${_Menu.Escape}","${_ButtonLayout.Escape}",${_NumButton}]}
				{
					return
				}

			}
;			else if ${Clicked}
;				press -hold "${state_option.Escape}"
		}
		else
		{
			press -hold "${state_option.Escape}"
			if ${MouseRepeater.Enabled}
				MouseRepeater:ButtonMoved["${state_option.Escape}",1,${Time.Timestamp}]
		}

		if ${This.ImagePressed.Length}
		{
			UIElement["${This.UIElementID}"].Texture:Copy["UIElement[${This.ImagePressed.Escape}@clickbarimages].Texture"]
		}

		if ${This.Menu.Length}
		{
			noop ${MenuMan_${MenuMan.Menus[${Menu}].MenuTemplate.Escape}Template:OnMenuButtonPress["${This.Menu.Escape}"]}
		}
	}

	method Release(string state_option)
	{
		variable bool use_command=1
		variable string _ButtonLayout
		variable string _Menu
		variable int _NumButton
		_ButtonLayout:Set["${This.ButtonLayout.Escape}"]
		_Menu:Set["${This.Menu.Escape}"]
		_NumButton:Set["${This.NumButton}"]

		if (${ClickThrough} && ${state_option.Left[5].Equal["Mouse"]}) || ${state_option.Equal[Mouse2]} || ${state_option.Equal[HIGHLIGHT]}
		{
			use_command:Set[0]
		}

;		echo executing -reparse release="${ReleaseCommand.Escape}"
		if ${use_command}
		{
			if ${This.ReleaseCommand.Length}
			{
				execute -reparse "${This.ReleaseCommand.Escape}"
				if !${MenuMan.ButtonExists["${_Menu.Escape}","${_ButtonLayout.Escape}",${_NumButton}]}
				{
					return
				}
			}
;			else if ${Clicked}
;				press -release "${state_option.Escape}"
		}
		else
		{
			press -release "${state_option.Escape}"
			if ${MouseRepeater.Enabled}
				MouseRepeater:ButtonMoved["${state_option.Escape}",0,${Time.Timestamp}]

		}

		if ${This.Image.Length}
		{
			UIElement["${This.UIElementID}"].Texture:Copy["UIElement[${This.Image.Escape}@clickbarimages].Texture"]
		}
		else
		{
			UIElement["${This.UIElementID}"]:SetTexture[""]
		}

		if ${This.Menu.Length}
		{
			noop ${MenuMan_${MenuMan.Menus[${Menu}].MenuTemplate.Escape}Template:OnMenuButtonRelease["${This.Menu.Escape}"]}
		}
	}

	method SetUIElementID(int element_id)
	{
		; echo SetUIElementID[${element_id}]
		This.UIElementID:Set[${element_id}]
		if ${This.UIElementID}
		{
			if !${This.Text.Equal[NULL]}
			{
				if ${KeyMapper(exists)}
					UIElement[${This.UIElementID}]:SetText["${KeyMapper.ProcessVariables["${This.Text.Escape}"].Escape}"]
				else
					UIElement[${This.UIElementID}]:SetText["${This.Text.Escape}"]
			}
			This:ApplyImage
			This:ApplyStyle
		}
	}

	method Set(string text, string press_command, string release_command)
	{
		This:UpdateSource[""]
		; echo menuButton:Set["${text.Escape}","${press_command.Escape}","${release_command.Escape}"]
		if ${This.UIElementID}
		{
			if ${KeyMapper(exists)}
				UIElement[${This.UIElementID}]:SetText["${KeyMapper.ProcessVariables["${text.Escape}"].Escape}"]
			else
				UIElement[${This.UIElementID}]:SetText["${text.Escape}"]
		}
		This.Text:Set["${text.Escape}"]
		This.PressCommand:Set["${press_command.Escape}"]
		This.ReleaseCommand:Set["${release_command.Escape}"]
		This:ApplyViews
	}

	method SetText(string text)
	{
		if ${text.Equal[NULL]}
			return

		; Text:Set["${KeyMapper.ProcessVariables["${Text.Escape}"].Escape}"]

		if ${This.UIElementID}
		{
			if ${KeyMapper(exists)}
				UIElement[${This.UIElementID}]:SetText["${KeyMapper.ProcessVariables["${text.Escape}"].Escape}"]
			else
				UIElement[${This.UIElementID}]:SetText["${text.Escape}"]
		}
		This.Text:Set["${text.Escape}"]

	}

	method SetStyle(float _Alpha=-1, string _BackgroundColor="", string _BorderColor="", int _Border=-1, string _FontName="", int _FontSize=-1, string _FontColor="", int _FontBold=-1)
	{
	;	This.Buttons[${nButton}]:SetStyle[$_{Alpha},"${_BackgroundColor.Escape}","${_BorderColor.Escape}",${_Border},"${_FontName.Escape}",${FontSize},"${FontColor.Escape}",${FontBold}]

;		echo SetStyle[${_Alpha},${_BackgroundColor.Escape},${_BorderColor.Escape},${_Border},${_FontName.Escape},size=${_FontSize},${_FontColor.Escape},bold=${_FontBold}]
		if ${_BackgroundColor.Length} && ${_BackgroundColor.NotEqual[NULL]}
			This.BackgroundColor:Set["${_BackgroundColor.Escape}"]
		if ${_BorderColor.Length} && ${_BorderColor.NotEqual[NULL]}
			This.BorderColor:Set["${_BorderColor.Escape}"]
		if ${_Alpha}>=0
			This.Alpha:Set[${_Alpha}]
		if ${_Border}>=0
			This.Border:Set[${_Border}]
		if ${_FontName.Length} && ${_FontName.NotEqual[NULL]}
			This.FontName:Set["${_FontName.Escape}"]
		if ${_FontSize}>=0
			This.FontSize:Set[${_FontSize}]
		if ${_FontBold}>=0
			This.FontBold:Set[${_FontBold}]
		if ${_FontColor.Length}  && ${_FontColor.NotEqual[NULL]}
			This.FontColor:Set["${_FontColor.Escape}"]		
	}

	method ApplyStyle()
	{
		if !${This.UIElementID}
			return

;		echo ApplyStyle menu=${This.Menu} numbutton=${This.NumButton}

		if ${This.FontSize}>0
			UIElement[${This.UIElementID}].Font:SetHeight[${This.FontSize}]
		if ${This.FontName.Length} && ${This.FontName.NotEqual[NULL]}
			UIElement[${This.UIElementID}].Font:SetName["${This.FontName.Escape}"]
		if ${This.FontColor.Length} && ${This.FontColor.NotEqual[NULL]}
			UIElement[${This.UIElementID}].Font:SetColor[${This.FontColor.Escape}]

		switch ${This.FontBold}
		{
		case 0
			UIElement[${This.UIElementID}].Font:DisableBold
			break
		case 1
			UIElement[${This.UIElementID}].Font:EnableBold
			break
		}
	

		if ${This.BackgroundColor.Length} && ${This.BackgroundColor.NotEqual[NULL]}
			UIElement[${This.UIElementID}]:SetBackgroundColor["${This.BackgroundColor.Escape}"]
		if ${This.Alpha}>=0
			UIElement[${This.UIElementID}]:SetAlpha["${This.Alpha}"]
		if ${This.Border}>=0
			UIElement[${This.UIElementID}]:SetBorder["${This.Border}"]
		if ${This.BorderColor.Length} && ${This.BorderColor.NotEqual[NULL]}
			UIElement[${This.UIElementID}]:SetBorderColor["${This.BorderColor.Escape}"]
	}

	method SetCommands(string press_command, string release_command)
	{
		if ${press_command.NotEqual[NULL]}
			This.PressCommand:Set["${press_command.Escape}"]

		if ${release_command.NotEqual[NULL]}
			This.ReleaseCommand:Set["${release_command.Escape}"]		
	}

	method SetImage(string _image, string image_hover="", string image_pressed="")
	{
		if ${_image.NotEqual[NULL]}
		{
			This.Image:Set["${_image.Escape}"]
			;echo This.Image:Set["${_image.Escape}"]
		}

		if ${image_hover.NotEqual[NULL]}
			This.ImageHover:Set["${image_hover.Escape}"]

		if ${image_pressed.NotEqual[NULL]}
			This.ImagePressed:Set["${image_pressed.Escape}"]
	}

	method ApplyImage()
	{
		if !${This.UIElementID}
			return

		variable string fname
		variable string colorMaskTag
		variable string rectTags

		variable persistentref textureRef
		
		if !${This.Image.Length}
			UIElement["${This.UIElementID}"]:SetTexture[""]
		elseif ${This.Image.Equal[NULL]}
			noop
		elseif ${UIElement["${This.UIElementID}"].Texture(exists)}
			UIElement["${This.UIElementID}"].Texture:Copy["UIElement[${This.Image.Escape}@clickbarimages].Texture"]
		else
		{
			textureRef:SetReference["UIElement[${This.Image.Escape}@clickbarimages].Texture"]
;			echo textureRef.Reference=${textureRef.Reference.Filename}
			fname:Set["${textureRef.Filename.Escape}"]

			if !${textureRef.ColorMask(exists)}
				colorMaskTag:Set[""]
			else
				colorMaskTag:Set["<ColorMask>${textureRef.ColorMask.Hex.Escape}</ColorMask>"]

			if !${textureRef.Left(exists)}
				rectTags:Set[""]
			else
				rectTags:Set["<Left>${textureRef.Left}</Left><Right>${textureRef.Right}</Right><Top>${textureRef.Top}</Top><Bottom>${textureRef.Bottom}</Bottom>"]

			if ${fname.Length}
			{
;				echo UIElement["${This.UIElementID}"]:SetTexture["<Texture Filename=\"${fname.Escape}\"><Border>${textureRef.Border}</Border>${colorMaskTag.Escape}${rectTags.Escape}</Texture>"]
				UIElement["${This.UIElementID}"]:SetTexture["<Texture Filename=\"${fname.Escape}\"><Border>${textureRef.Border}</Border>${colorMaskTag.Escape}${rectTags.Escape}</Texture>"]
			}
			else
			{
;				echo UIElement["${This.UIElementID}"]:SetTexture["<Texture Filename=\"#fill\"><Border>${textureRef.Border}</Border>${colorMaskTag.Escape}</Texture>"]
				UIElement["${This.UIElementID}"]:SetTexture["<Texture Filename=\"#fill\"><Border>${textureRef.Border}</Border>${colorMaskTag.Escape}</Texture>"]
			}
		}

		if !${This.ImageHover.Length}
			UIElement["${This.UIElementID}"]:SetTextureHover[""]
		elseif ${This.ImageHover.Equal[NULL]}
			noop
		elseif ${UIElement["${This.UIElementID}"].TextureHover(exists)}
			UIElement["${This.UIElementID}"].TextureHover:Copy["UIElement[${This.ImageHover.Escape}@clickbarimages].Texture"]
		else
		{
			textureRef:SetReference["UIElement[${This.ImageHover.Escape}@clickbarimages].Texture"]
			fname:Set["${textureRef.Filename.Escape}"]
			if !${textureRef.ColorMask(exists)}
				colorMaskTag:Set[""]
			else
				colorMaskTag:Set["<ColorMask>${textureRef.ColorMask.Hex.Escape}</ColorMask>"]

			if !${textureRef.Left(exists)}
				rectTags:Set[""]
			else
				rectTags:Set["<Left>${textureRef.Left}</Left><Right>${textureRef.Right}</Right><Top>${textureRef.Top}</Top><Bottom>${textureRef.Bottom}</Bottom>"]

			if ${fname.Length}
			{
				UIElement["${This.UIElementID}"]:SetTextureHover["<Texture Filename=\"${fname.Escape}\"><Border>${textureRef.Border}</Border>${colorMaskTag.Escape}${rectTags.Escape}</Texture>"]
			}
			else
			{
				UIElement["${This.UIElementID}"]:SetTextureHover["<Texture Filename=\"#fill\"><Border>${textureRef.Border}</Border>${colorMaskTag.Escape}</Texture>"]
			}
		}

		if !${This.ImagePressed.Length}
			UIElement["${This.UIElementID}"]:SetTexturePressed[""]
		elseif ${This.ImagePressed.Equal[NULL]}
			noop
		elseif ${UIElement["${This.UIElementID}"].TexturePressed(exists)}
			UIElement["${This.UIElementID}"].TexturePressed:Copy["UIElement[${This.ImagePressed.Escape}@clickbarimages].Texture"]
		else
		{
			textureRef:SetReference["UIElement[${This.ImagePressed.Escape}@clickbarimages].Texture"]
			fname:Set["${textureRef.Filename.Escape}"]
			if !${textureRef.ColorMask(exists)}
				colorMaskTag:Set[""]
			else
				colorMaskTag:Set["<ColorMask>${textureRef.ColorMask.Hex.Escape}</ColorMask>"]

			if !${textureRef.Left(exists)}
				rectTags:Set[""]
			else
				rectTags:Set["<Left>${textureRef.Left}</Left><Right>${textureRef.Right}</Right><Top>${textureRef.Top}</Top><Bottom>${textureRef.Bottom}</Bottom>"]

			if ${fname.Length}
			{
				UIElement["${This.UIElementID}"]:SetTexturePressed["<Texture Filename=\"${fname.Escape}\"><Border>${textureRef.Border}</Border>${colorMaskTag.Escape}${rectTags.Escape}</Texture>"]
			}
			else
			{
				UIElement["${This.UIElementID}"]:SetTexturePressed["<Texture Filename=\"#fill\"><Border>${textureRef.Border}</Border>${colorMaskTag.Escape}</Texture>"]
			}
		}
;		else
;			UIElement["${This.UIElementID}"]:SetTexturePressed["<Texture Filename=\"${textureRef.Filename.Escape}\"><Border>${UIElement[${textureRef.Border}</Border></Texture>"]
	}

	method ApplyTo(string button_layout, string menu_name, int num_button)
	{
		;echo menuButton:ApplyTo["${button_layout.Escape}","${menu_name.Escape}",${num_button}]

		if ${menu_name.Length}
		{
			if ${num_button}==${This.NumButton} && ${menu_name.Equal["${This.Menu.Escape}"]}
			{
				return
			}

				;echo MenuMan.Menus.Element["${menu_name.Escape}"].Buttons.Buttons[${num_button}]:Deserialize[${This.Serialize["${This.ButtonLayout.Escape}","${This.Menu.Escape}",${This.NumButton}]}]
			MenuMan.Menus.Element["${menu_name.Escape}"].Buttons.Buttons[${num_button}]:Deserialize[${This.Serialize["${This.ButtonLayout.Escape}","${This.Menu.Escape}",${This.NumButton}]}]
		}
		if ${button_layout.Length}
		{
			if ${num_button}==${This.NumButton} && ${button_layout.Equal["${This.ButtonLayout.Escape}"]}
			{
				return
			}

			MenuMan.ButtonLayouts.Element["${button_layout.Escape}"].Buttons[${num_button}]:Deserialize[${This.Serialize["${This.ButtonLayout.Escape}","${This.Menu.Escape}",${This.NumButton}]}]
		}

		This.Views:Add["\"${button_layout.Escape}\",\"${menu_name.Escape}\",${num_button}"]
		;echo This.Views:Add["\"${button_layout.Escape}\",\"${menu_name.Escape}\",${num_button}"] count=${This.Views.Used}
	}

	method DetachView(string button_layout, string menu_name, int num_button)
	{
		This.Views:Remove["\"${button_layout.Escape}"\",\"${menu_name.Escape}\",${num_button}"]
	}

	method ApplyViews()
	{
		;echo ApplyViews
		variable iterator Iterator
		This.Views:GetIterator[Iterator]
		if !${Iterator:First(exists)}
			return
		do
		{
			;echo ApplyViews - "${Iterator.Key.Escape}"
			This:ApplyTo[${Iterator.Key}]
		}
		while ${Iterator:Next(exists)}
	}

	method StoreState()
	{
		StoredState:Set["${This.Serialize["${This.ButtonLayout.Escape}","${This.Menu.Escape}",${This.NumButton}].Escape}"]		
	}

	method RestoreState()
	{
		if ${StoredState.Length}
			This:Deserialize["${StoredState}"]	
	}


	member:string Serialize(string button_layout, string menu_name, int source_number)
	{
		variable string output
		; Source
		output:Set["\"${button_layout.Escape},${menu_name.Escape},${source_number}\""]

		; Commands and Text
		output:Concat[",\"${This.PressCommand.Escape.Escape}\",\"${This.ReleaseCommand.Escape.Escape}\",\"${This.Text.Escape.Escape}\""]

		; Image
		output:Concat[",\"${This.Image.Escape}\",\"${This.ImageHover.Escape}\",\"${This.ImagePressed.Escape}\""]

		; Style
		output:Concat[",${This.Alpha},\"${This.BackgroundColor.Escape}\",\"${This.BorderColor.Escape}\",${This.Border},\"${This.FontColor.Escape}\",${This.FontBold},${This.FontSize},\"${This.FontName.Escape}\""]

;		echo "serialized=${output.Escape}"
		return "${output.Escape}"
	}

	method Deserialize(string source_name, string press_command, string release_command, string text, string _image, string image_hover, string image_pressed, float alpha, string background_color, string border_color, int border, string font_color, int font_bold, int font_size, string font_name)
	{
		;echo Deserialize...
		This:UpdateSource["${source_name.Escape}"]

		;echo This:SetCommands["${press_command.Escape}","${release_command.Escape}"]
		This:SetCommands["${press_command.Escape}","${release_command.Escape}"]

		;echo This:SetText["${text.Escape}"]
		This:SetText["${text.Escape}"]

		;echo This:SetImage["${_image.Escape}","${image_hover.Escape}","${image_pressed.Escape}"]
		This:SetImage["${_image.Escape}","${image_hover.Escape}","${image_pressed.Escape}"]

		;echo This:SetStyle[${alpha},"${background_color.Escape}","${border_color.Escape}",${border},"${font_name.Escape}",${font_size},"${font_color.Escape}",${font_bold}]
		This:SetStyle[${alpha},"${background_color.Escape}","${border_color.Escape}",${border},"${font_name.Escape}",${font_size},"${font_color.Escape}",${font_bold}]

		This:ApplyImage
		This:ApplyStyle
		This:ApplyViews
	}

	method SerializeSetting(settingsetref dest_set, string dest_setting)
	{
		dest_set:AddSetting["${dest_setting.Escape}",""]
		dest_set.FindSetting["${dest_setting.Escape}"]:AddAttribute[Text,"${This.Text.Escape}"]:AddAttribute[press_command,"${This.PressCommand.Escape}"]:AddAttribute[release_command,"${This.ReleaseCommand.Escape}"]
		dest_set.FindSetting["${dest_setting.Escape}"]:AddAttribute[Image,"${This.Image.Escape}"]:AddAttribute[ImageHover,"${This.ImageHover.Escape}"]:AddAttribute[ImagePressed,"${This.ImagePressed.Escape}"]:AddAttribute[Alpha,"${This.Alpha}"]:AddAttribute[BackgroundColor,"${This.BackgroundColor.Escape}"]:AddAttribute[BorderColor,"${This.BorderColor.Escape}"]:AddAttribute[Border,"${This.Border}"]:AddAttribute[FontName,"${This.FontName.Escape}"]:AddAttribute[FontSize,"${This.FontSize}"]:AddAttribute[FontColor,"${This.FontColor.Escape}"]:AddAttribute[FontBold,"${This.FontBold}"]
	}

	method DeserializeSetting(settingsetref src_set, string src_setting)
	{
;		echo DeserializeSetting ${src_set} ${src_setting}

		This:PullFrom["${src_set.FindSetting["${src_setting.Escape}"].FindAttribute["PullButtonSet"].String.Escape}","${src_set.FindSetting["${src_setting.Escape}"].FindAttribute["PullMenu"].String.Escape}","${src_set.FindSetting["${src_setting.Escape}"].FindAttribute["PullNumButton"].Int}"]
		;echo This:PullFrom["${src_set.FindSetting["${src_setting.Escape}"].FindAttribute["PullButtonSet"].String.Escape}","${src_set.FindSetting["${src_setting.Escape}"].FindAttribute["PullMenu"].String.Escape}","${src_set.FindSetting["${src_setting.Escape}"].FindAttribute["PullNumButton"].Int}"]

		This:SetText["${src_set.FindSetting["${src_setting.Escape}"].FindAttribute["Text"].String.Escape}"]
		This:SetCommands["${src_set.FindSetting["${src_setting.Escape}"].FindAttribute["press_command"].String.Escape}","${src_set.FindSetting["${src_setting.Escape}"].FindAttribute["release_command"].String.Escape}"]

		This:SetImage["${src_set.FindSetting["${src_setting.Escape}"].FindAttribute["Image"].String.Escape}","${src_set.FindSetting["${src_setting.Escape}"].FindAttribute["ImageHover"].String.Escape}","${src_set.FindSetting["${src_setting.Escape}"].FindAttribute["ImagePressed"].String.Escape}"]
		;echo This:SetImage["${src_set.FindSetting["${src_setting.Escape}"].FindAttribute["Image"].String.Escape}","${src_set.FindSetting["${src_setting.Escape}"].FindAttribute["ImageHover"].String.Escape}","${src_set.FindSetting["${src_setting.Escape}"].FindAttribute["ImagePressed"].String.Escape}"]

		This:SetStyle["${src_set.FindSetting["${src_setting.Escape}"].FindAttribute["Alpha"].String.Escape}","${src_set.FindSetting["${src_setting.Escape}"].FindAttribute["BackgroundColor"].String.Escape}","${src_set.FindSetting["${src_setting.Escape}"].FindAttribute["BorderColor"].String.Escape}","${src_set.FindSetting["${src_setting.Escape}"].FindAttribute["Border"].String.Escape}","${src_set.FindSetting["${src_setting.Escape}"].FindAttribute["FontName"].String.Escape}","${src_set.FindSetting["${src_setting.Escape}"].FindAttribute["FontSize"].String.Escape}","${src_set.FindSetting["${src_setting.Escape}"].FindAttribute["FontColor"].String.Escape}","${src_set.FindSetting["${src_setting.Escape}"].FindAttribute["FontBold"].String.Escape}"]
		;echo This:SetStyle["${src_set.FindSetting["${src_setting.Escape}"].FindAttribute["Alpha"].String.Escape}","${src_set.FindSetting["${src_setting.Escape}"].FindAttribute["BackgroundColor"].String.Escape}","${src_set.FindSetting["${src_setting.Escape}"].FindAttribute["BorderColor"].String.Escape}","${src_set.FindSetting["${src_setting.Escape}"].FindAttribute["Border"].String.Escape}","${src_set.FindSetting["${src_setting.Escape}"].FindAttribute["FontName"].String.Escape}","${src_set.FindSetting["${src_setting.Escape}"].FindAttribute["FontSize"].String.Escape}","${src_set.FindSetting["${src_setting.Escape}"].FindAttribute["FontColor"].String.Escape}","${src_set.FindSetting["${src_setting.Escape}"].FindAttribute["FontBold"].String.Escape}"]

		This:ApplyImage
		This:ApplyStyle
		This:ApplyViews
	}
}

objectdef menuButtonLayout
{
	variable string Menu
	variable string Name	
	variable index:menuButton Buttons

	method Initialize(string menu_name, string name, int NumButtons, string menu_template)
	{
		; echo menuButtonLayout:Initialize[${name.Escape},${NumButtons}]
		This.Menu:Set["${menu_name.Escape}"]
		This.Name:Set["${name.Escape}"]

		Buttons:Clear
		Buttons:Resize[${NumButtons}]
		variable int i = 1
		while ${i}<=${NumButtons}
		{
			This.Buttons:Insert["NULL","",""]
			This.Buttons[${i}].ButtonLayout:Set["${name.Escape}"]
			This.Buttons[${i}].Menu:Set["${menu_name.Escape}"]
			This.Buttons[${i}].NumButton:Set[${i}]

			
			; pull settings from Template
			if ${menu_template.Length}
			{
				This.Buttons[${i}].ClickThrough:Set[${MenuMan_${menu_template.Escape}Template.ClickThrough}]

				This.Buttons[${i}].Image:Set["${MenuMan_${menu_template.Escape}Template.buttonImage.Escape}"]
				This.Buttons[${i}].ImageHover:Set["${MenuMan_${menu_template.Escape}Template.buttonImageHover.Escape}"]
				This.Buttons[${i}].ImagePressed:Set["${MenuMan_${menu_template.Escape}Template.buttonImagePressed.Escape}"]
			}

			if !${This.Buttons.Used}
			{
				; echo This.Buttons:Insert["","",""] failed
				exit
			}

			i:Inc
		}
	}

	method AttachButtonView(int num_button,string buttonset_name,string menu_name, int menu_button)
	{
		This.Buttons[${num_button}]:ApplyTo["${buttonset_name.Escape}","${menu_name.Escape}",${menu_button}]
	}

	method DetachButtonView(int num_button,string buttonset_name,string menu_name, int menu_button)
	{
		This.Buttons[${num_button}]:DetachView["${buttonset_name.Escape}","${menu_name.Escape}",${menu_button}]
	}
	
	method StoreAllButtons()
	{
		variable int i=1
		while ${i}<=${Buttons.Size}
		{
			Buttons[${i}]:StoreState

			i:Inc
		}
	}

	method RestoreAllButtons()
	{
		variable int i=1
		while ${i}<=${Buttons.Size}
		{
			Buttons[${i}]:RestoreState

			i:Inc
		}
	}

	method ResetButtons()
	{
		variable int i=1
		while ${i}<=${Buttons.Size}
		{
			Buttons[${i}]:Reset

			i:Inc
		}
	}

	method OnGUIAttached(int element_id, string menu_name, string menu_template)
	{
		; echo OnGUIAttached[${element_id},${menu_name},${menu_template}]
		variable int i=1
		while ${i}<=${Buttons.Size}
		{
			Buttons[${i}]:SetUIElementID[${MenuMan_${menu_template.Escape}Template.GetButtonElementID["${menu_name.Escape}",${i}]}]

			i:Inc
		}
	}

	method Apply(string menu_name, int from_position)
	{
		variable int i=1
		while ${i}<=${Buttons.Size}
		{
			Buttons[${i}]:ApplyTo["","${menu_name.Escape}","${from_position}"]
			from_position:Inc
			i:Inc
		}
	}

	method SetButtonStyle(int nButton, float alpha=-1, string BackgroundColor="", string BorderColor="", int Border=-1, string FontName="", int FontSize=-1, string FontColor="", int FontBold=-1)
	{
		This.Buttons[${nButton}]:SetStyle[${alpha},"${BackgroundColor.Escape}","${BorderColor.Escape}",${Border},"${FontName.Escape}",${FontSize},"${FontColor.Escape}",${FontBold}]
	}


	method SetButton(int nButton, string text, string press_command, string release_command)
	{
		This.Buttons[${nButton}]:Set["${text.Escape}","${press_command.Escape}","${release_command.Escape}"]

;		echo This.Buttons[${nButton}]:Set["${text.Escape}","${press_command.Escape}","${release_command.Escape}"]
	}

	method SetImageButton(int nButton, string _image, string press_command, string release_command)
	{
		This.Buttons[${nButton}]:SetImage["${_image.Escape}","${press_command.Escape}","${release_command.Escape}"]
	}

	method OnState(int num_button, string state, string state_option)
	{
		; echo menuButtonLayout:OnState[${num_button},"${state.Escape}","${state_option.Escape}"]
		This.Buttons[${num_button}]:OnState["${state.Escape}","${state_option.Escape}"]
	}

	method SerializeSet(settingsetref dest_set)
	{
;		echo SerializeSet[${dest_set}]
		variable int i = 1
		variable string Name

		dest_set:AddSetting["Capacity","${This.Buttons.Size}"]
		while ${i}<=${This.Buttons.Size}
		{
			if ${This.Buttons[${i}](exists)}
			{	
				This.Buttons[${i}]:SerializeSetting[${dest_set},"Button ${i}"]
			}
			i:Inc
		}
	}

	method DeserializeSet(settingsetref src_set)
	{
;		echo DeserializeSet[${src_set}]
		variable iterator Iterator
		src_set:GetSettingIterator[Iterator]

		This.Buttons:Resize[${src_set.FindSetting[Capacity].Int}]
		variable int i

		if ${Iterator:First(exists)}
		{
			do
			{
				if ${Iterator.Key.Left[7].Equal["Button "]}
				{
					i:Set[${Iterator.Key.Right[-7].Escape}]
					; This.Buttons[${Iterator.Key.Right[-7].Escape}]:Set["${Iterator.Value.String.Escape}"]
					This.Buttons[${i}]:DeserializeSetting[${src_set},"Button ${i}"]					
				}
			}
			while ${Iterator:Next(exists)}
		}
	}

	method DumpToFile()
	{
		variable settingsetref buttonLayoutSet

		LavishSettings:AddSet["ButtonLayout_${This.Name.Escape}"]
		buttonLayoutSet:Set[${LavishSettings.FindSet["ButtonLayout_${This.Name.Escape}"]}]
		This:SerializeSet[${buttonLayoutSet}]
		buttonLayoutSet:Export["ButtonLayout_${This.Name.Escape}.XML"]
		buttonLayoutSet:Remove
	}

	method LoadFromFile()
	{
;		echo LoadFromSettings
		variable settingsetref buttonLayoutSet

		LavishSettings:AddSet["ButtonLayout_${This.Name.Escape}"]
		buttonLayoutSet:Set[${LavishSettings.FindSet["ButtonLayout_${This.Name.Escape}"]}]
		if ${buttonLayoutSet:Import["ButtonLayout_${This.Name.Escape}.XML"](exists)}
		{
			This:DeserializeSet[${buttonLayoutSet}]
		}
		buttonLayoutSet:Remove
				
	}
}

objectdef menuHandler
{
	variable string Name
	variable string MenuTemplate

	variable set HotkeyLayoutsAttached
	variable menuButtonLayout Buttons

	variable int UIElementID
	variable int X
	variable int Y

	variable bool IsShutdown
	
	
	method Initialize(string name, string menu_template, int num_buttons=-1, int x, int y)
	{
		This.Name:Set["${name.Escape}"]
		This.MenuTemplate:Set["${menu_template.Escape}"]
		X:Set[${x}]
		Y:Set[${y}]

		; number of buttons from menu template
		if ${num_buttons}<0
			num_buttons:Set["${MenuMan_${menu_template.Escape}Template.NumButtons}"]

		Buttons:Initialize["${name.Escape}","NULL",${num_buttons},"${menu_template.Escape}"]
	}

	method Shutdown()
	{
		This.IsShutdown:Set[1]
		This:StopGUI
		This:DetachAllHotkeys
		This.Buttons.Buttons:Clear
	}

	method RestartGUI()
	{
		if ${This.UIElementID}
		{
			UIElement[${This.UIElementID}]:Show
			noop ${MenuMan_${This.MenuTemplate.Escape}Template:OnMenuGUIStarted["${This.Name.Escape}",1]}
		}
	}

	method StartGUI()
	{
		if ${This.UIElementID}
		{
			UIElement[${This.UIElementID}]:Show
			noop ${MenuMan_${This.MenuTemplate.Escape}Template:OnMenuGUIStarted["${This.Name.Escape}",1]}
			return
		}

		This.UIElementID:Set[${MenuMan_${This.MenuTemplate.Escape}Template.GenerateWindow["${This.Name.Escape}",${This.X},${This.Y}]}]
		Buttons:OnGUIAttached[${This.UIElementID},"${This.Name.Escape}","${This.MenuTemplate.Escape}"]
		noop ${MenuMan_${This.MenuTemplate.Escape}Template:OnMenuGUIStarted["${This.Name.Escape}",0]}
	}

	method StopGUI(bool stopHotkeys)
	{
		if !${This.UIElementID}
			return

		UIElement[${This.UIElementID}]:Destroy
		This.UIElementID:Set[0]

		if ${stopHotkeys}
			This:DetachAllHotkeys
	}

	method CenterOnCursor()
	{
		if !${This.UIElementID}
			return

;		if !${This.Cursor}
;			return

		variable int x
		variable int y
		x:Set["${Mouse.X}-${UIElement[${This.UIElementID}].Width}/2"]
		y:Set["${Mouse.Y}-(${UIElement[${This.UIElementID}].Height}/2)-${UIElement[titlebar@${UIElement[${This.UIElementID}]}].Height}"]

		UIElement[${This.UIElementID}]:SetX[${x}]:SetY[${y}]
	}

	method ShowTitleBar()
	{
		if !${This.UIElementID}
			return

		UIElement[titlebar@${UIElement[${This.UIElementID}]}]:Show
		UIElement[${This.UIElementID}]:SetLeftClickThru[0]:SetRightClickThru[0]
	}

	method HideTitleBar()
	{
		if !${This.UIElementID}
			return

		UIElement[titlebar@${UIElement[${This.UIElementID}]}]:Hide
		UIElement[${This.UIElementID}]:SetLeftClickThru[1]:SetRightClickThru[1]
	}

	method ApplyButtonLayout(string button_layout, int start_offset=1)
	{
		MenuMan.ButtonLayouts.Element["${button_layout.Escape}"]:Apply["${This.Name.Escape}",${start_offset}]
	}

	method AttachHotkeys(string hotkey_layout, bool bindSoft)
	{
		MenuMan.HotkeyLayouts.Element["${hotkey_layout.Escape}"]:Attach["${This.Name.Escape}",${bindSoft}]
		This.HotkeyLayoutsAttached:Add["${hotkey_layout.Escape}"]
	}

	method DetachAllHotkeys()
	{
;		echo DetachAllHoteys
		if !${This.HotkeyLayoutsAttached.Used}
			return

		variable iterator Iterator
		This.HotkeyLayoutsAttached:GetIterator[Iterator]

		if ${Iterator:First(exists)}
		{
			do
			{
;				echo MenuMan.HotkeyLayouts.Element["${Iterator.Key.Escape}"]:Detach["${This.Name.Escape}"]
				MenuMan.HotkeyLayouts.Element["${Iterator.Key.Escape}"]:Detach["${This.Name.Escape}"]
			}
			while ${Iterator:Next(exists)}
		}
		This.HotkeyLayoutsAttached:Clear
	}	

	method StoreAllButtons()
	{
		This.Buttons:StoreAllButtons
	}
	method RestoreAllButtons()
	{
		This.Buttons:RestoreAllButtons
	}
}

objectdef menuman
{
	variable collection:menuHandler Menus
	variable collection:hotkeyLayout HotkeyLayouts
	variable collection:menuButtonLayout ButtonLayouts
	variable set MenuTemplates
	variable bool Ready

	method Initialize()
	{
	}

	method Shutdown()
	{
		LavishSettings.FindSet["MenuMan"]:Remove
	}

	method ImportButtonLayout(settingsetref layoutSet)
	{
		;echo ImportButtonLayout[${layoutSet.Name}]
		This.ButtonLayouts:Set["${layoutSet.Name.Escape}","","${layoutSet.Name.Escape}",${layoutSet.FindSetting[Capacity]}]
		;echo Deserializing Button Layout...
		This.ButtonLayouts.Element["${layoutSet.Name.Escape}"]:DeserializeSet[${layoutSet}]
	}

	method ImportHotkeyLayout(settingsetref layoutSet)
	{
		;echo ImportHotkeyLayout[${layoutSet.Name}]
		This.HotkeyLayouts:Set["${layoutSet.Name.Escape}","${layoutSet.Name.Escape}",${layoutSet.FindSetting[Capacity]}]
		This.HotkeyLayouts.Element["${layoutSet.Name.Escape}"]:DeserializeSet[${layoutSet}]
	}

	method ImportActionSet(settingsetref actionSet)
	{
		;echo ImportActionSet[${actionSet.Name}]
		; method LoadAlias(string main, string name, settingsetref loadSet, bool hold, bool useftl, string nextStep, bool enablePress)
		;KeyMapper:LoadAlias["${actionSet.Name.Escape}","${actionSet.Name.Escape}",${actionSet},${Bool["${actionSet.FindSetting["Hold"].String.Escape}"]},FALSE,"",TRUE]
		
		; method LoadBind(string name, settingsetref loadSet, bool useftl, bool hold)
		KeyMapper:LoadBind["${actionSet.Name.Escape}",${actionSet},FALSE,${Bool["${actionSet.FindSetting["Hold"].String.Escape}"]}]
	}

	method ImportTemplate(settingsetref templateSet)
	{
		;echo ImportTemplate[${templateSet.Name}]

		variable string varName="MenuMan_${templateSet.FindSetting[Sanitized Name].String.Escape}Template"

		if ${${varName}(exists)}
			deletevariable "${varName}"


		switch ${templateSet.FindSetting[Type].String}
		{
		case XML
;variable(global) gridmenuTemplate MenuMan_DefaultTemplate
			declarevariable "${varName}" xmlmenuTemplate global
			noop ${${varName}.XMLFile:Set["${templateSet.FindSetting[XMLFilename].String.Escape}"]}
			noop ${${varName}.ElementName:Set["${templateSet.FindSetting[XMLElement].String.Escape}"]}
			noop ${${varName}:DetectNumButons}
			break
		case Radial
			declarevariable "${varName}" radialmenuTemplate global
			noop ${${varName}.NumButtons:Set["${templateSet.FindSetting[NumButtons].String.Escape}"]}

			noop ${${varName}.StartOffset:Set["${templateSet.FindSetting[RadialOffset].String.Escape}"]}
			noop ${${varName}.RadiusX:Set["${templateSet.FindSetting[RadiusX].String.Escape}"]}
			noop ${${varName}.RadiusY:Set["${templateSet.FindSetting[RadiusY].String.Escape}"]}
			noop ${${varName}.buttonWidth:Set["${templateSet.FindSetting[ButtonWidth].String.Escape}"]}
			noop ${${varName}.buttonHeight:Set["${templateSet.FindSetting[ButtonHeight].String.Escape}"]}

			noop ${${varName}.frameWidth:Set["${templateSet.FindSetting[FrameWidth].String.Escape}"]}
			noop ${${varName}.frameHeight:Set["${templateSet.FindSetting[FrameHeight].String.Escape}"]}
			break
		case Grid
			declarevariable "${varName}" gridmenuTemplate global
			noop ${${varName}.NumButtons:Set["${templateSet.FindSetting[NumButtons].String.Escape}"]}

			noop ${${varName}.Rows:Set["${templateSet.FindSetting[GridHeight].String.Escape}"]}
			noop ${${varName}.Columns:Set["${templateSet.FindSetting[GridWidth].String.Escape}"]}

			noop ${${varName}.buttonWidth:Set["${templateSet.FindSetting[ButtonWidth].String.Escape}"]}
			noop ${${varName}.buttonHeight:Set["${templateSet.FindSetting[ButtonHeight].String.Escape}"]}

			noop ${${varName}.xMargin:Set["${templateSet.FindSetting[GridButtonMarginX].String.Escape}"]}
			noop ${${varName}.yMargin:Set["${templateSet.FindSetting[GridButtonMarginY].String.Escape}"]}

			noop ${${varName}.frameWidth:Set["${templateSet.FindSetting[FrameWidth].String.Escape}"]}
			noop ${${varName}.frameHeight:Set["${templateSet.FindSetting[FrameHeight].String.Escape}"]}			
			break
		default
			echo "MenuMan: Unknown template type '${templateSet.FindSetting[Type].String.Escape}'"
			return
		}

		noop ${${varName}.Border:Set[${templateSet.FindSetting[Border].String.Escape}]}
		noop ${${varName}.BorderColor:Set[${templateSet.FindSetting[BorderColor].String.Escape}]}
		noop ${${varName}.BackgroundColor:Set[${templateSet.FindSetting[BackgroundColor].String.Escape}]}
		noop ${${varName}.BackgroundImage:Set[${templateSet.FindSetting[BackgroundImage].String.Escape}]}
		noop ${${varName}.Alpha:Set[${templateSet.FindSetting[Alpha].String.Escape}]}

		noop ${${varName}.buttonImage:Set[${templateSet.FindSetting[ButtonImage].String.Escape}]}
		noop ${${varName}.buttonImageHover:Set[${templateSet.FindSetting[ButtonImageHover].String.Escape}]}
		noop ${${varName}.buttonImagePressed:Set[${templateSet.FindSetting[ButtonImagePressed].String.Escape}]}

		noop ${${varName}.buttonAlpha:Set[${templateSet.FindSetting[ButtonAlpha].String.Escape}]}
		noop ${${varName}.buttonBackgroundColor:Set[${templateSet.FindSetting[ButtonBackgroundColor].String.Escape}]}
		noop ${${varName}.buttonBorderColor:Set[${templateSet.FindSetting[ButtonBorderColor].String.Escape}]}
		noop ${${varName}.buttonBorder:Set[${templateSet.FindSetting[ButtonBorder].Int}]}

		noop ${${varName}.buttonFontColor:Set[${templateSet.FindSetting[ButtonFontColor].String.Escape}]}
		noop ${${varName}.buttonFontBold:Set[${templateSet.FindSetting[ButtonFontBold].String.Escape}]}
		noop ${${varName}.buttonFontSize:Set[${templateSet.FindSetting[ButtonFontSize].String.Escape}]}
		noop ${${varName}.buttonFontName:Set[${templateSet.FindSetting[ButtonFontName].String.Escape}]}

		noop ${${varName}.ClickThrough:Set[${Bool["${templateSet.FindSetting[ClickThrough].String.Escape}"]}]}

		if ${templateSet.FindSetting[Popup](exists)}
		{
			noop ${${varName}.Popup:Set[${Bool["${templateSet.FindSetting[Popup].String.Escape}"]}]}
		}

		if ${templateSet.FindSetting[Type].String.Equal[XML]}
		{
			noop ${${varName}:DetectNumButtons}
		}
		MenuMan:RegisterTemplate["${templateSet.FindSetting[Sanitized Name].String.Escape}"]

	}

	method ImportISBoxerSettings(string xml_filename)
	{
		;echo ImportISBoxerSettings[${xml_filename.Escape}]
		variable settingsetref mainSet
		LavishSettings:AddSet["MenuMan"]
		mainSet:Set["${LavishSettings.FindSet["MenuMan"]}"]
		if !${mainSet:Import["${xml_filename.Escape}"](exists)}
		{
			echo MenuMan: \arfailed to import ${xml_filename.Escape}
			mainSet:Remove
			return
		}

		variable iterator Iterator

		variable settingsetref subSet

		subSet:Set["${mainSet.FindSet["Templates"]}"]
		; echo dumping Templates from set ${subSet}
		if ${subSet:GetSetIterator[Iterator](exists)} && ${Iterator:First(exists)}
		{
			do
			{
				This:ImportTemplate[${Iterator.Value}]
			}
			while ${Iterator:Next(exists)}
		}

		subSet:Set["${mainSet.FindSet["Action Sets"]}"]
		if ${subSet:GetSetIterator[Iterator](exists)} && ${Iterator:First(exists)}
		{
			do
			{
				This:ImportActionSet[${Iterator.Value}]
			}
			while ${Iterator:Next(exists)}
		}

		subSet:Set["${mainSet.FindSet["Button Sets"]}"]
		if ${subSet:GetSetIterator[Iterator](exists)} && ${Iterator:First(exists)}
		{
			do
			{
				This:ImportButtonLayout[${Iterator.Value}]
			}
			while ${Iterator:Next(exists)}
		}

		subSet:Set["${mainSet.FindSet["Hotkey Sets"]}"]
		if ${subSet:GetSetIterator[Iterator](exists)} && ${Iterator:First(exists)}
		{
			do
			{
				This:ImportHotkeyLayout[${Iterator.Value}]
			}
			while ${Iterator:Next(exists)}
		}

		Ready:Set[1]
	}

	member GenerateImageXML(string xml_tag, string image_name)
	{
		variable settingsetref mainSet
		LavishSettings:AddSet["MenuMan"]
		mainSet:Set["${LavishSettings.FindSet["MenuMan"]}"]

		variable settingsetref imagesSet
		imagesSet:Set["${mainSet.FindSet["Images"]}"]
		
		if !${imagesSet.FindSetting["${image_name.Escape}"](exists)}
		{
			return "<${xml_tag.Escape} />"
		}

		variable string output
		output:Set["<${xml_tag.Escape} Filename=\"${imagesSet.FindSetting["${image_name.Escape}"].FindAttribute["Filename"].String.Escape}\""]
		
		if ${imagesSet.FindSetting["${image_name.Escape}"].FindAttribute["ColorKey"].String.Length}
			output:Concat[" ColorKey=\"${imagesSet.FindSetting["${image_name.Escape}"].FindAttribute["ColorKey"].String.Escape}\""]

		output:Concat[">"]

		output:Concat["<Border>${imagesSet.FindSetting["${image_name.Escape}"].FindAttribute["Border"].Int}</Border>"]

		if ${imagesSet.FindSetting["${image_name.Escape}"].FindAttribute["Left"].Int}>=0
			output:Concat["<Left>${imagesSet.FindSetting["${image_name.Escape}"].FindAttribute["Left"].Int}</Left><Right>${imagesSet.FindSetting["${image_name.Escape}"].FindAttribute["Right"].Int}</Right><Top>${imagesSet.FindSetting["${image_name.Escape}"].FindAttribute["Top"].Int}</Top><Bottom>${imagesSet.FindSetting["${image_name.Escape}"].FindAttribute["Bottom"].Int}</Bottom>"]

		output:Concat["</${xml_tag.Escape}>"]

		return "${output.Escape}"
;		<Texture Filename=\"#fill\"><Border>${UIElement[${This.Image.Escape}@clickbarimages].Texture.Border}</Border><ColorMask>${colorMask.Escape}</ColorMask></Texture>
	}

	member:bool IsMenuVisible(string menu_name)
	{
		return ${Menus.Element["${menu_name.Escape}"].UIElementID}
	}

	method RegisterTemplate(string template_name)
	{
		MenuTemplates:Add["${template_name.Escape}"]
	}

	method UnregisterTemplate(string template_name)
	{
		MenuTemplates:Remove["${template_name.Escape}"]
	}

	member:bool ButtonExists(string menu_name, string button_layout, int num_button)
	{
;		echo menu=\"${menu_name}\" button_layout=\"${button_layout}\" num_button=${num_button}
		if ${Menus.Element["${menu_name.Escape}"].IsShutdown}
			return 0

		if ${Menus.Element["${menu_name.Escape}"].Buttons.Buttons.Used}>=${num_button}
			return 1

		if ${ButtonLayouts.Element["${button_layout.Escape}"].Buttons.Used}>=${num_button}
			return 1

		return 0
	}

	method OnMenuButtonState(string menu_name, int num_button, string state, string state_option)
	{
		Menus.Element["${menu_name.Escape}"].Buttons:OnState[${num_button},"${state.Escape}","${state_option.Escape}"]
	}

	method OnMenuHotkeyLayoutAttached(string menu_name, string hotkey_layout)
	{
		Menus.Element["${menu_name.Escape}"].HotkeysAttached:Set[1]
	}

	method OnMenuHotkeyLayoutDetached(string menu_name, string hotkey_layout)
	{
		Menus.Element["${menu_name.Escape}"].HotkeysAttached:Set[0]
	}

	method OnHotkey(string hotkey_layout, int num_button, bool pressed)
	{				
		; echo OnHotkey["${hotkey_layout.Escape}",${num_button},${pressed}]
		HotkeyLayouts.Element["${hotkey_layout.Escape}"]:OnState[${num_button},${pressed}]
	}

	method UpdateMenuPositions()
	{
		variable settingsetref mainSet
		LavishSettings:AddSet["MenuMan"]
		mainSet:Set["${LavishSettings.FindSet["MenuMan"]}"]

		variable settingsetref positionsSet
		mainSet:AddSet["Positions"]
		positionsSet:Set["${mainSet.FindSet["Positions"]}"]
		
		variable int id
		variable int nextid
		id:Set[${UIElement[screen].Children.ID}]
		while ${id}
		{
			nextid:Set[${UIElement[${id}].Next.ID}]
			if ${UIElement[${id}].GetMetadata[menuman](exists)}
			{
				positionsSet:AddSetting["${UIElement[${id}].GetMetadata[menu].Escape}","${UIElement[${id}].X},${UIElement[${id}].Y}"]
			}
	
			id:Set[${nextid}]		
		}		
	}


	method Command_ButtonStyle(string menu_or_layout, string name, int num_button, string serialized_style)
	{
;		echo MenuMan:Command_ButtonStyle["${menu_or_layout.Escape}","${name.Escape}",${num_button},"${serialized_style.Escape}"]
		if ${menu_or_layout.Equal[Menu]}
			Menus.Element["${name.Escape}"].Buttons.Buttons[${num_button}]:SetStyle[${serialized_style}]:ApplyStyle
		else
		{
			; echo ButtonLayouts.Element["${name.Escape}"].Buttons[${num_button}]:SetStyle[${serialized_style}]:ApplyViews
			ButtonLayouts.Element["${name.Escape}"].Buttons[${num_button}]:SetStyle[${serialized_style}]:ApplyViews
		}
	}

	method Command_ButtonImages(string menu_or_layout, string name, int num_button, string serialized_images)
	{
;		echo MenuMan:Command_ButtonImages["${menu_or_layout.Escape}","${name.Escape}",${num_button},"${serialized_images.Escape}"]
		if ${menu_or_layout.Equal[Menu]}
		{
			; echo Menus.Element["${name.Escape}"].Buttons.Buttons[${num_button}]:SetImage[${serialized_images}]:ApplyImage
			Menus.Element["${name.Escape}"].Buttons.Buttons[${num_button}]:SetImage[${serialized_images}]:ApplyImage
		}
		else
		{
			; echo ButtonLayouts.Element["${name.Escape}"].Buttons[${num_button}]:SetImage[${serialized_images}]:ApplyViews
			ButtonLayouts.Element["${name.Escape}"].Buttons[${num_button}]:SetImage[${serialized_images}]:ApplyViews
		}
	}

	method Command_ButtonCommands(string menu_or_layout, string name, int num_button, string serialized_commands)
	{
;		echo MenuMan:Command_ButtonCommands["${menu_or_layout.Escape}","${name.Escape}",${num_button},"${serialized_commands.Escape}"]
		if ${menu_or_layout.Equal[Menu]}
		{
			Menus.Element["${name.Escape}"].Buttons.Buttons[${num_button}]:SetCommands[${serialized_commands}]
		}
		else
		{
			ButtonLayouts.Element["${name.Escape}"].Buttons[${num_button}]:SetCommands[${serialized_commands}]
		}
	}

	method Command_ButtonText(string menu_or_layout, string name, int num_button, string text)
	{
;		echo MenuMan:Command_ButtonText["${menu_or_layout.Escape}","${name.Escape}",${num_button},"${text.Escape}"]
		if ${menu_or_layout.Equal[Menu]}
			Menus.Element["${name.Escape}"].Buttons.Buttons[${num_button}]:SetText["${text.Escape}"]
		else
			ButtonLayouts.Element["${name.Escape}"].Buttons[${num_button}]:SetText["${text.Escape}"]:ApplyViews
	}

	method Command_ButtonStore(string menu_or_layout, string name, int num_button)
	{
;		echo MenuMan:Command_ButtonStore["${menu_or_layout.Escape}","${name.Escape}",${num_button}]
		if ${menu_or_layout.Equal[Menu]}
			Menus.Element["${name.Escape}"].Buttons.Buttons[${num_button}]:StoreState
		else
			ButtonLayouts.Element["${name.Escape}"].Buttons[${num_button}]:StoreState
	}

	method Command_ButtonRestore(string menu_or_layout, string name, int num_button)
	{
;		echo MenuMan:Command_ButtonRestore["${menu_or_layout.Escape}","${name.Escape}",${num_button}]
		if ${menu_or_layout.Equal[Menu]}
			Menus.Element["${name.Escape}"].Buttons.Buttons[${num_button}]:RestoreState
		else
			ButtonLayouts.Element["${name.Escape}"].Buttons[${num_button}]:RestoreState
	}


	method Command_ButtonDetachSource(string menu_or_layout, string name, int num_button)
	{
;		echo MenuMan:Command_DetachSource["${menu_or_layout.Escape}","${name.Escape}",${num_button}]
		if ${menu_or_layout.Equal[Menu]}
			Menus.Element["${name.Escape}"].Buttons.Buttons[${num_button}]:UpdateSource[""]
		else
			ButtonLayouts.Element["${name.Escape}"].Buttons[${num_button}]:UpdateSource[""]
	}

	method Command_ApplyViews(string menu_or_layout, string name, int num_button)
	{
;		echo MenuMan:Command_ApplyViews["${menu_or_layout.Escape}","${name.Escape}",${num_button}]
		if ${menu_or_layout.Equal[Menu]}
			Menus.Element["${name.Escape}"].Buttons.Buttons[${num_button}]:ApplyImage:ApplyStyle
		else
			ButtonLayouts.Element["${name.Escape}"].Buttons[${num_button}]:ApplyViews
	}

	method Command_LoadMenu(string menu_name)
	{
		;echo MenuMan:Command_LoadMenu["${menu_name.Escape}"]

		variable settingsetref mainSet
		mainSet:Set["${LavishSettings.FindSet["MenuMan"]}"]

		variable settingsetref menuSet
		menuSet:Set["${mainSet.FindSet["Menus"]}"]

		if !${menuSet.FindSetting["${menu_name.Escape}"](exists)}
			return

		menuman -newmenu "${menu_name.Escape}" "${menuSet.FindSetting["${menu_name.Escape}"].FindAttribute["Template"].String.Escape}" "${menuSet.FindSetting["${menu_name.Escape}"].FindAttribute["X"].Int}" "${menuSet.FindSetting["${menu_name.Escape}"].FindAttribute["Y"].Int}"

		if ${menuSet.FindSetting["${menu_name.Escape}"].FindAttribute["HotkeyLayout"].String.Length}
			menuman -menuattachhotkeys "${menu_name.Escape}" "${menuSet.FindSetting["${menu_name.Escape}"].FindAttribute["HotkeyLayout"].String.Escape}" "${Bool["${menuSet.FindSetting["${menu_name.Escape}"].FindAttribute["BindSoft"].String.Escape}"]}"

		if ${menuSet.FindSetting["${menu_name.Escape}"].FindAttribute["ButtonLayout"].String.Length}
			menuman -menubuttonlayout "${menu_name.Escape}" "${menuSet.FindSetting["${menu_name.Escape}"].FindAttribute["ButtonLayout"].String.Escape}" 1

		menuman -menustartgui "${menu_name.Escape}"

		if !${UIElement[isboxermain].Visible}
			noop ${ISBoxerUI:HideTitleBars}
	}

	method Command_OverrideMenu(string menu_name, string template_name, string buttonlayout_name, string hotkeylayout_name)
	{
		variable settingsetref mainSet
		mainSet:Set["${LavishSettings.FindSet["MenuMan"]}"]

		variable settingsetref menuSet
		menuSet:Set["${mainSet.FindSet["Menus"]}"]

		if !${menuSet.FindSetting["${menu_name.Escape}"](exists)}
			return

		if ${template_name.NotEqual[NULL]}
		{
			menuSet.FindSetting["${menu_name.Escape}"]:AddAttribute["Template","${template_name.Escape}"]
		}
		if ${buttonlayout_name.NotEqual[NULL]}
		{
			menuSet.FindSetting["${menu_name.Escape}"]:AddAttribute["ButtonLayout","${buttonlayout_name.Escape}"]
		}
		if ${hotkeylayout_name.NotEqual[NULL]}
		{
			menuSet.FindSetting["${menu_name.Escape}"]:AddAttribute["HotkeyLayout","${hotkeylayout_name.Escape}"]
		}
	}

	method Command_NewMenu(string menu_name, string template_name, int X, int Y)
	{
		if !${MenuMan_${template_name.Escape}Template(exists)}
		{
			echo Command_NewMenu: Template "\"${template_name.Escape}\"" not found
			return
		}

		;echo MenuMan:Command_NewMenu["${menu_name.Escape}","${template_name.Escape}"]
		MenuMan.Menus:Set["${menu_name.Escape}","${menu_name.Escape}","${template_name.Escape}",-1,${X},${Y}]		
	}

	method Command_DeleteMenu(string menu_name)
	{
		MenuMan.Menus:Erase["${menu_name.Escape}"]
	}

	method Command_ClearMenus()
	{
		MenuMan.Menus:Clear
	}

	method Command_MenuButtonLayout(string menu_name, string buttonlayout_name, int start_offset)
	{
		;echo MenuMan:Command_MenuButtonLayout["${menu_name.Escape}","${buttonlayout_name.Escape}"]
		MenuMan.Menus.Element["${menu_name.Escape}"]:ApplyButtonLayout["${buttonlayout_name.Escape}",${start_offset}]
	}

	method Command_MenuAttachHotkeys(string menu_name, string hotkeylayout_name, bool bindSoft)
	{
		;echo MenuMan:Command_MenuAttachHotkeys["${menu_name.Escape}","${hotkeylayout_name.Escape}"]
		MenuMan.Menus.Element["${menu_name.Escape}"]:AttachHotkeys["${hotkeylayout_name.Escape}",${bindSoft}]
	}

	method Command_MenuDetachAllHotkeys(string menu_name)
	{
		;echo MenuMan:Command_MenuDetachAllHotkeys["${menu_name.Escape}"]
		MenuMan.Menus.Element["${menu_name.Escape}"]:DetachAllHotkeys
	}

	method Command_PauseMenu(string menu_name)
	{
		MenuMan.Menus.Element["${menu_name.Escape}"]:Pause
	}

	method Command_UnPauseMenu(string menu_name)
	{
		MenuMan.Menus.Element["${menu_name.Escape}"]:UnPause
	}

	method Command_RestartGUI()
	{
		variable iterator Iterator
		Menus:GetIterator[Iterator]

		if ${Iterator:First(exists)}
		{
			do
			{
				Iterator.Value:RestartGUI
			}
			while ${Iterator:Next(exists)}
		}
	}

	method Command_MenuStartGUI(string menu_name)
	{
		MenuMan.Menus.Element["${menu_name.Escape}"]:StartGUI
	}

	method Command_MenuStopGUI(string menu_name, bool detachHotkeys)
	{
		MenuMan.Menus.Element["${menu_name.Escape}"]:StopGUI[${detachHotkeys}]
	}

	method Command_NewHotkeyLayout(string layout_name, int num_hotkeys)
	{
		;echo MenuMan.HotkeyLayouts:Set["${layout_name.Escape}","${layout_name.Escape}",${num_hotkeys}]
		MenuMan.HotkeyLayouts:Set["${layout_name.Escape}","${layout_name.Escape}",${num_hotkeys}]
	}

	method Command_DeleteHotkeyLayout(string layout_name, int num_hotkeys)
	{
		MenuMan.HotkeyLayouts:Erase["${layout_name.Escape}"]
	}

	method Command_DetachHotkeyLayout(string layout_name)
	{
		MenuMan.HotkeyLayouts.Element["${layout_name.Escape}"]:DetachCurrentMenu
	}

	method Command_CopyHotkeys(string dest_layout_name, string src_layout_name, int dest_offset)
	{
		MenuMan.HotkeyLayouts.Element["${src_layout_name.Escape}"]:ApplyTo["${dest_layout_name.Escape}",${dest_offset}]
	}

	method Command_SetHotkey(string layout_name, int num_hotkey, string combo)
	{
		MenuMan.HotkeyLayouts.Element["${layout_name.Escape}"]:SetHotkey[${num_hotkey},"${combo.Escape}"]
	}

	method Command_RestoreAllButtons()
	{
		variable iterator Iterator
		Menus:GetIterator[Iterator]

		if ${Iterator:First(exists)}
		{
			do
			{
				Iterator.Value:RestoreAllButtons
			}
			while ${Iterator:Next(exists)}
		}

		ButtonLayouts:GetIterator[Iterator]
		if ${Iterator:First(exists)}
		{
			do
			{
				Iterator.Value:RestoreAllButtons
			}
			while ${Iterator:Next(exists)}
		}
	}

	method Command_StoreAllButtons()
	{
		variable iterator Iterator
		Menus:GetIterator[Iterator]

		if ${Iterator:First(exists)}
		{
			do
			{
				Iterator.Value:StoreAllButtons
			}
			while ${Iterator:Next(exists)}
		}

		ButtonLayouts:GetIterator[Iterator]
		if ${Iterator:First(exists)}
		{
			do
			{
				Iterator.Value:StoreAllButtons
			}
			while ${Iterator:Next(exists)}
		}
	}

	method Command_ActivateMouseoverButton()
	{
		; locate mouseover element
		variable int mouseoverID
		mouseoverID:Set[${LavishGUI.MouseOverElement.ID}]
		if !${mouseoverID}
			return

		variable int parentID

		parentID:Set[${UIElement[${mouseoverID}].Parent.ID}]
		while 1
		{
			if !${parentID}
				return

			if ${UIElement[${parentID}].GetMetadata[menu](exists)}
				break

			parentID:Set[${UIElement[${parentID}].Parent.ID}]
		}

		UIElement[${mouseoverID}]:LeftClick
	}

	method Command_HoldButton(string menu_name, int num_button)
	{
		MenuMan:OnMenuButtonState["${menu_name.Escape}","${num_button}","Press",Mouse1]
	}

	method Command_ReleaseButton(string menu_name, int num_button)
	{
		MenuMan:OnMenuButtonState["${menu_name.Escape}","${num_button}","Release",Mouse1]
	}

	method Command_PauseHotkeys()
	{
		variable iterator Iterator

		MenuMan.HotkeyLayouts:GetIterator[Iterator]

		if !${Iterator:First(exists)}
			return

		do
		{
			Iterator.Value:Pause
		}
		while ${Iterator:Next(exists)}
	}

	method Command_UnPauseHotkeys()
	{
		variable iterator Iterator

		MenuMan.HotkeyLayouts:GetIterator[Iterator]

		if !${Iterator:First(exists)}
			return

		do
		{
			Iterator.Value:UnPause
		}
		while ${Iterator:Next(exists)}
	}
}

variable(global) menuman MenuMan
; variable(global) gridmenuTemplate MenuMan_DefaultTemplate
; variable(global) radialmenuTemplate MenuMan_RadialTemplate
; variable(global) xmlmenuTemplate MenuMan_G13Template

atom(global) menuman_buttonupdate(string ButtonSet, string Menu, int NumButton, string StoreOrRestore, string PullButtonSet, string PullMenu, int PullNumButton, string Text, string press_command, string release_command, string Image, string ImageHover, string ImagePressed, float Alpha, string BackgroundColor, string BorderColor, int Border, string FontName, int FontSize, string FontColor, int FontBold)
{
	;echo "menuman_buttonupdate \"${ButtonSet.Escape}\" \"${Menu.Escape}\" \"${NumButton}\" \"${PullButtonSet.Escape}\" \"${PullMenu.Escape}\" \"${PullNumButton}\" \"${Text.Escape}\" \"${press_command.Escape}\" \"${release_command.Escape}\" \"${Image.Escape}\" \"${ImageHover.Escape}\" \"${ImagePressed.Escape}\" \"${Alpha}\" \"${BackgroundColor.Escape}\" \"${BorderColor.Escape}\" \"${Border}\" \"${FontName.Escape}\" \"${FontSize}\" \"${FontColor.Escape}\" \"${FontBold}\""
	variable int MaxButtons=-1
		if ${ButtonSet.Length} && ${ButtonSet.NotEqual[NULL]}
		{
			if ${NumButton} < 0
			{
				NumButton:Set[1]
				MaxButtons:Set[${MenuMan.ButtonLayouts.Element["${ButtonSet.Escape}"].Buttons.Used}]
			}
			do
			{
					switch ${StoreOrRestore}
					{
					case Store
						MenuMan.ButtonLayouts.Element["${ButtonSet.Escape}"].Buttons[${NumButton}]:StoreState
						break
					case Restore
						MenuMan.ButtonLayouts.Element["${ButtonSet.Escape}"].Buttons[${NumButton}]:RestoreState
						break
					}		
					MenuMan.ButtonLayouts.Element["${ButtonSet.Escape}"].Buttons[${NumButton}]:PullFrom["${PullButtonSet.Escape}","${PullMenu.Escape}",${PullNumButton}]:SetCommands["${press_command.Escape}","${release_command.Escape}"]:SetText["${Text.Escape}"]:SetImage["${Image.Escape}","${ImageHover.Escape}","${ImagePressed.Escape}"]:SetStyle[${Alpha},"${BackgroundColor.Escape}","${BorderColor.Escape}",${Border},"${FontName.Escape}",${FontSize},"${FontColor.Escape}",${FontBold}]:ApplyImage:ApplyStyle:ApplyViews		
					NumButton:Inc
			}
			while ${NumButton} <= ${MaxButtons}
		}
		else
		{
			if ${NumButton} < 0
			{
				NumButton:Set[1]
				MaxButtons:Set[${MenuMan.Menus.Element["${Menu.Escape}"].Buttons.Buttons.Used}]
			}
			do
			{
				switch ${StoreOrRestore}
				{
				case Store
					MenuMan.Menus.Element["${Menu.Escape}"].Buttons.Buttons[${NumButton}]:StoreState
					break
				case Restore
					MenuMan.Menus.Element["${Menu.Escape}"].Buttons.Buttons[${NumButton}]:RestoreState
					break
				}		
				MenuMan.Menus.Element["${Menu.Escape}"].Buttons.Buttons[${NumButton}]:PullFrom["${PullButtonSet.Escape}","${PullMenu.Escape}",${PullNumButton}]:SetCommands["${press_command.Escape}","${release_command.Escape}"]:SetText["${Text.Escape}"]:SetImage["${Image.Escape}","${ImageHover.Escape}","${ImagePressed.Escape}"]:SetStyle[${Alpha},"${BackgroundColor.Escape}","${BorderColor.Escape}",${Border},"${FontName.Escape}",${FontSize},"${FontColor.Escape}",${FontBold}]:ApplyImage:ApplyStyle:ApplyViews		
				NumButton:Inc
			}
			while ${NumButton} <= ${MaxButtons}
		}

	;echo buttonupdate completed.
}

atom(global) menuman(... Params)
{
	variable int Count=1
	for (${Count}<=${Params.Size} ; Count:Inc)
	{
/*
	MenuMan.HotkeyLayouts:Set["MMO","MMO",12]
	MenuMan.HotkeyLayouts.Element["MMO"]:SetHotkey[1,"1"]

*/

		/* Check the variable with a switch.. */
		switch ${Params[${Count}]}
		{
		/* HOTKEY LAYOUT */
		case -newhotkeylayout
			Count:Inc[2]
			if ${Count}<=${Params.Size}
			{
				MenuMan:Command_NewHotkeyLayout["${Params[${Math.Calc[${Count}-1]}].Escape}","${Params[${Count}].Escape}"]
			}
			break
		case -deletehotkeylayout
			Count:Inc
			if ${Count}<=${Params.Size}
			{
				MenuMan:Command_DeleteHotkeyLayout["${Params[${Count}].Escape}"]
			}
			break
		case -detachhotkeylayout
			Count:Inc
			if ${Count}<=${Params.Size}
			{
				MenuMan:Command_DetachHotkeyLayout["${Params[${Count}].Escape}"]
			}					
			break
		case -sethotkey
			Count:Inc[3]
			if ${Count}<=${Params.Size}
			{
				MenuMan:Command_SetHotkey["${Params[${Math.Calc[${Count}-2]}].Escape}","${Params[${Math.Calc[${Count}-1]}].Escape}","${Params[${Count}].Escape}"]
			}
			break
		case -copyhotkeys
			Count:Inc[3]
			if ${Count}<=${Params.Size}
			{
				MenuMan:Command_CopyHotkeys["${Params[${Math.Calc[${Count}-2]}].Escape}","${Params[${Math.Calc[${Count}-1]}].Escape}","${Params[${Count}].Escape}"]
			}
			break
		case -pausehotkeys
			MenuMan:Command_PauseHotkeys
			break
		case -unpausehotkeys
			MenuMan:Command_UnPauseHotkeys
			break
		/* MENU */
		case -pausemenu
			Count:Inc
			if ${Count}<=${Params.Size}
			{
				MenuMan:Command_PauseMenu["${Params[${Count}].Escape}"]
			}
			break
		case -unpausemenu
			Count:Inc
			if ${Count}<=${Params.Size}
			{
				MenuMan:Command_UnPauseMenu["${Params[${Count}].Escape}"]
			}
			break
		case -overridemenu
			Count:Inc[4]
			if ${Count}<=${Params.Size}
			{
				MenuMan:Command_OverrideMenu["${Params[${Math.Calc[${Count}-3]}].Escape}","${Params[${Math.Calc[${Count}-2]}].Escape}","${Params[${Math.Calc[${Count}-1]}].Escape}","${Params[${Count}].Escape}"]
			}
			break
		case -loadmenu
			Count:Inc
			if ${Count}<=${Params.Size}
			{
				MenuMan:Command_LoadMenu["${Params[${Count}].Escape}"]
			}
			break
		case -newmenu
			Count:Inc[4]
			if ${Count}<=${Params.Size}
			{
				MenuMan:Command_NewMenu["${Params[${Math.Calc[${Count}-3]}].Escape}","${Params[${Math.Calc[${Count}-2]}].Escape}","${Params[${Math.Calc[${Count}-1]}].Escape}","${Params[${Count}].Escape}"]
			}
			break
		case -deletemenu
			Count:Inc
			if ${Count}<=${Params.Size}
			{
				MenuMan:Command_DeleteMenu["${Params[${Count}].Escape}"]
			}
			break
		case -clearmenus
			MenuMan:Command_ClearMenus
			break
		case -menubuttonlayout
			Count:Inc[3]
			if ${Count}<=${Params.Size}
			{
				MenuMan:Command_MenuButtonLayout["${Params[${Math.Calc[${Count}-2]}].Escape}","${Params[${Math.Calc[${Count}-1]}].Escape}","${Params[${Count}].Escape}"]
			}
			break
		case -menuattachhotkeys
			Count:Inc[3]
			if ${Count}<=${Params.Size}
			{
				MenuMan:Command_MenuAttachHotkeys["${Params[${Math.Calc[${Count}-2]}].Escape}","${Params[${Math.Calc[${Count}-1]}].Escape}","${Params[${Count}].Escape}"]
			}
			break
		case -menudetachallhotkeys
			Count:Inc
			if ${Count}<=${Params.Size}
			{
				MenuMan:Command_MenuDetachAllHotkeys["${Params[${Count}].Escape}"]
			}
			break
		case -menustartgui
			Count:Inc
			if ${Count}<=${Params.Size}
			{
				MenuMan:Command_MenuStartGUI["${Params[${Count}].Escape}"]
			}
			break
		case -menustopgui
			Count:Inc
			if ${Count}<=${Params.Size}
			{
				MenuMan:Command_MenuStopGUI["${Params[${Count}].Escape}"]
			}
			break
		case -storeallbuttons
			MenuMan:Command_StoreAllButtons
			break
		case -restoreallbuttons
			MenuMan:Command_RestoreAllButtons
			break
		case -restartgui
			MenuMan:Command_RestartGUI
			break
		/* MENU BUTTON */
		case -activatemouseoverbutton
		case activatemouseoverbutton
			{
				MenuMan:Command_ActivateMouseoverButton
			}
			break
		case -holdbutton
			Count:Inc[2]
			if ${Count}<=${Params.Size}
			{
				MenuMan:Command_HoldButton["${Params[${Math.Calc[${Count}-1]}].Escape}","${Params[${Count}].Escape}"]
			}
			break
		case -releasebutton
			Count:Inc[2]
			if ${Count}<=${Params.Size}
			{
				MenuMan:Command_ReleaseButton["${Params[${Math.Calc[${Count}-1]}].Escape}","${Params[${Count}].Escape}"]
			}
			break
		case -buttonupdate
		case buttonupdate

			break
		case -buttonstyle
		case buttonstyle
			Count:Inc[5]
			if ${Count}<=${Params.Size}
			{
				MenuMan:Command_ButtonStyle["${Params[${Math.Calc[${Count}-4]}].Escape}","${Params[${Math.Calc[${Count}-3]}].Escape}","${Params[${Math.Calc[${Count}-2]}].Escape}","${Params[${Math.Calc[${Count}-1]}].Escape}","${Params[${Count}].Escape}"]
			}
			break
		case -buttonimages
		case buttonimages
			Count:Inc[4]
			if ${Count}<=${Params.Size}
			{
				MenuMan:Command_ButtonImages["${Params[${Math.Calc[${Count}-3]}].Escape}","${Params[${Math.Calc[${Count}-2]}].Escape}","${Params[${Math.Calc[${Count}-1]}].Escape}","${Params[${Count}].Escape}"]
			}
			break
		case -buttoncommands
		case buttoncommands
			Count:Inc[4]
			if ${Count}<=${Params.Size}
			{
				MenuMan:Command_ButtonCommands["${Params[${Math.Calc[${Count}-3]}].Escape}","${Params[${Math.Calc[${Count}-2]}].Escape}","${Params[${Math.Calc[${Count}-1]}].Escape}","${Params[${Count}].Escape}"]
			}
			break
		case -buttontext
		case buttontext
			Count:Inc[4]
			if ${Count}<=${Params.Size}
			{
				MenuMan:Command_ButtonText["${Params[${Math.Calc[${Count}-3]}].Escape}","${Params[${Math.Calc[${Count}-2]}].Escape}","${Params[${Math.Calc[${Count}-1]}].Escape}","${Params[${Count}].Escape}"]
			}
			break
		case -buttonstore
		case buttonstore
			Count:Inc[3]
			if ${Count}<=${Params.Size}
			{
				MenuMan:Command_ButtonStore["${Params[${Math.Calc[${Count}-2]}].Escape}","${Params[${Math.Calc[${Count}-1]}].Escape}","${Params[${Count}].Escape}"]
			}
			break		
		case -buttonrestore
		case buttonrestore
			Count:Inc[3]
			if ${Count}<=${Params.Size}
			{
				MenuMan:Command_ButtonRestore["${Params[${Math.Calc[${Count}-2]}].Escape}","${Params[${Math.Calc[${Count}-1]}].Escape}","${Params[${Count}].Escape}"]
			}
			break		
		case -buttondetachsource
		case buttondetachsource
			Count:Inc[3]
			if ${Count}<=${Params.Size}
			{
				MenuMan:Command_ButtonDetachSource["${Params[${Math.Calc[${Count}-2]}].Escape}","${Params[${Math.Calc[${Count}-1]}].Escape}","${Params[${Count}].Escape}"]
			}
			break		
		case -applyviews
		case applyviews
			Count:Inc[3]
			if ${Count}<=${Params.Size}
			{
				MenuMan:Command_ApplyViews["${Params[${Math.Calc[${Count}-2]}].Escape}","${Params[${Math.Calc[${Count}-1]}].Escape}","${Params[${Count}].Escape}"]
			}
			break
		}
	}
}

function main()
{
	if ${InnerSpace.Build}<5780
	{
		echo "\ayMenuMan: \arInner Space Build 5780 or later required!"
		return
	}

	MenuMan:ImportISBoxerSettings["ISBoxerToolkit.MenuManSettings.XML"]

  while 1
  {    
	waitframe
	MenuMan:UpdateMenuPositions
  }
}

atom atexit()
{
	variable int id
	variable int nextid
	id:Set[${UIElement[screen].Children.ID}]
	while ${id}
	{
		nextid:Set[${UIElement[${id}].Next.ID}]
		if ${UIElement[${id}].GetMetadata[menuman](exists)}
		{
			UIElement[${id}]:Destroy
		}

		id:Set[${nextid}]		
	}	
	squelch alias -delete menuman_*
	squelch bind -delete menuman_*
}
