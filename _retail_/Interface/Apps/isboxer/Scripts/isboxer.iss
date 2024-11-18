objectdef isboxercomputer
{
	method Initialize(string _name, string _hostname, int _port, string _uplinkname)
	{
	    Name:Set["${_name.Escape}"]
		Hostname:Set["${_hostname.Escape}"]
		Port:Set[${_port}]
		UplinkName:Set["${_uplinkname.Escape}"]
	}

    method Connect()
	{
;		if !${RemoteUplink["${ComputerSet.FindSetting[Uplink Name].String.Escape}"](exists)}
		{
			ISBoxer:Echo["Initiating connection to Computer '${Name.Escape}' via ${Hostname.Escape}:${Port}"]
			remoteuplink -connect "${Hostname.Escape}" "${Port}"
;			relay "all other uplinks" remoteuplink -connect "${ComputerSet.FindSetting[Host].String.Escape}" "${ComputerSet.FindSetting[Port].Int}"
		}
	}

	method ConnectTo(string _name, string _hostname, int _port, string _uplinkname)
	{
		ISBoxer:Echo["Initiating connection from Computer '${Name.Escape}' to Computer '${_name.Escape}' via ${_hostname.Escape}:${_port}"]
		;echo "Executing: relay \"${_uplinkname.Escape}\" remoteuplink -connect \"${_hostname.Escape}\" ${_port}"
		relay "${UplinkName.Escape}" remoteuplink -connect "${_hostname.Escape}" ${_port}
	}

	member ToText()
	{
		;echo isboxercomputer.ToText "\"${Name.Escape}\",\"${Hostname.Escape}\",\"${Port}\",\"${UplinkName.Escape}\""
		return "\"${Name.Escape}\",\"${Hostname.Escape}\",\"${Port}\",\"${UplinkName.Escape}\""
	}

	variable string Name
	variable string Hostname
	variable int Port
	variable string UplinkName
}

objectdef isboxer
{
	variable settingsetref ISBoxerSettings

	variable bool SettingsImported
	variable index:isboxercomputer CurrentComputers

	method Initialize()
	{
		LavishSettings:AddSet[ISBoxer]
		ISBoxerSettings:Set[${LavishSettings.FindSet["ISBoxer"]}]
	}

	method Shutdown()
	{
		ISBoxerSettings:Remove
	}

	member:bool ImportSettings()
	{
		if ${SettingsImported}
			return TRUE
		
		SettingsImported:Set[${ISBoxerSettings:Import["ISBoxerToolkit.GeneralSettings.XML"](exists)}]
		if ${SettingsImported}
		{
			This:Echo["\agSettings imported\ax from ISBoxerToolkit.GeneralSettings.XML"]
			return TRUE
		}

		This:Echo["\arFailed.\ax Could not import settings from ISBoxerToolkit.GeneralSettings.XML"]
		return FALSE
	}

	method Launch(settingsetref charactersetSet, int Slot,settingsetref characterSet,string addParameters="", bool parametersExclusive=FALSE, string onPreStartup="", string onStartup="", string isboxer2ID="")
	{
		This:Echo["\agLaunching Slot ${Slot} Character\ax '${characterSet.Name.Escape}'"]
		if ${onPreStartup.Length}
			onPreStartup:Set[";${onPreStartup.Escape}"]
		if ${onStartup.Length}
			onStartup:Set[";${onStartup.Escape}"]

		variable string isb2PreStartup
		variable string isb2Startup
		if ${isboxer2ID.Length}>4
		{
			isb2PreStartup:Set["runscript isboxer2/isboxer2.controller -prestartup ${isboxer2ID.Escape};"]
			isb2Startup:Set["runscript isboxer2/isboxer2.controller -startup ${isboxer2ID.Escape};"]
		}
		
		open "${characterSet.FindSetting[Game].String.Escape}" "${characterSet.FindSetting[Game Profile].String.Escape}" -prestartup "${isb2PreStartup}runscript isboxer -preinit \"${charactersetSet.Name.Escape}\" \"${Slot}\" \"${characterSet.Name.Escape}\" \"${isboxer2ID.Escape}\"${onPreStartup.Escape}" -startup "${isb2Startup}runscript isboxer -init \"${charactersetSet.Name.Escape}\" \"${Slot}\" \"${characterSet.Name.Escape}\" \"${isboxer2ID.Escape}\"${onStartup.Escape}"
	}
	
	member:bool IsCharacterSetLocal(string CharacterSet)
	{
		variable settingsetref CSetSet
		CSetSet:Set[${ISBoxerSettings.FindSet[Character Sets].FindSet["${CharacterSet.Escape}"]}]
		if !${CSetSet}
		{
			return FALSE
		}

		if !${CSetSet.FindSetting[Computer](exists)}
			return TRUE

		variable settingsetref ComputerSet
		ComputerSet:Set["${ISBoxerSettings.FindSet[Computers].FindSet["${CSetSet.FindSetting["Computer"].String.Escape}"]}"]
		if !${ComputerSet}
		{
			/* Unknown computer */
			return TRUE
		}

		return ${ComputerSet.FindSetting[Uplink Name].String.Equal["${LavishSettings[2].FindSet[Remote].FindSetting[Name].String.Escape}"]}
	}

	method AddSlotsToMenu(int menuid, settingsetref CSetSet)
	{		
		if !${CSetSet.FindSet["Slots"].Children}
		{
			return
		}

		variable iterator Iterator
		CSetSet.FindSet["Slots"]:GetSetIterator[Iterator]
		
		if !${Iterator:First(exists)}
		{
			return
		}

		do
		{
			if !${Iterator.Value.FindSetting["Character"].String.Length}
			{
				return
			}
			if !${This.ValidateCharacter["${Iterator.Value.FindSetting["Character"].String.Escape}"]}
			{
				return
			}
		}
		while ${Iterator:Next(exists)}		

		Iterator:First
		
		variable int Slot
		do
		{
		    Slot:Set["${Iterator.Key.Right[-5]}"]
;			This:Launch["${CSetSet}",${Slot},"${ISBoxerSettings.FindSet[Characters].FindSet["${Iterator.Value.FindSetting["Character"].String.Escape}"]}"]
			ISMenu[${menuid}]:AddCommand["${Iterator.Key.Escape}: ${Iterator.Value.FindSetting["Character"].String.Escape}","squelch ends isboxer;timed 1 run isboxer -launchslot \\\"${CSetSet.Name.Escape}\\\" ${Slot}"]
		
			if !${Iterator:Next(exists)}
				break
		}
		while 1
	}
	
	method InitUplink()
	{
		if ${Script[pipsqueak](exists)}
		{
			endscript pipsqueak
		}
	
		if !${This.ImportSettings}
			return
		This:Echo["\agAdding ISBoxer Character Sets menu"]
		variable iterator Iterator
		ISBoxerSettings.FindSet[Character Sets]:GetSetIterator[Iterator]
		if !${Iterator:First(exists)}
		{
			This:Echo["\arNo Character Sets. Not adding anything to the Inner Space menu."]
			return
		}

		variable int menuid
		menuid:Set[${ISMenu.FindChild["ISBoxer Character Sets"]}]
		if ${menuid}
			ISMenu[${menuid}]:Clear
		else
			menuid:Set[${ISMenu.AddSubMenu["ISBoxer Character Sets"]}]

		variable int menuidSlots
		menuidSlots:Set[${ISMenu.FindChild["ISBoxer Character Set Slots"]}]
		if ${menuidSlots}
			ISMenu[${menuidSlots}]:Clear
		else
			menuidSlots:Set[${ISMenu.AddSubMenu["ISBoxer Character Set Slots"]}]

		do
		{
			if ${This.IsCharacterSetLocal["${Iterator.Key.Escape}"]}
			{				
				This:Echo["\agAdding Character Set\ax '${Iterator.Key.Escape}'"]
				ISMenu[${menuid}]:AddCommand["${Iterator.Key.Escape}","squelch ends isboxer;timed 1 run isboxer -launch \\\"${Iterator.Key.Escape}\\\""]

				variable int menuidMySlots
				menuidMySlots:Set[${ISMenu[${menuidSlots}].AddSubMenu["${Iterator.Key.Escape}"]}]
				This:AddSlotsToMenu[${menuidMySlots},${Iterator.Value}]
			}
			else
			{
				This:Echo["Character Set '${Iterator.Key.Escape}' lives on another Computer -- not adding it to our menu."]
			}
		}
		while ${Iterator:Next(exists)}
	}

	method On3DReset()
	{
		
	}

	method PreInitCharacter(string CharacterSet, int Slot, string Character, string isboxer2ID)
	{
		ISBoxerCharacterSet:Set["${CharacterSet.Escape}"]
		ISBoxerSlot:Set["${Slot}"]
		ISBoxerCharacter:Set["${Character.Escape}"]
		ISBoxer2Window:Set["${isboxer2ID.Escape}"]

		if !${This.ImportSettings}
			return
		variable settingsetref charactersetSet
		charactersetSet:Set[${ISBoxerSettings.FindSet[Character Sets].FindSet["${CharacterSet.Escape}"]}]
		if !${charactersetSet}
		{
			This:Echo["\arFailed.\ax Character Set '${CharacterSet.Escape}' not found."]
			return
		}

		
		This:InitSlotVariables[${charactersetSet}]

		variable settingsetref characterSet
		characterSet:Set[${ISBoxerSettings.FindSet[Characters].FindSet["${Character.Escape}"]}]
		if !${characterSet}
		{
			This:Echo["\arFailed.\ax Character '${Character.Escape}' not found."]
			return
		}
		
		;fileredirect "SavedVariables/Jamba.lua" "SavedVariables/Jamba-ISBoxer.lua"
		fileredirect "Global/DAoCi1" "Global\\DAoCi1-${Slot}-${Time.Timestamp}-${Math.Rand[1000]}"
		fileredirect "Global/DAoCi2" "Global\\DAoCi2-${Slot}-${Time.Timestamp}-${Math.Rand[1000]}"
		fileredirect "ui.log" "ui.Slot-${Slot}.log"

		fileredirect "SwgClientInstanceRunning" "SwgClientInstanceRunning-${Slot}-${Time.Timestamp}-${Math.Rand[1000]}"
		fileredirect "AN-Mutex-Window-Guild Wars 2" "AN-Mutex-Window-Guild Wars 2-${Slot}-${Time.Timestamp}-${Math.Rand[1000]}"
		fileredirect "AN-Mutex-Window-Guild Wars" "AN-Mutex-Window-Guild Wars-${Slot}-${Time.Timestamp}-${Math.Rand[1000]}"
;		fileredirect "AN-Mutex-OsPatch" "AN-Mutex-OsPatch-${Slot}"
		fileredirect "wot_client_mutex" "wot_client_mutex-${Slot}-${Time.Timestamp}-${Math.Rand[1000]}"
		fileredirect "AionClientLaunchedCounter" "AionClientLaunchedCounter-${Slot}-${Time.Timestamp}-${Math.Rand[1000]}"
		
		; fileredirect "gw2.dat" "gw2-ISBoxerSlot${Slot}.dat"

		; Star Wars: The Old Republic
		fileredirect "DiskCacheArena" "DiskCacheArena-${Slot}"
		fileredirect "DiskCacheStatic" "DiskCacheStatic-${Slot}"
		fileredirect "DiskCacheStream" "DiskCacheStream-${Slot}"

		fileredirect "Empyrean Client" "Empyrean Client-${Slot}"
		fileredirect "Heroes of the Storm IPC Mem" "Heroes of the Storm IPC Mem-${Slot}"
		fileredirect "Heroes of the Storm Game Application" "Heroes of the Storm Game Application-${Slot}"
		

		fileredirect "Data_D3/PC/MPQs/Cache/" "Data_D3/PC/MPQs/Cache-${Slot}/"
		fileredirect "DSOClient/dlcache/" "DSOClient/dlcache-${Slot}/"
		fileredirect "Entropia_0" "Entropia_0-${Slot}"
		fileredirect "PlanetSide 2.running" "PlanetSide 2.running-${Slot}"
		fileredirect "Wizardry Online Beta.running" "Wizardry Online Beta.running-${Slot}"
		fileredirect "Wizardry Online.running" "Wizardry Online.running-${Slot}"
		fileredirect "Dragon" "Dragon-${Slot}"
		fileredirect "Global/Lunia" "Global/Lunia-${Slot}"
		fileredirect "Global/6AA83AB5-BAC4-4a36-9F66-A309770760CB_ffxiv_game00" "Global/6AA83AB5-BAC4-4a36-9F66-A309770760CB_ffxiv_game00-${Slot}"
		fileredirect "Global/6AA83AB5-BAC4-4a36-9F66-A309770760CB_ffxiv_game01" "Global/6AA83AB5-BAC4-4a36-9F66-A309770760CB_ffxiv_game01-${Slot}"
		fileredirect "Global/PoERunMutexA" "Global/PoERunMutexA-${Slot}"
		fileredirect "Global/PoERunMutexB" "Global/PoERunMutexB-${Slot}"

		fileredirect "Global/Valve_SteamIPC_Class" "Global/Valve_SteamIPC_Class-${Slot}"
		fileredirect "Global/SteamInstanceGlobal" "Global/SteamInstanceGlobal-${Slot}"
		fileredirect "Software/Valve/Steam/" "Software/Valve/Steam-ISBoxer/Slot${Slot}/"
		; config.vdf, SteamAppData.vdf, loginusers.vdf

		; Glyph
		fileredirect "glyphcrashhandler" "glyphcrashhandler-${Slot}"

		; Tree of Savior
		fileredirect "/TreeOfSavior/" "/TreeOfSavior-${Slot}/"
		fileredirect "tosUpdater$%&%%^@&^*($#" "tosUpdater$%&%%^@&^*($#-${Slot}"
		fileredirect "^&(%($$#^@@%$^!Project_R1!@$%^&!#*()#$%^" "^&(%($$#^@@%$^!Project_R1!@$%^&!#*()#$%^-${Slot}"

		; The Secret World
		fileredirect lock2.txt lock2-${Slot}
;		fileredirect "${System.CurrentDirectory(string).Escape}/Default/"  "${System.CurrentDirectory(string).Escape}/Default-${Slot}/"

		fileredirect "Allods_Online_Game" "Allods_Online_Game-${Slot}"
		fileredirect "wgc_running_games_mtx" "wgc_running_games_mtx-${Slot}"
		fileredirect "World of Warships" "World of Warships-${Slot}"

		; SWTOR Bitraider
		fileredirect "Local/BRWCExtApp_FM_V1" "Local/BRWCExtApp_FM_V1-${Slot}"

		if ${LavishScript.Executable.Find[acclient.exe]} || ${LavishScript.Executable.Find[aclauncher.exe]}
		{
			fileredirect "client_highres.dat" "ISBoxer.Slot${Slot}.client_highres.dat"
			fileredirect "client_portal.dat" "ISBoxer.Slot${Slot}.client_portal.dat"
			fileredirect "client_local_English.dat" "ISBoxer.Slot${Slot}.client_local_English.dat"
			fileredirect "client_cell_1.dat" "ISBoxer.Slot${Slot}.client_cell_1.dat"
		}
		if ${LavishScript.Executable.Find[ac2client.exe]} || ${LavishScript.Executable.Find[ac2launcher.exe]}
		{
			fileredirect "highres.dat" "ISBoxer.Slot${Slot}.highres.dat"
			fileredirect "portal.dat" "ISBoxer.Slot${Slot}.portal.dat"
			fileredirect "cell_1.dat" "ISBoxer.Slot${Slot}.cell_1.dat"
			fileredirect "cell_2.dat" "ISBoxer.Slot${Slot}.cell_2.dat"
			fileredirect "country.dat" "ISBoxer.Slot${Slot}.country.dat"

			fileredirect "local_Chinese.dat" "ISBoxer.Slot${Slot}.local_Chinese.dat"
			fileredirect "local_Deutsch.dat" "ISBoxer.Slot${Slot}.local_Deutsch.dat"
			fileredirect "local_English.dat" "ISBoxer.Slot${Slot}.local_English.dat"
			fileredirect "local_Francais.dat" "ISBoxer.Slot${Slot}.local_Francais.dat"
			fileredirect "local_Japanese.dat" "ISBoxer.Slot${Slot}.local_Japanese.dat"
			fileredirect "local_Korean.dat" "ISBoxer.Slot${Slot}.local_Korean.dat"
		}

		if ${LavishScript.Executable.Find[swtor.exe]}
		{
			fileredirect "Local/" "Local/${Slot}::"
		}


		fileredirect "isboxer-binds.txt" "isboxer-${CharacterSet.Escape}-${Character.Escape}-binds.txt"
		
		fileredirect "ISBoxer_Character_Set.lua" "ISBoxer_Character_Set-${CharacterSet.Escape}.lua"
		fileredirect "ISBoxer_Character.lua" "ISBoxer_Character-${Character.Escape}.lua"

		; an old WoW crash fix. can likely be freed up now!
;		fileredirect "cache.wdb" "cache-slot${Slot}.wdb"

		if !${Bool["${charactersetSet.FindSetting["Disable Force Windowed"].String.Escape}"]} && ${Slot}>1 || ${Slot}<${This.GetSlotCount[${charactersetSet}]}
		{
			LavishScript:RegisterEvent[On3DReset]
			Event[On3DReset]:AttachAtom[This:On3DReset]
			noop ${Direct3D8:SetForceWindowed[1]} ${Direct3D9:SetForceWindowed[1]} ${Direct3D10:SetForceWindowed[1]} ${Direct3D11:SetForceWindowed[1]}					
			
		}

		if ${Bool["${charactersetSet.FindSetting["Enforce Single Window Control"].String.Escape}"]}
		{
			ISBoxerSingleWindowControl:Set[1]
		}
		else
		{
			ISBoxerSingleWindowControl:Set[0]
		}

		if ${InnerSpace.Build}>=5658 && ${Bool["${charactersetSet.FindSetting["Disable Vertical Sync"].String.Escape}"]}
		{
			noop ${Direct3D8:DisableVSync} ${Direct3D9:DisableVSync} ${Direct3D11:DisableVSync}
		}

		variable iterator Iterator
		if ${charactersetSet.FindSet[Virtual Files]:GetSettingIterator[Iterator](exists)} && ${Iterator:First(exists)}
		{
			do
			{
				This:Echo["Virtualizing file '${Iterator.Key.Escape}' as '${Iterator.Value.String.Escape}'"]
				fileredirect "${Iterator.Key.Escape}" "${Iterator.Value.String.Escape}"
			}
			while ${Iterator:Next(exists)}
		}

		if ${characterSet.FindSet[Virtual Files]:GetSettingIterator[Iterator](exists)} && ${Iterator:First(exists)}
		{
			do
			{
				This:Echo["Virtualizing file '${Iterator.Key.Escape}' as '${Iterator.Value.String.Escape}'"]
				fileredirect "${Iterator.Key.Escape}" "${Iterator.Value.String.Escape}"
			}
			while ${Iterator:Next(exists)}
		}

		if ${charactersetSet.FindSetting["Window Layout"].String.Length}
			call This.PreInitWindowLayout "${charactersetSet.FindSetting["Window Layout"].String.Escape}" "${Slot}"
;		elseif ${charactersetSet.FindSetting["WindowSnapper"].String.Length}
;			call This.PreInitWindowSnapper "${charactersetSet.FindSetting["WindowSnapper"].String.Escape}" "${Slot}"

		if ${InnerSpace.Build}>=5423
			VideoFeed:SetPermanentVideoFeeds["${characterSet.FindSetting["Video Feed Viewers Permanent"].String.Escape}"]
	}

	function PreInitWindowLayout(string WindowLayout, int Slot)
	{
		if ${InnerSpace.Build}<5302
			return

		variable settingsetref profileSet
		profileSet:Set["${ISBoxerSettings.FindSet[Window Layouts].FindSet["${WindowLayout.Escape}"]}"]
		if !${profileSet}
		{
			This:Echo["\arCannot pre-init Window Layout.\ax Window Layout '${WindowLayout.Escape}' not found."]
			return
		}
		This:Echo["\agPre-initializing Window Layout\ax '${profileSet.Name.Escape}'"]

		if !${profileSet.FindSet[Slots].FindSetting[${Slot}](exists)}
		{
			This:Echo["\arCannot pre-init Window Layout.\ax Window Layout '${WindowLayout.Escape}' does not support Character Set Slot number ${Slot}."]
			return
		}

		variable uint SwapGroup
		variable uint UseRegion
		SwapGroup:Set[${profileSet.FindSet[Slots].FindSetting[${Slot}].FindAttribute[SwapGroup].Int}]
		UseRegion:Set[${profileSet.FindSet[Slots].FindSetting[${Slot}].FindAttribute[Region].Int}]

		variable settingsetref swapgroupSet
		swapgroupSet:Set["${profileSet.FindSet[Swap Groups].FindSet[${SwapGroup}]}"]

		variable settingsetref inactiveregionSet
		inactiveregionSet:Set["${profileSet.FindSet[Regions].FindSet[${UseRegion}]}"]

		variable settingsetref activeregionSet
		variable bool Permanent
		Permanent:Set[${Bool["${profileSet.FindSet[Slots].FindSetting[${Slot}].FindAttribute[Permanent].String.Escape}"]}]
		if ${Permanent} && ${inactiveregionSet}
		{		
			This:Echo["\atWindow Layout region is permanent, locking Active Region to Inactive Region"]
			activeregionSet:Set[${inactiveregionSet}]
		}
		else
		{
			activeregionSet:Set[${profileSet.FindSet[Regions].FindSet[${swapgroupSet.FindSetting[Active Region].Int}]}]
		}
		variable settingsetref resetregionSet
		resetregionSet:Set[${profileSet.FindSet[Regions].FindSet[${swapgroupSet.FindSetting[Reset Region].Int}]}]

		variable bool EmulateSet
		if ${resetregionSet}
		{
			videomode -add ${resetregionSet.FindSetting[Width].Int}x${resetregionSet.FindSetting[Height].Int}
			if !${EmulateSet}
			{
				This:Echo["\atWindow Layout selecting Reset Region resolution: ${resetregionSet.FindSetting[Width].Int}x${resetregionSet.FindSetting[Height].Int}"]
				videomode -emulate ${resetregionSet.FindSetting[Width].Int}x${resetregionSet.FindSetting[Height].Int}
			}
			EmulateSet:Set[TRUE]
		}

		if ${activeregionSet}
		{
			videomode -add ${activeregionSet.FindSetting[Width].Int}x${activeregionSet.FindSetting[Height].Int}
			if !${EmulateSet}
			{
				This:Echo["\atWindow Layout selecting Active Region resolution: ${activeregionSet.FindSetting[Width].Int}x${activeregionSet.FindSetting[Height].Int}"]
				videomode -emulate ${activeregionSet.FindSetting[Width].Int}x${activeregionSet.FindSetting[Height].Int}
			}
			EmulateSet:Set[TRUE]

			if ${InnerSpace.Build}>=5353
			{
				ISBoxerMonitor:Set["${activeregionSet.FindSetting[Monitor].String.Escape}"]
				This:Echo["\atWindow Layout binding to monitor: ${ISBoxerMonitor.Escape}"]
				squelch noop ${Direct3D8:SetMonitor["${ISBoxerMonitor.Escape}"]} ${Direct3D9:SetMonitor["${ISBoxerMonitor.Escape}"]} ${Direct3D11:SetMonitor["${ISBoxerMonitor.Escape}"]}
			}
		}

		if ${inactiveregionSet}
		{
			videomode -add ${inactiveregionSet.FindSetting[Width].Int}x${inactiveregionSet.FindSetting[Height].Int}
			if !${EmulateSet}
			{
				This:Echo["\atWindow Layout selecting Home Region resolution: ${inactiveregionSet.FindSetting[Width].Int}x${inactiveregionSet.FindSetting[Height].Int}"]
				videomode -emulate ${inactiveregionSet.FindSetting[Width].Int}x${inactiveregionSet.FindSetting[Height].Int}
			}
			EmulateSet:Set[TRUE]

			if ${InnerSpace.Build}>=5353
			{
				ISBoxerMonitor:Set["${inactiveregionSet.FindSetting[Monitor].String.Escape}"]
				This:Echo["\atWindow Layout binding to monitor: ${ISBoxerMonitor.Escape}"]				
				squelch noop ${Direct3D8:SetMonitor["${ISBoxerMonitor.Escape}"]}  ${Direct3D9:SetMonitor["${ISBoxerMonitor.Escape}"]} ${Direct3D11:SetMonitor["${ISBoxerMonitor.Escape}"]}
			}
		}
	}

	member:uint SlotsInSwapGroup(settingsetref slotsSet, uint SwapGroup)
	{
		if !${slotsSet}
		{
			return 0
		}

		variable iterator Iterator
		slotsSet:GetSettingIterator[Iterator]

		if !${Iterator:First(exists)}
		{
			return 0
		}

		variable uint Count

		do
		{
			if ${Iterator.Value.FindAttribute[SwapGroup].Int}==${SwapGroup}
			{
				Count:Inc
			}
		}
		while ${Iterator:Next(exists)}

		return ${Count}
	}

	function InitWindowLayout(string WindowLayout, int Slot, bool LastSlot)
	{
		if ${InnerSpace.Build}<5302
			return

		variable settingsetref profileSet
		profileSet:Set["${ISBoxerSettings.FindSet[Window Layouts].FindSet["${WindowLayout.Escape}"]}"]
		if !${profileSet}
		{
			This:Echo["\arCannot init Window Layout.\ax Window Layout '${WindowLayout.Escape}' not found."]
			return
		}
		This:Echo["\agInitializing Window Layout\ax '${profileSet.Name.Escape}'"]

		if !${profileSet.FindSet[Slots].FindSetting[${Slot}](exists)}
		{
			This:Echo["\arCannot init Window Layout.\ax Window Layout '${WindowLayout.Escape}' does not support Character Set Slot number ${Slot}."]
			return
		}

		variable uint UseVFXLayout
		variable uint SwapGroup
		variable uint UseRegion
		UseVFXLayout:Set[${profileSet.FindSet[Slots].FindSetting[${Slot}].FindAttribute[VideoFXLayout].Int}]
		SwapGroup:Set[${profileSet.FindSet[Slots].FindSetting[${Slot}].FindAttribute[SwapGroup].Int}]
		UseRegion:Set[${profileSet.FindSet[Slots].FindSetting[${Slot}].FindAttribute[Region].Int}]

		variable uint SwapGroupSize
		SwapGroupSize:Set[${This.SlotsInSwapGroup[${profileSet.FindSet[Slots]},${SwapGroup}]}]
		This:Echo["I am in Swap Group ${SwapGroup}; there are ${SwapGroupSize} windows in this Swap Group"]

		uplink relaygroup -join swapgroup${SwapGroup}

		variable settingsetref swapgroupSet
		swapgroupSet:Set["${profileSet.FindSet[Swap Groups].FindSet[${SwapGroup}]}"]

		variable settingsetref inactiveregionSet
		inactiveregionSet:Set["${profileSet.FindSet[Regions].FindSet[${UseRegion}]}"]

		variable settingsetref activeregionSet
		variable bool Permanent
		Permanent:Set[${Bool["${profileSet.FindSet[Slots].FindSetting[${Slot}].FindAttribute[Permanent].String.Escape}"]}]
		if ${Permanent} && ${inactiveregionSet}
			activeregionSet:Set[${inactiveregionSet}]
		else
			activeregionSet:Set[${profileSet.FindSet[Regions].FindSet[${swapgroupSet.FindSetting[Active Region].Int}]}]
		variable settingsetref resetregionSet
		resetregionSet:Set[${profileSet.FindSet[Regions].FindSet[${swapgroupSet.FindSetting[Reset Region].Int}]}]


		if ${Display.Window.IsMaximized}
		{
			This:Echo["\ayWindow is Maximized. Attempting to un-maximize the window."]
			windowvis restore
			waitframe
		}









; ==================================================================================================================================================================



		switch ${profileSet.FindSetting["Focus Click"]}
		{
		case Ignore
				focusclick eat
			break
		case Click
				focusclick click
			break
		}
		
		ISBoxerFocusFollowsMouse:Set["${Bool["${profileSet.FindSetting["Focus Follows Mouse"].String.Escape}"]}"]
			
		variable string BorderOptions
		
		variable string BorderStyle
		if ${profileSet.FindSetting["Border"](exists)}
		{
			BorderOptions:Set[" -frame \"${profileSet.FindSetting["Border"].String.Escape}\""]
			BorderStyle:Set["${profileSet.FindSetting["Border"].String.Escape}"]
		}
		else
		{
			if !${ISBoxerBorderStyle(exists)}
			{
				declare ISBoxerBorderStyle string globalkeep
			
				ISBoxerBorderStyle:Set["${Display.Window.Frame}"]
			}
			BorderOptions:Set[" -frame \"${ISBoxerBorderStyle}\""]
			BorderStyle:Set["${ISBoxerBorderStyle}"]
		}
		

		variable string Options
		Options:Set[" "]

		if ${Bool["${profileSet.FindSetting["Rollover Enabled"].String.Escape}"]}
		{
			Options:Concat["-rollover "]
			Options:Concat["-rolloverscale \"${profileSet.FindSetting["Rollover Scale"].String.Escape}\" "]
			if ${Bool["${profileSet.FindSetting["Rollover RollUp Enabled"].String.Escape}"]}
				Options:Concat["-rolloverframes \"${profileSet.FindSetting["Rollover RollUp Frames"].String.Escape}\" "]
		}
		else
		{
			Options:Concat["-norollover "]
		}

		if ${profileSet.FindSetting["Swap Hotkey"](exists)}
		{
			;Options:Concat["-ignore -noautotoggleignore "]
			;globalbind -delete "${Session}_key"
			Input:Bind[-release,isboxer_snapkey,"${profileSet.FindSetting["Swap Hotkey"].String.Escape}","ISBoxerMainActivate 1"]
		}

		variable bool Snapping=1
		switch ${profileSet.FindSetting["Swap Mode"]}
		{
		case Never
			Snapping:Set[0]
			Options:Concat["-ignore -noautotoggleignore -ignoreinternal "]
			Options:Concat["-autodeactivatemode never "]
			ISBoxerMainActivateAuto:Set[TRUE]
			break
        case AlwaysForGames
			if ${SwapGroupSize}!=1
			{
				ISBoxerMainActivateAuto:Set[FALSE]
				ISBoxerFocusFollowsMouse:Set[FALSE]
 				focusclick eat
				Options:Concat["-autodeactivatemode game -noignoreinternal "]
				break
			}
			else
			{
				This:Echo["I am the only window in my Swap Group. Using 'AlwaysForNonGames' auto-deactivation instead of 'AlwaysForGames'"]
				ISBoxerMainActivateAuto:Set[TRUE]
				ISBoxerFocusFollowsMouse:Set[FALSE]
				focusclick eat
				Options:Concat["-autodeactivatemode nongame -noignoreinternal "]
				break
			}
        case Always
			ISBoxerMainActivateAuto:Set[FALSE]
			ISBoxerFocusFollowsMouse:Set[FALSE]
			Options:Concat["-autodeactivatemode always -noignoreinternal "]
			focusclick eat
			break
		case AnyInternal
			Options:Concat["-ignore -noautotoggleignore -noignoreinternal "]
			ISBoxerMainActivateAuto:Set[FALSE]
			Options:Concat["-autodeactivatemode always "]
			break
        case SlotActivate
			Options:Concat["-ignore -noautotoggleignore -ignoreinternal "]
			ISBoxerMainActivateAuto:Set[TRUE]
			Options:Concat["-autodeactivatemode never "]
			break
        case SpecificHotkey
			ISBoxerMainActivateAuto:Set[FALSE]
			Options:Concat["-ignore -noautotoggleignore -ignoreinternal "]
			Options:Concat["-autodeactivatemode never "]
			break
		}

		if ${profileSet.FindSetting["WheelSwitcher Key"].String.Length}
			Options:Concat["-wheelswitcher \"${profileSet.FindSetting["WheelSwitcher Key"].String.Escape}\" "]
		Options:Concat["-noignorekey "]
		Options:Concat["-nodragkey "]
			
		if (${profileSet.FindSetting["Instant Swap"](exists)} && !${Bool["${profileSet.FindSetting["Instant Swap"].String.Escape}"]})
			Options:Concat["-noinstantswap "]
		else
			Options:Concat["-instantswap "]

		if ${Bool["${profileSet.FindSetting["Use Video FX Layout"].String.Escape}"]}
		{
			Options:Concat["-usevideofxlayout "]
		}

		if ${Snapping} && ${swapgroupSet.FindSetting["PiPSqueak Slot"].Int}/*==${Slot}*/
			Options:Concat["-pipsqueak "]
		else
			Options:Concat["-nopipsqueak "]

		if ${swapgroupSet.FindSetting["PiPSqueak Slot"].Int}
			Options:Concat["-pipsqueakslot is${swapgroupSet.FindSetting["PiPSqueak Slot"].Int} "]

		Options:Concat["-swapgroup swapgroup${SwapGroup} "]

					
		ISBoxer:Echo["WindowSnapper Options: ${Options.Escape}"]
		{
			if !${Script[windowsnapper2](exists)}
				run windowsnapper2${Options}
			else
				snapset ${Options}
		}
		
		waitframe

		if ${Script[windowsnapper2](exists)}
		{
			windowcharacteristics -lock
			if ${resetregionSet}
			{
				ISBoxer:Echo[Setting reset region...]
				resetregion ${resetregionSet.FindSetting[Left].Int} ${resetregionSet.FindSetting[Top].Int} ${resetregionSet.FindSetting[Width].Int} ${resetregionSet.FindSetting[Height].Int} ${resetregionSet.FindSetting["Always On Top"].String.NotEqual[Normal]} "${resetregionSet.FindSetting["Border"].String.Escape}" ${resetregionSet.FindSetting["Always On Top"].String.Equal[SometimesOnTop]}
			}
			if ${activeregionSet}
			{
				ISBoxer:Echo[Setting foreground region...]
				foreregion ${activeregionSet.FindSetting[Left].Int} ${activeregionSet.FindSetting[Top].Int} ${activeregionSet.FindSetting[Width].Int} ${activeregionSet.FindSetting[Height].Int} ${activeregionSet.FindSetting["Always On Top"].String.NotEqual[Normal]} "${activeregionSet.FindSetting["Border"].String.Escape}" ${activeregionSet.FindSetting["Always On Top"].String.Equal[SometimesOnTop]}
			}
			if !${resetregionSet} && !${activeregionSet}
			{
				ISBoxer:Echo[No reset or foreground region. Setting foreground region to match background region...]
				foreregion ${inactiveregionSet.FindSetting[Left].Int} ${inactiveregionSet.FindSetting[Top].Int} ${inactiveregionSet.FindSetting[Width].Int} ${inactiveregionSet.FindSetting[Height].Int} ${inactiveregionSet.FindSetting["Always On Top"].String.NotEqual[Normal]} "${inactiveregionSet.FindSetting["Border"].String.Escape}" ${inactiveregionSet.FindSetting["Always On Top"].String.Equal[SometimesOnTop]}
			}			
			if ${inactiveregionSet}
			{
				ISBoxer:Echo[Setting background region...]
				backregion ${inactiveregionSet.FindSetting[Left].Int} ${inactiveregionSet.FindSetting[Top].Int} ${inactiveregionSet.FindSetting[Width].Int} ${inactiveregionSet.FindSetting[Height].Int} ${inactiveregionSet.FindSetting["Always On Top"].String.NotEqual[Normal]} "${inactiveregionSet.FindSetting["Border"].String.Escape}" ${inactiveregionSet.FindSetting["Always On Top"].String.Equal[SometimesOnTop]}
			}

			if ${resetregionSet}
				snapset -reset
			else			
				snapset -resetfore
			wait 5
			if ${Snapping}
				snapset -forcedeactivate
			else
				snapset -home
				/*
			if ${LastSlot}
			{
					uplink focus is1
					relay is1 ISBoxerMainActivate 1
;					relay is1 snapset -activate
			}
			*/
		}

		if ${Bool["${profileSet.FindSetting["Use Video FX Layout"].String.Escape}"]}
		{
			variable iterator slotIterator
			profileSet.FindSet["Slots"]:GetSettingIterator[slotIterator]
		
			if ${slotIterator:First(exists)}
			{
				do
				{
;					echo Snapper.VFXLayoutSlots:Set[is${slotIterator.Key.Escape},${slotIterator.Value.FindAttribute[VideoFXLayout].Int}]
					Snapper.VFXLayoutSlots:Set[is${slotIterator.Key.Escape},${slotIterator.Value.FindAttribute[VideoFXLayout].Int}]
				}
				while ${slotIterator:Next(exists)}
			}

		}


		if ${UseVFXLayout}>0
		{
			if ${Script[vfxlayout](exists)}
			{
				endscript vfxlayout
				wait 5
			}

			if !${Script[vfxlayout](exists)}
			{
				run vfxlayout
				waitframe
			}
			else
				VFXLayout:Clear

			variable iterator vfxIterator
		
			if ${profileSet.FindSet["VFX Layouts"].FindSet["${UseVFXLayout}"].FindSetting["RoamingSlot"](exists)}		
			{
				VFXLayout.RoamingSlot:Set["is${profileSet.FindSet["VFX Layouts"].FindSet["${UseVFXLayout}"].FindSetting["RoamingSlot"].String.Escape}"]
			}

			This:Echo["\ayApplying Video FX Layout ${UseVFXLayout}"]
			if ${profileSet.FindSet["VFX Layouts"].FindSet["${UseVFXLayout}"].FindSet["Regions"]:GetSettingIterator[vfxIterator](exists)}
			{
				if ${vfxIterator:First(exists)}
				{
					do
					{
					; method AddRegion(int regionNumber, int x, int y, int w, int h)
						VFXLayout:AddRegion["${vfxIterator.Value.FindAttribute["RegionNumber"].Int}","${vfxIterator.Value.FindAttribute["X"].Int}","${vfxIterator.Value.FindAttribute["Y"].Int}","${vfxIterator.Value.FindAttribute["Width"].Int}","${vfxIterator.Value.FindAttribute["Height"].Int}"]
						
					}
					while ${vfxIterator:Next(exists)}
				}
			}
			if ${profileSet.FindSet["VFX Layouts"].FindSet["${UseVFXLayout}"].FindSet["Slots"]:GetSettingIterator[vfxIterator](exists)}
			{
				if ${vfxIterator:First(exists)}
				{
					do
					{
					;method AddSlot(int slotNumber, string sessionName, int homeSlot) 
						VFXLayout:AddSlot["${vfxIterator.Value.FindAttribute["SlotNumber"].Int}","${vfxIterator.Value.FindAttribute["SessionName"].String.Escape}","${vfxIterator.Value.FindAttribute["HomeRegion"].Int}"]
						
					}
					while ${vfxIterator:Next(exists)}
				}
			}

		}










; ==================================================================================================================================================================

	}


	member ResolveTarget(string name)
	{
		if !${name.Length} || ${name.Equal[self]}
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

	function InitRepeater(string RepeaterProfile)
	{
		variable settingsetref profileSet
		profileSet:Set["${ISBoxerSettings.FindSet[Repeater Profiles].FindSet["${RepeaterProfile.Escape}"]}"]
		if !${profileSet}
		{
			This:Echo["\arCannot apply Repeater Profile.\ax Repeater Profile '${RepeaterProfile.Escape}' not found."]
			return
		}
		This:Echo["\agApplying Repeater Profile\ax '${profileSet.Name.Escape}'"]

		if !${Script[repeater](exists)}
		{
			ISBoxer:Echo["\agLaunching Repeater\ax ..."]
			run repeater -nodefaultlist
			if !${Script[repeater](exists)}
			{
				ISBoxer:Echo["\arCannot apply Repeater Profile.\ax Repeater not available."]
				return
			}
		}

		if ${profileSet.FindSetting[Keyboard Light].String.Length}
			repeater -keylight "${profileSet.FindSetting[Keyboard Light].String.Escape}"
		if ${profileSet.FindSetting[Mouse Light].String.Length}
			repeater -mouselight "${profileSet.FindSetting[Mouse Light].String.Escape}"

		if ${profileSet.FindSetting[Toggle Keyboard Bind].String.Length}
			repeater -keyboardkey "${profileSet.FindSetting[Toggle Keyboard Bind].String.Escape}"

		if ${profileSet.FindSetting[Toggle Mouse Bind].String.Length}
			repeater -mousekey "${profileSet.FindSetting[Toggle Mouse Bind].String.Escape}"

		if ${profileSet.FindSetting[Toggle All Bind].String.Length}
			repeater -allkey "${profileSet.FindSetting[Toggle All Bind].String.Escape}"

		if ${profileSet.FindSetting[Global Toggle Keyboard Bind].String.Length}
			repeater -globalkeyboardkey "${profileSet.FindSetting[Global Toggle Keyboard Bind].String.Escape}"

		if ${profileSet.FindSetting[Global Toggle Mouse Bind].String.Length}
			repeater -globalmousekey "${profileSet.FindSetting[Global Toggle Mouse Bind].String.Escape}"

		if ${profileSet.FindSetting[Global Toggle All Bind].String.Length}
			repeater -globalallkey "${profileSet.FindSetting[Global Toggle All Bind].String.Escape}"

		if ${profileSet.FindSetting[Repeater Target].String.Length}
			repeatertarget "${This.ResolveTarget["${profileSet.FindSetting[Repeater Target].String.Escape}"]}" ${Bool["${profileSet.FindSetting[Block Local].String}"]}

		if ${ISBoxerSingleWindowControl}		
		{
			repeatertarget self 1
		}


		if ${Bool["${profileSet.FindSetting[Fake Cursor].String.Escape}"]}
			repeater -falsecursor
		else
			repeater -nofalsecursor
			
		if ${InnerSpace.Build}>=5663 && ${profileSet.FindSetting[Cursor Color Mask].String.Length}
		{
			noop ${Direct3D8:SetCursorColor["${profileSet.FindSetting[Cursor Color Mask].String.Escape}"]}
			Direct3D9:SetCursorColor["${profileSet.FindSetting[Cursor Color Mask].String.Escape}"]
			Direct3D11:SetCursorColor["${profileSet.FindSetting[Cursor Color Mask].String.Escape}"]
		}

		repeater -import "ISBoxerToolkit.RepeaterSettings.XML"

		switch ${profileSet.FindSetting[List Type].String}
		{
		case WhiteList
			repeater -whitelist "${profileSet.Name.Escape}"
			break
		case BlackList
			repeater -blacklist "${profileSet.Name.Escape}"
			break
		}
		
		if ${Bool["${profileSet.FindSetting[Key Repeat Enabled].String.Escape}"]}
			repeater keyon
		if ${Bool["${profileSet.FindSetting[Mouse Repeat Enabled].String.Escape}"]}
			repeater mouseon

		if ${Bool["${profileSet.FindSetting[Mute Cursor When Foreground].String.Escape}"]}
			repeater muteforegroundon
		else
			repeater muteforegroundoff

		if ${Bool["${profileSet.FindSetting[Video FX Always Affects Broadcasting].String.Escape}"]}
			repeater vfxaffectsbroadcasting
		else
			repeater novfxaffectsbroadcasting
		
		if ${profileSet.FindSetting[Mouse Transform Mode].String.Length}
			repeater -mousetransform "${profileSet.FindSetting[Mouse Transform Mode].String.Escape}"
	}
	
	function LoadKeyMapper(string ftlModifiers)
	{
		if !${Script[repeater](exists)}
		{
			ISBoxer:Echo["\agLaunching Repeater\ax ..."]
			run repeater
			wait 5
			if !${Script[repeater](exists)}
			{
				ISBoxer:Echo["\ayKeyMapper functionality may be limited.\ax Repeater not available."]
				return
			}

			if ${ISBoxerSingleWindowControl}		
			{
				repeatertarget self 1
			}

		}

		if !${Script[keymapper](exists)}
		{			
			ISBoxer:Echo["\agLaunching KeyMapper\ax ..."]
			run keymapper -nodefaultmaps
			if !${Script[keymapper](exists)}
			{
				ISBoxer:Echo["\arCannot apply Key Maps.\ax KeyMapper not available."]
				return
			}
			keymapper -import "ISBoxerToolkit.KeyMapperSettings.XML"
			if ${ftlModifiers.Length}
				keymapper -ftlmods "${ftlModifiers.Escape}"
		}
	}
	
	function InitKeyMapper(settingsetref keymapsSet,string ftlModifiers)
	{
		variable iterator Iterator
		keymapsSet:GetSettingIterator[Iterator]

		if !${Iterator:First(exists)}
		{
			return
		}
		
		do
		{
			ISBoxer:Echo["\agApplying Key Map\ax: '${Iterator.Key.Escape}'"]
			keymapper -loadmap "${Iterator.Key.Escape}"
		}
		while ${Iterator:Next(exists)}
	}
	function InitClickBars(settingsetref clickbarsSet)
	{
		variable iterator Iterator
		clickbarsSet:GetSettingIterator[Iterator]

		if !${Iterator:First(exists)}
		{
			return
		}		
		
		do
		{
			ISBoxer:Echo["\agApplying Click Bar\ax: '${Iterator.Key.Escape}'"]
			UIElement["clickbar_${Iterator.Key.Escape}"]:Show
		}
		while ${Iterator:Next(exists)}		
	}
	function InitMenus(settingsetref MenusSet)
	{
		variable iterator Iterator
		MenusSet:GetSettingIterator[Iterator]

		if !${Iterator:First(exists)}
		{
			return
		}		
		
		do
		{
			ISBoxer:Echo["\agApplying Menu\ax: '${Iterator.Key.Escape}'"]
			menuman -overridemenu "${Iterator.Key.Escape}" "${Iterator.Value.FindAttribute["Template"].String.Escape}" "${Iterator.Value.FindAttribute["ButtonLayout"].String.Escape}" "${Iterator.Value.FindAttribute["HotkeyLayout"].String.Escape}"
			menuman -loadmenu "${Iterator.Key.Escape}"

			/*
			menuman -newmenu "${Iterator.Key.Escape}" "${Iterator.Value.FindAttribute["Template"].String.Escape}"

			if ${Iterator.Value.FindAttribute["HotkeyLayout"].String.Length}
				menuman -menuattachhotkeys "${Iterator.Key.Escape}" "${Iterator.Value.FindAttribute["HotkeyLayout"].String.Escape}"

			if ${Iterator.Value.FindAttribute["ButtonLayout"].String.Length}
				menuman -menubuttonlayout "${Iterator.Key.Escape}" "${Iterator.Value.FindAttribute["ButtonLayout"].String.Escape}"

			menuman -menustartgui "${Iterator.Key.Escape}"
			*/
			/*
  <Set Name="Menus">
    <Setting xsi:type="MenuSetting" Name="MMO Action Bar" Template="Action_Bar_Grid" ButtonLayout="WoW DPS" HotkeyLayout="MMO Action 1 thru =" />
    <Setting xsi:type="MenuSetting" Name="QSW 41 - Toggles" Template="QSW_41_-_Toggles" ButtonLayout="QSW 41 - Toggles" HotkeyLayout="" />
  </Set>


menuman -newmenu "MMO Action Bar" "Action_Bar_Grid"
menuman -menuattachhotkeys "MMO Action Bar" "MMO Action 1 thru ="
menuman -menubuttonlayout "MMO Action Bar" "WoW DPS"
menuman -menustartgui "MMO Action Bar"
*/
		}
		while ${Iterator:Next(exists)}		
	}

	member:int GetSlotCount(settingsetref CSetSet)
	{
		variable int Count
		do
		{
			Count:Inc
		}
		while ${CSetSet.FindSet[Slots].FindSet["Slot ${Count}"]}
		return ${Count:Dec}
	}

	method InitSlotVariables(settingsetref CSetSet)
	{
		variable int Count
		variable settingsetref slotSet

		do
		{
			Count:Inc

			slotSet:Set[${CSetSet.FindSet[Slots].FindSet["Slot ${Count}"]}]
			if !${slotSet}
			{
				ISBoxerSlots:Set[${Count:Dec}]
				return
			}

			if !${ISBoxerSlot${Count}(exists)}
			{
				declare ISBoxerSlot${Count} string globalkeep
			}

			noop ${ISBoxerSlot${Count}:Set["${slotSet.FindSetting["Character"].String.Escape}"]}
		}
		while 1
	}

	function InitCharacter(string CharacterSet, int Slot, string Character, bool Reload, string isboxer2ID)
	{			
		variable bool fixSlot

		ISBoxerCharacterSet:Set["${CharacterSet.Escape}"]
		ISBoxerSlot:Set["${Slot}"]
		ISBoxerCharacter:Set["${Character.Escape}"]
		ISBoxer2Window:Set["${isboxer2ID.Escape}"]

		if !${Display.Window(exists)}
		{
			This:Echo["\ayDisplay window unavailable. Waiting for it..."]
			do
			{
				waitframe
			}
			while !${Display.Window(exists)}
			This:Echo["\agDisplay window ready, let's go!"]
		}

		if ${Script[DefaultStartup](exists)}
		{
			This:Echo["\ayInner Space Startup script is running. Waiting for it..."]
			do
			{
				waitframe
			}
			while ${Script[DefaultStartup](exists)}
			This:Echo["\agInner Space Startup complete, let's go!"]
		}


		variable file f
		f:SetFilename["${LavishScript.Executable.Path.Escape}"]
		variable string FileName
		FileName:Set["${f.Filename.Escape}"]
		if ${FileName.Find[fxupdate.exe]}
			return

		if !${This.ImportSettings}
			return

		variable settingsetref CSetSet
		CSetSet:Set[${ISBoxerSettings.FindSet[Character Sets].FindSet["${CharacterSet.Escape}"]}]
		if !${CSetSet}
		{
			This:Echo["\arFailed.\ax Character Set '${CharacterSet.Escape}' not found."]
			return
		}		

		
		; verify Slot
		if !${Session.Equals["is${Slot}"]}
		{
			This:Echo["\arIncorrect Slot detected. ${Session} vs Slot ${Slot}"]
			variable int sessionNumber
			sessionNumber:Set[${Int[${Session.Right[-2]}]}]
			
			if ${sessionNumber}>0
			{
				fixSlot:Set[1]
				; get correct Character by the Slot
				Slot:Set[${sessionNumber}]
			}
		}

		variable settingsetref slotSet
		slotSet:Set[${CSetSet.FindSet[Slots].FindSet["Slot ${Slot}"]}]
		if !${slotSet}
		{
			This:Echo["\arFailed.\ax Slot ${Slot} not found."]
			return
		}

		if ${fixSlot}
		{
			Character:Set["${slotSet.FindSetting["Character"].String.Escape}"]
			This:PreInitCharacter["${CharacterSet.Escape}",${Slot},"${Character.Escape}","${isboxer2ID.Escape}"]
		}
		This:InitSlotVariables[${CSetSet}]

		if ${Bool["${CSetSet.FindSetting["Enforce Single Window Control"].String.Escape}"]}
		{
			ISBoxerSingleWindowControl:Set[1]
		}
		else
		{
			ISBoxerSingleWindowControl:Set[0]
		}


		if ${FileName.Find[lotroclient.exe]} && ${LavishScript.RunningTime}<15000
		{
			This:Echo["Waiting for LOTRO display reset..."]
			WaitFor "[Inner Space Direct3D9 Driver] 3D Started:" 100
			This:Echo["Finished waiting for LOTRO display reset..."]
			waitframe
			waitframe
		}


		;squelch noop ${Display.Window:SelectMenuItem[&View,Quality,Low]}
		;waitframe
		squelch noop ${Display.Window:SetMenu[0]}
		
		if ${Bool["${CSetSet.FindSetting["Lock Foreground"].String.Escape}"]}
		{
			if ${InnerSpace.Build}>=4861
			{
				lockforeground on				
			}
			else
			{
				This:Echo["\arCannot apply Lock Foreground -- requires Inner Space build 4861 or later"]
			}
		}


		if ${Bool["${CSetSet.FindSetting["Disable Cursor Clipping"].String.Escape}"]}
		{
			clipmouse -lock off
		}
		else
		{
			switch ${CSetSet.FindSetting["Cursor Clipping Mode"].String}
			{
			case Allow
				break
			case On
				clipmouse -lock on
				break
			case Off
				clipmouse -lock off
				break
			}
			;clipmouse on
		}
		
		
		if ${Bool["${CSetSet.FindSetting["Disable FPS Indicator"].String.Escape}"]}
		{
			hudgroup -hide "fps indicator"
		}		
		
		if ${CSetSet.FindSetting["Console Toggle Hotkey"](exists)}
		{
			if ${CSetSet.FindSetting["Console Toggle Hotkey"].String.Length}
			{
				bind console "${CSetSet.FindSetting["Console Toggle Hotkey"].String.Escape}" console toggle
			}
			else
			{
				bind -delete console
			}
		}
		else
		{
			bind -delete console
		}

		bind -delete tinykey
		bind -delete normalkey
		bind -delete fullscreenkey
		bind -delete next
		bind -delete previous

		/*
		if ${Bool["${CSetSet.FindSetting["Lock Window"].String.Escape}"]}
		{
			if ${InnerSpace.Build}>=4861
			{
				windowcharacteristics -lock
			}
			else
			{
				This:Echo["\arCannot apply Lock Window -- requires Inner Space build 4861 or later"]
			}
		}
		/**/

		/* CPU Cores */
		if ${slotSet.FindSetting["CPU Cores"].String.Length}
		{
			This:Echo["\agSetting CPU Cores\ax: ${slotSet.FindSetting["CPU Cores"].String.Escape}"]
			if ${InnerSpace.Build}>=4978
			proclock on
			execute proc ${slotSet.FindSetting["CPU Cores"].String}
		}
		
		if ${slotSet.FindSetting["Foreground Max FPS"].Int}>0
		{
			maxfps -fg -calculate ${slotSet.FindSetting["Foreground Max FPS"].Int}
		}
		else
		{
			maxfps -fg -disable
		}
		
		if ${slotSet.FindSetting["Background Max FPS"].Int}>0
		{
			maxfps -bg -calculate ${slotSet.FindSetting["Background Max FPS"].Int}
		}
		else
		{
			maxfps -bg -disable
		}

		variable settingsetref characterSet
		characterSet:Set[${ISBoxerSettings.FindSet[Characters].FindSet["${Character.Escape}"]}]
		if !${characterSet}
		{
			This:Echo["\arFailed.\ax Character '${Character.Escape}' not found."]
			return
		}


		if ${Script[defaultstartup](exists)}
		{
			This:Echo["\agWaiting for DefaultStartup.iss to complete."]
			while ${Script[defaultstartup](exists)}
			{
				waitframe
			}
		}
		wait 5
		if ${LavishScript.Executable.Find[eqgame.exe]}
			wait 10
		
		uplink squelch relaygroup -clear

		LavishScript:RegisterEvent[ISBoxer:Relay Groups Cleared]
		Event[ISBoxer:Relay Groups Cleared]:Execute

		uplink relaygroup -join "${Character.Escape}"
		uplink relaygroup -join "${CharacterSet.Escape}"
		uplink relaygroup -join isboxer

;		relay uplink noop \${VideoFeed:RegisterSource["${Session.Escape}","${Session.Escape}"]}
		relay uplink noop \${VideoFeed:RegisterSource["${Character.Escape}","${Session.Escape}"]}
		
		hudgroup -hide "memory indicator"
		
		if !${Script[isboxerui](exists)}
		{
			run isboxerui
			wait 1
		}

		ISBoxerUI.AutoMuteBackground:Set["${Bool["${CSetSet.FindSetting["Auto Mute Background"].String.Escape}"]}"]
		
		if ${CSetSet.FindSetting["GUI Toggle Hotkey"].String.Length}
		{
			Input:Bind[-release,"ISBoxer UI","${CSetSet.FindSetting["GUI Toggle Hotkey"].String.Escape}","ISBoxerUI:ToggleUI"]
		}

		if ${CSetSet.FindSetting["Video FX Focus Hotkey"].String.Length}
		{
			ISBoxerVideoFXFocusHotkey:Set["${CSetSet.FindSetting["Video FX Focus Hotkey"].String.Escape}"]
		}
		else
			ISBoxerVideoFXFocusHotkey:Set[NONE]

		variable string windowTitle
		windowTitle:Set["${Session}"]

		/* Step 1: WindowSnapper */
;		if ${Int[${Session.Right[-2]}]}==${Slot}
		{
			if ${CSetSet.FindSetting["Window Layout"].String.Length}
				call This.InitWindowLayout "${CSetSet.FindSetting["Window Layout"].String.Escape}" "${Slot}" "${Math.Calc[${Slot}==${This.GetSlotCount[${CSetSet}]}]}"
;			elseif ${CSetSet.FindSetting["WindowSnapper"].String.Length}
;				call This.InitWindowSnapper "${CSetSet.FindSetting["WindowSnapper"].String.Escape}" "${Slot}" "${Math.Calc[${Slot}==${This.GetSlotCount[${CSetSet}]}]}"
		}

		/* Step 2: Repeater */
		if ${CSetSet.FindSetting["Repeater"].String.Length}
		{
			call This.InitRepeater "${CSetSet.FindSetting["Repeater"].String.Escape}"

			if ${Bool["${characterSet.FindSetting["Mute Broadcasts"].String.Escape}"]}
			{
				KeyRepeater.Mute:Set[1]
				MouseRepeater.Mute:Set[1]
			}
			else
			{
				KeyRepeater.Mute:Set[0]
				MouseRepeater.Mute:Set[0]
			}
		}

		/* Step 3: KeyMapper */
		variable string ftlModifiers
		if ${slotSet.FindSetting["FTL Modifiers"].String.Length}
		{
			ftlModifiers:Set["${slotSet.FindSetting["FTL Modifiers"].String.Escape}"]	
			This:Echo["\agFTL Modifiers\ax: ${ftlModifiers.Escape}"]
		}

		if ${Script[keymapper](exists)}
		{
			ISBoxer:Echo["\agKeyMapper is already running, shutting it down to reset bindings\ax ..."]
			endscript keymapper
			wait 5
		}
		
		call This.LoadKeyMapper "${ftlModifiers.Escape}"
		if ${Script[keymapper](exists)}
		{
			keymapperSet:Set[${CSetSet.FindSet["Key Maps BlackList"]}]
			if ${keymapperSet}
			{
				keymapper -blacklist "${keymapperSet}"
			}
			keymapperSet:Set[${CSetSet.FindSet["Key Maps WhiteList"]}]
			if ${keymapperSet}
			{
				keymapper -whitelist "${keymapperSet}"
			}

			keymapperSet:Set[${characterSet.FindSet["Key Maps BlackList"]}]
			if ${keymapperSet}
			{
				keymapper -blacklist "${keymapperSet}"
			}
			keymapperSet:Set[${characterSet.FindSet["Key Maps WhiteList"]}]
			if ${keymapperSet}
			{
				keymapper -whitelist "${keymapperSet}"
			}
		}

		variable settingsetref keymapperSet
		keymapperSet:Set[${CSetSet.FindSet["Key Maps"]}]
		if ${keymapperSet}
		{ 
			ISBoxer:Echo["\agApplying Character Set Key Maps\ax"]
			call This.InitKeyMapper "${keymapperSet}" "${ftlModifiers.Escape}"
		}
		keymapperSet:Set[${characterSet.FindSet["Key Maps"]}]
		if ${keymapperSet}
		{
			ISBoxer:Echo["\agApplying Character Key Maps\ax"]
			call This.InitKeyMapper "${keymapperSet}" "${ftlModifiers.Escape}"
		}
		
		variable iterator Iterator
		if ${Script[keymapper](exists)}
		{
			/* Character Set Mapped Key virtualization */		
			if ${CSetSet.FindSet["Virtual Mapped Keys"]:GetSettingIterator[Iterator](exists)} && ${Iterator:First(exists)}
			{
				do
				{
					keymapper -rewritemappedkey "${Iterator.Value.FindAttribute[FromKeyMap].String.Escape}" "${Iterator.Value.FindAttribute[FromMappedKey].String.Escape}" "${Iterator.Value.FindAttribute[ToKeyMap].String.Escape}" "${Iterator.Value.FindAttribute[ToMappedKey].String.Escape}"
				}
				while ${Iterator:Next(exists)}
			}
			/* Character Mapped Key virtualization */		
			if ${characterSet.FindSet["Virtual Mapped Keys"]:GetSettingIterator[Iterator](exists)} && ${Iterator:First(exists)}
			{
				do
				{
					keymapper -rewritemappedkey "${Iterator.Value.FindAttribute[FromKeyMap].String.Escape}" "${Iterator.Value.FindAttribute[FromMappedKey].String.Escape}" "${Iterator.Value.FindAttribute[ToKeyMap].String.Escape}" "${Iterator.Value.FindAttribute[ToMappedKey].String.Escape}"
				}
				while ${Iterator:Next(exists)}
			}

			/* Define variable keystrokes */
			variable settingsetref mainvkSet
			mainvkSet:Set[${ISBoxerSettings.FindSet[Variable Keystrokes]}]
			if ${mainvkSet}
			{
				if ${mainvkSet:GetSettingIterator[Iterator](exists)} && ${Iterator:First(exists)}
				{
					do
					{
						keymapper -definevariable "${Iterator.Key.Escape}" "${Iterator.Value.String.Escape}" "${Iterator.Value.FindAttribute[Category].String.Escape}" "${Iterator.Value.FindAttribute[SubCategory].String.Escape}" "${Iterator.Value.FindAttribute[Description].String.Escape}"
					}
					while ${Iterator:Next(exists)} 
				}

				/* Character Set Variable Keystrokes */
				if ${CSetSet.FindSet["Variable Keystrokes"]:GetSettingIterator[Iterator](exists)} && ${Iterator:First(exists)}
				{
					do
					{
						keymapper -setvariable "${Iterator.Key.Escape}" "${Iterator.Value.String.Escape}" 
					}
					while ${Iterator:Next(exists)}
				}
				/* Character Set Slot Variable Keystrokes */
				if ${slotSet.FindSet["Variable Keystrokes"]:GetSettingIterator[Iterator](exists)} && ${Iterator:First(exists)}
				{
					do
					{
						keymapper -setvariable "${Iterator.Key.Escape}" "${Iterator.Value.String.Escape}" 
					}
					while ${Iterator:Next(exists)}
				}

				/* Character Variable Keystrokes */
				if ${characterSet.FindSet["Variable Keystrokes"]:GetSettingIterator[Iterator](exists)} && ${Iterator:First(exists)}
				{
					do
					{
						keymapper -setvariable "${Iterator.Key.Escape}" "${Iterator.Value.String.Escape}" 
					}
					while ${Iterator:Next(exists)}
				}

			}		


		}

		if ${characterSet.FindSetting[Execute On Load](exists)}
		{
			execute alias character_onload "keymapper -rememberholdmappedkey \"${characterSet.FindSetting[Execute On Load].FindAttribute[KeyMap].String.Escape}\" \"${characterSet.FindSetting[Execute On Load].String.Escape}\" \"Character Execute On Load\" \"${characterSet.FindSetting[Execute On Load].FindAttribute[Target].String.Escape}\";keymapper -rememberreleasemappedkey \"Character Execute On Load\""			
		}
		else
		{
			execute alias character_onload noop
		}

		if ${CSetSet.FindSetting[Execute On Load](exists)}
		{
			execute alias characterset_onload "keymapper -rememberholdmappedkey \"${CSetSet.FindSetting[Execute On Load].FindAttribute[KeyMap].String.Escape}\" \"${CSetSet.FindSetting[Execute On Load].String.Escape}\" \"Character Set Execute On Load\" \"${CSetSet.FindSetting[Execute On Load].FindAttribute[Target].String.Escape}\";keymapper -rememberreleasemappedkey \"Character Set Execute On Load\""
		}
		else
		{
			execute alias characterset_onload noop
		}

		if ${ISBoxerSettings.FindSet[Action Timer Pools]:GetSettingIterator[Iterator](exists)} && ${Iterator:First(exists)}
		{
			do
			{
				keymapper -addtimerpool "${Iterator.Key.Escape}" "${Iterator.Value.Int}" "${Bool["${Iterator.Value.FindAttribute[BackEndRemoval].String.Escape}"]}"
			}
			while ${Iterator:Next(exists)}
		}


		/* Step 4: Action Target Groups */
		if !${ISBoxerSingleWindowControl}		
		{
			if ${characterSet.FindSet["Relay Groups"]:GetSettingIterator[Iterator](exists)} && ${Iterator:First(exists)}
			{
				do
				{
					ISBoxer:Echo["\agJoining Relay Group\ax '${Iterator.Key.Escape}'"]
					uplink relaygroup -join "${Iterator.Key.Escape}"
				
					/* Multiple PCs? */
					if ${InnerSpace.Build}<4881
						relay "all uplinks" relaygroup -join "${Iterator.Key.Escape}"
				}
				while ${Iterator:Next(exists)}
			}
		}
		else
		{
					ISBoxer:Echo["\aySingle Window Control Mode: NOT Joining Relay Groups\ax"]
		}

		/* Step 5: Click Bars */
		ui -reload ISBoxerToolkit.ClickBars.XML
		variable settingsetref clickbarsSet
		if ${Script[vfxlayout](exists)}
		{
			ISBoxer:Echo["\agSkipping Character Set Click Bars due to VFX Layout\ax"]
		}
		else
		{
			clickbarsSet:Set[${CSetSet.FindSet["Click Bars"]}]
			if ${clickbarsSet}
			{ 
				ISBoxer:Echo["\agApplying Character Set Click Bars\ax"]
				call This.InitClickBars "${clickbarsSet}"
			}
		}
		clickbarsSet:Set[${characterSet.FindSet["Click Bars"]}]
		if ${clickbarsSet}
		{
			ISBoxer:Echo["\agApplying Character Click Bars\ax"]
			call This.InitClickBars "${clickbarsSet}"
		}
		ISBoxerUI:LoadMyClickBars[Auto]
		
		/* Step 6: Menus */
		if ${Script[menuman](exists)}
		{
			ISBoxer:Echo["\agMenuMan is already running, shutting it down to reset menus!\ax ..."]
			endscript menuman
			wait 2
		}

		run menuman
		if !${Script[menuman](exists)}
		{
			ISBoxer:Echo["\arCannot apply Menus.\ax MenuMan not available."]
			return
		}
		wait 5 ${MenuMan.Ready}

		ISBoxerUI:LoadMyMenus

		variable settingsetref menusSet
		if ${Script[vfxlayout](exists)}
		{
			ISBoxer:Echo["\agSkipping Character Set Menus due to VFX Layout\ax"]
		}
		else
		{
			menusSet:Set[${CSetSet.FindSet["Menus"]}]
			if ${menusSet}
			{ 
				ISBoxer:Echo["\agApplying Character Set Menus\ax"]
				call This.InitMenus "${menusSet}"
			}
		}
		menusSet:Set[${characterSet.FindSet["Menus"]}]
		if ${menusSet}
		{
			ISBoxer:Echo["\agApplying Character Menus\ax"]
			call This.InitMenus "${menusSet}"
		}
		
		menuman -storeallbuttons

		if !${UIElement[isboxermain].Visible}
			ISBoxerUI:HideTitleBars

		/* Step 7: Switch To Hotkeys */
		if ${slotSet.FindSetting["Switch To Hotkey"].String.Length}
		{
		    globalbind -delete ${Session}_key
		    ;echo globalbind -delete ${Session}_key
			windowTitle:Concat[" (${slotSet.FindSetting["Switch To Hotkey"].String.Escape})"]
			if ${Bool["${slotSet.FindSetting["Switch To Hotkey is Global"].String.Escape}"]} && !${slotSet.FindSetting["Switch To Hotkey"].String.Equal[NONE]}
			{
				if ${slotSet.FindSetting["Switch To Effect Type"].String.Equal["OnHotkey"]}
					GlobalBind ${Session}_key "${slotSet.FindSetting["Switch To Hotkey"].String.Escape}" "WindowVisibility foreground;ISBoxerMainSwitcher;ISBoxerMainActivate 0;Event[OnInternalActivate]:Execute"
				else
					GlobalBind ${Session}_key "${slotSet.FindSetting["Switch To Hotkey"].String.Escape}" "WindowVisibility foreground;ISBoxerMainActivate 0;Event[OnInternalActivate]:Execute"
			}
		}
		else
		{
			if ${Input.Button[Alt Gr](exists)} || ${Input.Button[AltGr](exists)} || !${Input.Button[Right Alt](exists)}
			{
				globalbind -delete ${Session}_key	
			}
		}
		
			if ${slotSet.FindSetting["Switch To Effect"].String.Length}
			{
				ISBoxerMainSwitcherEffect:Set["relay all press \"${slotSet.FindSetting["Switch To Effect"].String.Escape}\""]
; note: that used to relay the press twice.
; relay all press \"${slotSet.FindSetting["Switch To Effect"].String.Escape}\"
				if ${slotSet.FindSetting["Switch To Effect Type"].String.Equal["OnFocus"]}
				{
						LavishScript:RegisterEvent["On Activate"]
						Event["On Activate"]:AttachAtom[ISBoxerMainSwitcher]
				}
			}
			elseif ${slotSet.FindSetting["Switch To Effect Key Map"].String.Length} && ${slotSet.FindSetting["Switch To Effect Mapped Key"].String.Length}
			{
			;Input.Bind[\"keymapper_${slotSet.FindSetting["Switch To Effect Key Map"].String.Escape}(keymap)_${slotSet.FindSetting["Switch To Effect Mapped Key"].String.Escape}\"]:Press:Release
				ISBoxerMainSwitcherEffect:Set["keymapper -executemappedkey \"${slotSet.FindSetting["Switch To Effect Key Map"].String.Escape}\" \"${slotSet.FindSetting["Switch To Effect Mapped Key"].String.Escape}\""]
				if ${slotSet.FindSetting["Switch To Effect Type"].String.Equal["OnFocus"]}
				{
					LavishScript:RegisterEvent["On Activate"]
					Event["On Activate"]:AttachAtom[ISBoxerMainSwitcher]			
				}
			}

		LavishScript:RegisterEvent["OnMouseEnter"]
		Event["OnMouseEnter"]:AttachAtom[OnMouseEnter]			
		
		
		variable string Effect
		if ${CSetSet.FindSet["Slots"]:GetSetIterator[Iterator](exists)} && ${Iterator:First(exists)}
		{
			do
			{
				Effect:Set[""]
				if ${Iterator.Value.FindSetting["Switch To Effect Type"].String.Equal["OnHotkey"]}
				{
					if ${Iterator.Value.FindSetting["Switch To Effect"].String.Length}
					{
						Effect:Set[";relay all press \"${Iterator.Value.FindSetting["Switch To Effect"].String.Escape}\""]
					}
					elseif ${Iterator.Value.FindSetting["Switch To Effect Key Map"].String.Length} && ${Iterator.Value.FindSetting["Switch To Effect Mapped Key"].String.Length}
					{
						Effect:Set[";relay is${Iterator.Key.Right[-5].Escape} keymapper -executemappedkey \"${Iterator.Value.FindSetting["Switch To Effect Key Map"].String.Escape}\" \"${Iterator.Value.FindSetting["Switch To Effect Mapped Key"].String.Escape}\""]
					}
				}
									
				if ${Iterator.Value.FindSetting["Switch To Hotkey"].String.Length}
				{
					Input:Bind[-release,"ISBoxer Slot ${Iterator.Key.Right[-5].Escape}","${Iterator.Value.FindSetting["Switch To Hotkey"].String.Escape}","uplink focus is${Iterator.Key.Right[-5].Escape}${Effect.Escape};relay is${Iterator.Key.Right[-5].Escape} ISBoxerMainActivate 0"]
				}

				KeyMapper:SetCustomVariable["SLOT${Iterator.Key.Right[-5].Escape}","${Iterator.Value.FindSetting["Character"].String.Escape}"]
			}
			while ${Iterator:Next(exists)}
		}				

		/* Window Title */
		if ${slotSet.FindSetting["Window Title"].String.Length}
		{
			if ${slotSet.FindSetting["Window Title"].String.NotEquals[*]}
			{
				if ${KeyMapper(exists)}
				{
					windowtext ${KeyMapper.ProcessVariables["${slotSet.FindSetting["Window Title"].String.Escape}"]}
				}
				else
				{
					windowtext "${slotSet.FindSetting["Window Title"].String.Escape}"
				}
			}
		}
		else
		{
			windowTitle:Concat[" ${characterSet.Name.Escape} - ${CSetSet.Name.Escape}"]
			windowtext "${windowTitle.Escape}"
		}

		if ${Bool["${slotSet.FindSetting["Load OBSRemote"].String.Escape}"]}
		{
			This:Echo["\agStarting Open Broadcaster Software Streaming Integration"]
			if !${OBSRemote(exists)}
			{
				ext isxobsremote
			}
			if !${Script[obsremote](exists)}
			{
				run obsremote
			}
		}
				
		if ${Bool["${slotSet.FindSetting["Load Twitch"].String.Escape}"]}
		{
			This:Echo["\agStarting Twitch Streaming Integration"]
			if !${Twitch(exists)}
			{
				ext isxtwitch
			}
			if !${Script[twitch](exists)}
			{
				This:Echo["\agApplying Twitch Stream Configuration"]
				; apply settings

				variable settingsetref twitchSet
				twitchSet:Set[${slotSet.FindSet[Twitch]}]

				Twitch.DefaultScene:SetSource[${twitchSet.FindSetting[SourceX].Int},${twitchSet.FindSetting[SourceY].Int},${twitchSet.FindSetting[SourceWidth].Int},${twitchSet.FindSetting[SourceHeight].Int}]
				Twitch:SetCPUUsage[${twitchSet.FindSetting[CPUUsage].Int}]
				Twitch:SetResolution[${twitchSet.FindSetting[OutputWidth].Int},${twitchSet.FindSetting[OutputHeight].Int}]
				Twitch:SetTargetFPS[${twitchSet.FindSetting[TargetFPS].Int}]
				Twitch:SetMaxKbps[${twitchSet.FindSetting[MaxKbps].Int}]
				Twitch:SetAdaptiveBitrate["${twitchSet.FindSetting[AdaptiveBitrate].String.Escape}"]
				Twitch.DefaultScene:SetIncludeCursor["${twitchSet.FindSetting[CaptureCursor].String.Escape}"]
				Twitch:SetIncludeAudio["${twitchSet.FindSetting[CaptureAudio].String.Escape}"]
				Twitch:SetPushToTalk[-vkey,"${twitchSet.FindSetting[PushToTalkKey].String.Escape}"]
				
				run twitch
			}
		}

		if ${Reload}
		{
			if !${LavishScript.Executable.Find[dxNothing.exe]}
				ISBoxerUI:StopupText["Reloaded: ${ISBoxerCharacterSet.Escape} - ${ISBoxerCharacter}"]
		}
		else
		{
				uplink Event[ISBoxerSlotLaunched]:Execute[${Slot}]			
			if !${LavishScript.Executable.Find[dxNothing.exe]}
				ISBoxerUI:StopupText["Character activated: ${ISBoxerCharacterSet.Escape} - ${ISBoxerCharacter}"]
		}
		
		bind -delete memoryindicator
		bind -delete fpsindicator
		
		if ${Slot}==${ISBoxerSlots}
		{
			if ${Reload}
				wait 5
			wait 5

			if ${Script[windowsnapper2](exists)}
			{
			
				uplink focus is1
				relay is1 ISBoxerMainActivate 1
			}

			characterset_onload
			wait 3
			relay "all local" character_onload
			This:TryFirstRun
			
		}
	}

	/*
	method ExecuteOnLoad()
	{
		if ${characterSet.FindSetting[Execute On Load](exists)}
		{
			keymapper -rememberholdmappedkey "${characterSet.FindSetting[Execute On Load].FindAttribute[KeyMap].String.Escape}" "${characterSet.FindSetting[Execute On Load].String.Escape}" "Character Execute On Load" "${characterSet.FindSetting[Execute On Load].FindAttribute[Target].String.Escape}"
			keymapper -rememberreleasemappedkey "Character Execute On Load"
		}
		if ${CSetSet.FindSetting[Execute On Load](exists)}
		{
			keymapper -rememberholdmappedkey "${CSetSet.FindSetting[Execute On Load].FindAttribute[KeyMap].String.Escape}" "${CSetSet.FindSetting[Execute On Load].String.Escape}" "Character Set Execute On Load" "${CSetSet.FindSetting[Execute On Load].FindAttribute[Target].String.Escape}"
			keymapper -rememberreleasemappedkey "Character Set Execute On Load"
		}
	}
	*/

	member:bool ValidateCharacter(string Character)
	{
		variable settingsetref CSet
		CSet:Set[${ISBoxerSettings.FindSet[Characters].FindSet["${Character.Escape}"]}]
		if !${CSet}
		{
			This:Echo["\arInvalid Character.\ax Character '${Character.Escape}' not found."]
			return FALSE
		}

		if !${CSet.FindSetting[Game].String.Length}
		{
			This:Echo["\arInvalid Character.\ax Character '${Character.Escape}' does not have a Game configured"]
			return FALSE
		}
		if !${CSet.FindSetting[Game Profile].String.Length}
		{
			This:Echo["\arInvalid Character.\ax Character '${Character.Escape}' does not have a Game Profile configured"]
			return FALSE
		}
		
		return TRUE
	}
	
	function LaunchRemoteCharacterSet(string CharacterSet)
	{
		This:Echo["Remote Character Set '${CharacterSet.Escape}'..."]
		
		variable settingsetref CSetSet
		CSetSet:Set[${ISBoxerSettings.FindSet[Character Sets].FindSet["${CharacterSet.Escape}"]}]
		if !${CSetSet}
		{
			This:Echo["\arRemote Character Set Failed.\ax Character Set '${CharacterSet.Escape}' not found."]
			return
		}
		
		variable settingsetref ComputerSet
		ComputerSet:Set["${ISBoxerSettings.FindSet[Computers].FindSet["${CSetSet.FindSetting["Computer"].String.Escape}"]}"]
		if !${ComputerSet}
		{
			This:Echo["\arRemote Character Set '${CharacterSet.Escape}' Failed.\ax Computer '${CSetSet.FindSetting["Computer"].String.Escape}' not found."]
			return			
		}

		; Insert a computer
		variable int computerid
		computerid:Set[${CurrentComputers.Used}+1]
		;echo computerid=${computerid}
		CurrentComputers:Resize[${computerid}+1]
		;echo computers size = ${CurrentComputers.Size}
		;echo CurrentComputers:Set[${computerid},"${CSetSet.FindSetting["Computer"].String.Escape}","${ComputerSet.FindSetting[Host].String.Escape}","${ComputerSet.FindSetting[Port].Int}","${ComputerSet.FindSetting[Uplink Name].String.Escape}"]
		CurrentComputers:Set[${computerid},"${CSetSet.FindSetting["Computer"].String.Escape}","${ComputerSet.FindSetting[Host].String.Escape}","${ComputerSet.FindSetting[Port].Int}","${ComputerSet.FindSetting[Uplink Name].String.Escape}"]
		;echo computers used = ${CurrentComputers.Used}

		variable int othercomputerid=1
		if ${computerid}>1
		{
			for (${othercomputerid}<${computerid} ; othercomputerid:Inc)
			{
				;echo CurrentComputers[${othercomputerid}]:ConnectTo[${CurrentComputers[${computerid}]}]
				CurrentComputers[${othercomputerid}]:ConnectTo[${CurrentComputers[${computerid}]}]
				wait 5
			}
		}
		CurrentComputers[${computerid}]:Connect
		wait 30 ${RemoteUplink["${ComputerSet.FindSetting[Uplink Name].String.Escape}"](exists)}
		wait 5

		/*
;		if !${RemoteUplink["${ComputerSet.FindSetting[Uplink Name].String.Escape}"](exists)}
		{
			This:Echo["Initiating connection to Computer '${ComputerSet.Name.Escape}'"]
			remoteuplink -connect "${ComputerSet.FindSetting[Host].String.Escape}" "${ComputerSet.FindSetting[Port].Int}"
;			relay "all other uplinks" remoteuplink -connect "${ComputerSet.FindSetting[Host].String.Escape}" "${ComputerSet.FindSetting[Port].Int}"
			wait 30 ${RemoteUplink["${ComputerSet.FindSetting[Uplink Name].String.Escape}"](exists)}
		}
		/**/
	
		relay "${ComputerSet.FindSetting[Uplink Name].String.Escape}" "run isboxer -remotelaunch \"${CharacterSet.Escape}\""
		;echo next!
	}
	
	function LaunchLinkedCharacterSets(settingsetref MainCSetSet)
	{
		variable settingsetref LaunchSet
		LaunchSet:Set[${MainCSetSet.FindSet["Launch Other Character Sets"]}]
		if !${LaunchSet}
			return
		
		variable iterator Iterator
		LaunchSet:GetSettingIterator[Iterator]
		
		if !${Iterator:First(exists)}
		{
			return
		}
		
		This:Echo["Preparing to launch linked Character Sets first..."]

		do
		{
			call LaunchRemoteCharacterSet "${Iterator.Key.Escape}"
			;echo LaunchRemoteCharacterSet "${Iterator.Key.Escape}" completed
		}
		while ${Iterator:Next(exists)}
	}

	method TryFirstRun()
	{

		variable settingsetref lastlaunchSet
		LavishSettings:AddSet["ISBoxerLastLaunch"]
		lastlaunchSet:Set["${LavishSettings.FindSet["ISBoxerLastLaunch"]}"]
		variable settingsetref lastlaunchCSet

		if ${lastlaunchSet:Import["ISBoxer.LastLaunch.XML"](exists)}
		{
			lastlaunchSet:AddSet["${ISBoxerCharacterSet.Escape}"]
			lastlaunchCSet:Set["${lastlaunchSet.FindSet["${ISBoxerCharacterSet.Escape}"]}"]
			if ${lastlaunchCSet.FindSetting["Major Version"].Int} < 41
			{
				relay is1 ISBoxerUI:FirstRun	
			}
		}
		else
		{
			lastlaunchSet:AddSet["${ISBoxerCharacterSet.Escape}"]
			lastlaunchCSet:Set["${lastlaunchSet.FindSet["${ISBoxerCharacterSet.Escape}"]}"]
			relay is1 ISBoxerUI:FirstRun
		}

		lastlaunchCSet:AddSetting["Timestamp","${Time.Timestamp}"]
		lastlaunchCSet:AddSetting["Major Version","41"]
		lastlaunchCSet:AddSetting["Minor Version","1"]

		lastlaunchSet:Export["ISBoxer.LastLaunch.XML"]
		LavishSettings.FindSet["ISBoxerLastLaunch"]:Remove
				
	}

	variable collection:string LaunchingCharacters
	variable string LaunchingCharacterSet
	variable int LaunchBegan
	variable int LastCharacterLaunch 
	variable int LaunchDeadline

	method DynamicLaunch_OnSlotLaunched(int Slot)
	{
		This:Echo["\agSlot ${Slot} launch detected. Applying ISBoxer Character '${LaunchingCharacters.Element["is${Slot}"].Escape}' from Character Set '${LaunchingCharacterSet.Escape}'!"]
		This:Echo["\ayDynamic Launch deadline extended by another 3 minutes!"]
		LastCharacterLaunch:Set["${LavishScript.RunningTime}"]
		LaunchDeadline:Set["${LastCharacterLaunch}+(1000*180)"]
		relay is${Slot} run isboxer -preinit "${LaunchingCharacterSet.Escape}" ${Slot} "${LaunchingCharacters.Element["is${Slot}"].Escape}"
		relay is${Slot} timedcommand 20 run isboxer -reload
	}

	method DynamicLaunch_OnSessionRenamed(string oldName, string newName)
	{
		variable int slotNumber
		slotNumber:Set["${newName.Right[-2]}"]

		if ${newName.Equals["is${slotNumber}"]}
		{
			This:DynamicLaunch_OnSlotLaunched[${slotNumber}]
		}
	}

	member:bool IsCharacterSetLaunched(settingsetref CSetSet)	
	{
		variable iterator Iterator
		CSetSet.FindSet["Slots"]:GetSetIterator[Iterator]
		
		if !${Iterator:First(exists)}
		{
			return 0
		}
		
		variable int Slot
		do
		{
			Slot:Set["${Iterator.Key.Right[-5].Escape}"]

			if !${Session["is${Slot}"](exists)}
			{
				return 0
			}
		}
		while ${Iterator:Next(exists)}

		return 1
	}

	function LaunchCharacterSetDynamically(settingsetref CSetSet)
	{
		; in this launch mode, we'll take them as we get them from the user, instead of launching them ourselves...
		LaunchingCharacterSet:Set["${CSetSet.Name}"]
		LaunchingCharacters:Clear
		LaunchBegan:Set[${LavishScript.RunningTime}]
		LastCharacterLaunch:Set[0]

		LaunchDeadline:Set[${LavishScript.RunningTime}+(1000*360)]

		variable iterator Iterator
		CSetSet.FindSet["Slots"]:GetSetIterator[Iterator]
		
		if !${Iterator:First(exists)}
		{
			This:Echo["\arFailed.\ax Character Set '${CharacterSet.Escape}' has no Characters."]
			return
		}

		
		variable int Slot
		do
		{
			if !${Iterator.Value.FindSetting["Character"].String.Length}
			{
				This:Echo["\arFailed.\ax ${Iterator.Key.Escape} has no Character."]
				return
			}
			Slot:Set["${Iterator.Key.Right[-5].Escape}"]

			if ${Session["is${Slot}"](exists)}
			{
				This:Echo["\aySlot ${Slot} already launched.\ax Updating it to character '${Iterator.Value.FindSetting["Character"].String.Escape}' in Character Set '${CSetSet.Name.Escape}'"]
				relay is${Slot} run isboxer -preinit "${CSetSet.Name.Escape}" ${Slot} "${Iterator.Value.FindSetting["Character"].String.Escape}"
				relay is${Slot} timedcommand 20 run isboxer -reload
			}

			LaunchingCharacters:Set["is${Slot}","${Iterator.Value.FindSetting["Character"].String.Escape}"]
		}
		while ${Iterator:Next(exists)}

		; ok we prepared the list of what we're launching
		LavishScript:RegisterEvent[OnSessionRenamed]
		Event[OnSessionRenamed]:AttachAtom[This:DynamicLaunch_OnSessionRenamed]

		This:Echo["\agDynamic Launch Ready: Please launch your desired game instances! You have 6 minutes to launch the first Character!"]
		while 1
		{
			if ${This.IsCharacterSetLaunched[${CSetSet}]}
			{
				This:Echo["\agDynamic Launch Complete! Character Set fully launched."]
				break
			}

			if ${LavishScript.RunningTime}>${LaunchDeadline}
			{
				This:Echo["\ayDynamic Launch timed out! To continue launching your Character Set from where you left off, please select it for Launch again!"]
				break
			}
			waitframe
		}

		Event[OnSessionRenamed]:DetachAtom[This:DynamicLaunch_OnSessionRenamed]
	}

	function LaunchCharacterSet(string CharacterSet, bool Remote, string SlotString="")
	{
		This:Echo["Preparing to launch Character Set '${CharacterSet.Escape}'"]
		if !${This.ImportSettings}
			return

		variable settingsetref CSetSet
		CSetSet:Set[${ISBoxerSettings.FindSet[Character Sets].FindSet["${CharacterSet.Escape}"]}]
		if !${CSetSet}
		{
			This:Echo["\arFailed.\ax Character Set '${CharacterSet.Escape}' not found."]
			return
		}

		if !${CSetSet.FindSet["Slots"].Children}
		{
			This:Echo["\arFailed.\ax Character Set '${CharacterSet.Escape}' has nothing to launch."]
			return
		}

		This:Echo["Making sure Characters in Character Set '${CharacterSet.Escape}' are valid..."]
		variable iterator Iterator
		CSetSet.FindSet["Slots"]:GetSetIterator[Iterator]
		
		if !${Iterator:First(exists)}
		{
			This:Echo["\arFailed.\ax Character Set '${CharacterSet.Escape}' has no Characters."]
			return
		}

		do
		{
			if !${Iterator.Value.FindSetting["Character"].String.Length}
			{
				This:Echo["\arFailed.\ax ${Iterator.Key.Escape} has no Character."]
				return
			}
			if !${This.ValidateCharacter["${Iterator.Value.FindSetting["Character"].String.Escape}"]}
			{
				This:Echo["\arFailed.\ax Character in ${Iterator.Key.Escape} '${Iterator.Value.FindSetting["Character"].String}' has a problem."]
				return
			}
		}
		while ${Iterator:Next(exists)}
		

		This:Echo["\agGood!"]
		
		if !${Remote}
			call This.LaunchLinkedCharacterSets ${CSetSet}

		if ${Bool["${CSetSet.FindSetting["Dynamic Launch Mode"].String.Escape}"]}
		{
			call This.LaunchCharacterSetDynamically ${CSetSet}
			return
		}

		This:Echo["Launching Character Set '${CharacterSet.Escape}' \ayall slots\ax..."]
		
		variable int LaunchInterval
		LaunchInterval:Set["${CSetSet.FindSetting["Launch Delay"].Int}"]
		if ${LaunchInterval}<10
			LaunchInterval:Set[10]
		
		LavishScript:RegisterEvent[ISBoxerSlotLaunched]
		Event[ISBoxerSlotLaunched]:AttachAtom[This:OnSlotLaunched]


		variable bool TrackSessions
		TrackSessions:Set[${Sessions}]
		CSetSet.FindSet["Slots"]:GetSetIterator[Iterator]
		Iterator:First

		;
		variable int TokenIndex=1
		variable set Slots
		if ${SlotString.Length} && ${SlotString.NotEqual[NULL]}
		do
		{
			Slots:Add[${SlotString.Token[${TokenIndex},","]}]
			TokenIndex:Inc
		}
		while ${SlotString.Token[${TokenIndex},","].Length}				
		;

		variable int Slot
		do
		{
		    Slot:Set["${Iterator.Key.Right[-5]}"]

			; launching only specific slots?
			if ${Slots.Used} && !${Slots.Contains[${Slot}]}
			{
				if !${Iterator:Next(exists)}
					break
				continue
			}			

			if ${TrackSessions} && ${Session["is${Slot}"](exists)}
			{
				This:Echo["\aySlot ${Slot} already launched.\ax Updating it to character '${Iterator.Value.FindSetting["Character"].String.Escape}' in Character Set '${CSetSet.Name.Escape}'"]
				relay is${Slot} run isboxer -preinit "${CSetSet.Name.Escape}" ${Slot} "${Iterator.Value.FindSetting["Character"].String.Escape}"
				relay is${Slot} timedcommand 20 run isboxer -reload
				if !${Iterator:Next(exists)}
					break
			}
			else
			{
				This:Launch["${CSetSet}",${Slot},"${ISBoxerSettings.FindSet[Characters].FindSet["${Iterator.Value.FindSetting["Character"].String.Escape}"]}"]
				if !${Iterator:Next(exists)}
				{
					This:Echo["... no more Slots to launch"]
					break
				}
				wait 1800 ${SlotsLaunched.Element[${Slot}]}
				if !${SlotsLaunched.Element[${Slot}]}
				{
					This:Echo["\ayCharacter from Set '${CharacterSet.Escape}' not fully launched after 3 minutes. Select again to continue launching additional slots."]
					return
				}
				wait ${LaunchInterval}
			}	
		}
		while 1

		This:Echo["\agCharacter Set '${CharacterSet.Escape}' launched"]

	}

	function LaunchCharacterSetSlot(string CharacterSet, int Slot, string addParameters="", bool parametersExclusive=FALSE, string onPreStartup="", string onStartup="", string isboxer2ID="")
	{
		This:Echo["Preparing to launch Character Set '${CharacterSet.Escape}' Slot ${Slot} \ayonly\ax"]
		if !${This.ImportSettings}
			return

		variable settingsetref CSetSet
		CSetSet:Set[${ISBoxerSettings.FindSet[Character Sets].FindSet["${CharacterSet.Escape}"]}]
		if !${CSetSet}
		{
			This:Echo["\arFailed.\ax Character Set '${CharacterSet.Escape}' not found."]
			return
		}

		if !${CSetSet.FindSet["Slots"].Children}
		{
			This:Echo["\arFailed.\ax Character Set '${CharacterSet.Escape}' has nothing to launch."]
			return
		}

		This:Echo["Making sure Characters in Character Set '${CharacterSet.Escape}' are valid..."]
		variable iterator Iterator
		CSetSet.FindSet["Slots"]:GetSetIterator[Iterator]
		
		if !${Iterator:First(exists)}
		{
			This:Echo["\arFailed.\ax Character Set '${CharacterSet.Escape}' has no Characters."]
			return
		}

		variable settingsetref CharacterSettings

		do
		{
			if !${Iterator.Value.FindSetting["Character"].String.Length}
			{
				This:Echo["\arFailed.\ax ${Iterator.Key.Escape} has no Character."]
				return
			}
			if !${This.ValidateCharacter["${Iterator.Value.FindSetting["Character"].String.Escape}"]}
			{
				This:Echo["\arFailed.\ax Character in ${Iterator.Key.Escape} '${Iterator.Value.FindSetting["Character"].String}' has a problem."]
				return
			}

			if ${Iterator.Key.Equal["Slot ${Slot}"]}
			{
				CharacterSettings:Set[${ISBoxerSettings.FindSet[Characters].FindSet["${Iterator.Value.FindSetting["Character"].String.Escape}"]}]
				break
			}
		}
		while ${Iterator:Next(exists)}
		

		This:Echo["\agGood!"]
		

		This:Echo["Launching Character Set '${CharacterSet.Escape}' Slot ${Slot} \ayonly\ax..."]
				
		LavishScript:RegisterEvent[ISBoxerSlotLaunched]
		Event[ISBoxerSlotLaunched]:AttachAtom[This:OnSlotLaunched]


		variable bool TrackSessions
		TrackSessions:Set[${Sessions}]


		if ${TrackSessions} && ${Session["is${Slot}"](exists)}
		{
			This:Echo["\aySlot ${Slot} already launched.\ax Updating it to character '${Iterator.Value.FindSetting["Character"].String.Escape}' in Character Set '${CSetSet.Name.Escape}'"]
			relay is${Slot} run isboxer -preinit "${CSetSet.Name.Escape}" ${Slot} "${Iterator.Value.FindSetting["Character"].String.Escape}"
			relay is${Slot} timedcommand 20 run isboxer -reload
		}
		else
		{
			This:Launch["${CSetSet}",${Slot},"${CharacterSettings}","${addParameters.Escape}",${parametersExclusive},"${onPreStartup.Escape}","${onStartup.Escape}","${isboxer2ID.Escape}"]
		}
		
		This:Echo["\agCharacter Set '${CharacterSet.Escape}' Slot ${Slot} launched"]
		
	}
	
	variable collection:bool SlotsLaunched
	
	method OnSlotLaunched(int Slot)
	{
		SlotsLaunched:Set[${Slot},1]
	}

	method RegisterEvents()
	{
		LavishScript:RegisterEvent[ISBoxer_Launch_Starting]
		LavishScript:RegisterEvent[ISBoxer_Launch_Aborted]
		LavishScript:RegisterEvent[ISBoxer_Launch_Completed]
		LavishScript:RegisterEvent[ISBoxer_Slot_Launched]
	}

	/* If the global variables dont exist, they will be created dynamically. This is so that if they DO exist, the current value will be retained. */
	method InitializeGlobalKeepVariables()
	{
		if !${ISBoxerFocusFollowsMouse(exists)}
			declare ISBoxerFocusFollowsMouse bool globalkeep
	
		if !${ISBoxerMainSwitcherEffect(exists)}
			declare ISBoxerMainSwitcherEffect string globalkeep

		if !${ISBoxerMainActivateAuto(exists)}
			declare ISBoxerMainActivateAuto bool globalkeep

		if !${ISBoxerSlot(exists)}
			declare ISBoxerSlot int globalkeep

		if !${ISBoxerSlots(exists)}
			declare ISBoxerSlots int globalkeep

		if !${ISBoxerCharacterSet(exists)}
			declare ISBoxerCharacterSet string globalkeep

		if !${ISBoxerCharacter(exists)}
			declare ISBoxerCharacter string globalkeep

		if !${ISBoxerMonitor(exists)}
			declare ISBoxerMonitor string globalkeep

		if !${ISBoxer2Window(exists)}
			declare ISBoxer2Window string globalkeep

		if !${ISBoxerSingleWindowControl(exists)}
			declare ISBoxerSingleWindowControl bool globalkeep

		if !${ISBoxerVideoFXFocusHotkey(exists)}
		{
			declare ISBoxerVideoFXFocusHotkey string globalkeep NONE
;			AddTrigger Trigger_ConsoleLog "@*@"
		}
	}

	method Echo(string Text)
	{
		echo "| ${Time} \atISBoxer\ax: ${Text.Escape}"
	}
}

;atom(globalkeep) Trigger_ConsoleLog(string fulltext)
;{
;	relay isboxertoolkit console_log "${fulltext.Escape}"
;}

atom(globalkeep) ISBoxerFocus(string name, string _filter)
{
	if !${Session(exists)}
	{
		relay "all local" isboxerfocus "${name.Escape}" "${_filter.Escape}"
		return
	}
	
	if ${Display.Window.IsForeground}
	{
		if ${_filter.Length} && !${_filter.Equal[NULL]}
			uplink focus "${name.Escape}" "${_filter.Escape}"
		else
			uplink focus "${name.Escape}"
	}
}

atom(globalkeep) ISBoxerFocusMe()
{
	if !${Session(exists)}
	{
		return
	}
	
	relay "all local" isboxerfocus "${Session.Escape}"
}

atom(globalkeep) OnMouseEnter()
{
	if ${ISBoxerFocusFollowsMouse} && !${Display.Window.IsForeground}
	{
		; uplink focus "${Session.Escape}"
		relay "all local" isboxerfocus "${Session.Escape}"
	}
}

atom(globalkeep) ISBoxerMainSwitcher()
{
	if ${ISBoxerMainSwitcherEffect.Length}
		execute ${ISBoxerMainSwitcherEffect}
}

atom(globalkeep) ISBoxerMainActivate(bool Manual)
{
	if !${Manual} && !${ISBoxerMainActivateAuto}
		return
	snapset -activate -deactivateothers
;	if ${InnerSpace.Build}>=5126
;		relay "all other local" snapset -deactivate	
;	else
;		relay "other ${ISBoxerCharacterSet.Escape}" snapset -forcedeactivate
}

atom(globalkeep) ISBoxerAddGame(string gameName, string gameProfileName, string executablePath, string executableName, string parameters)
{
;	echo ISBoxerAddGame "${gameName.Escape}" "${gameProfileName.Escape}" "${executablePath.Escape}" "${executableName.Escape}"
 	variable settingsetref gamesSet
	variable settingsetref gameSet
	variable settingsetref gameProfilesSet
	variable settingsetref gameProfileSet

	gamesSet:Set[${LavishSettings.FindSet["${LavishScript.HomeDirectory}/GameConfiguration.XML"]}]

	gameSet:Set[${gamesSet.FindSet["${gameName.Escape}"]}]
	if !${gameSet}
	{
		gamesSet:AddSet["${gameName.Escape}"]
		gameSet:Set[${gamesSet.FindSet["${gameName.Escape}"]}]

		gameSet:AddSetting[OpenGL,1]:AddSetting[Direct3D8,1]:AddSetting[Direct3D9,1]:AddSetting[Win32I Keyboard,1]:AddSetting[Win32I Mouse,1]:AddSetting[DirectInput8 Keyboard,1]:AddSetting[DirectInput8 Mouse,1]:AddSetting[modules,auto]:AddSetting[Background Mouse,1]:AddSetting[Keystroke Delay,1]
	}
	
	gameProfilesSet:Set[${gameSet.FindSet[Profiles]}]
	if !${gameProfilesSet}
	{
		gameSet:AddSet[Profiles]
		gameProfilesSet:Set[${gameSet.FindSet[Profiles]}]
	}

	gameProfileSet:Set[${gameProfilesSet.FindSet["${gameProfileName.Escape}"]}]
	if !${gameProfileSet}
	{
		gameProfilesSet:AddSet["${gameProfileName.Escape}"]
		gameProfileSet:Set[${gameProfilesSet.FindSet["${gameProfileName.Escape}"]}]
	}

	/*
				<Setting Name="Path">C:\Program Files (x86)\InnerSpace</Setting>
				<Setting Name="Executable">dxNothing.exe</Setting>
	*/
	gameProfileSet:AddSetting[Path,"${executablePath.Escape}"]
	gameProfileSet:AddSetting[Executable,"${executableName.Escape}"]
	if ${parameters.Length}
		gameProfileSet:AddSetting[Parameters,"${parameters.Escape}"]
	else
		gameProfileSet.FindSetting[Parameters]:Remove

	gamesSet:Export["${LavishScript.HomeDirectory}/GameConfiguration.XML"]

	ui -reload "${SettingXML[InnerSpace.XML].Set[User Interface].Set[Uplink].GetString[Interface].Escape}" configuration
}

atom(globalkeep) ISBoxerRemoveGame(string gameName)
{
	variable settingsetref gamesSet
	variable settingsetref gameSet

	gamesSet:Set[${LavishSettings.FindSet["${LavishScript.HomeDirectory}/GameConfiguration.XML"]}]
	gameSet:Set[${gamesSet.FindSet["${gameName.Escape}"]}]
	if !${gameSet}
	{
		return
	}

	gameSet:Remove

	gamesSet:Export["${LavishScript.HomeDirectory}/GameConfiguration.XML"]
	ui -reload "${SettingXML[InnerSpace.XML].Set[User Interface].Set[Uplink].GetString[Interface].Escape}" configuration
}

atom(globalkeep) ISBoxerRemoveGameProfile(string gameName, string gameProfileName)
{
	variable settingsetref gamesSet
	variable settingsetref gameSet
	variable settingsetref gameProfilesSet
	variable settingsetref gameProfileSet

	gamesSet:Set[${LavishSettings.FindSet["${LavishScript.HomeDirectory}/GameConfiguration.XML"]}]

	gameSet:Set[${gamesSet.FindSet["${gameName.Escape}"]}]
	if !${gameSet}
	{
		return
	}

	gameProfilesSet:Set[${gameSet.FindSet[Profiles]}]
	if !${gameProfilesSet}
	{
		return
	}

	gameProfileSet:Set[${gameProfilesSet.FindSet["${gameProfileName.Escape}"]}]
	if !${gameProfileSet}
	{
		return
	}

	gameProfileSet:Remove

	gamesSet:Export["${LavishScript.HomeDirectory}/GameConfiguration.XML"]
	ui -reload "${SettingXML[InnerSpace.XML].Set[User Interface].Set[Uplink].GetString[Interface].Escape}" configuration
}


variable isboxer ISBoxer

function main(... Params)
{
    echo " "
    echo "/===================================================="
    echo "|"
    ISBoxer:InitializeGlobalKeepVariables
    if !${Params.Size}
    {
	ISBoxer:Echo["lol?"]
    }
    else
    {
      switch ${Params[1]}
      {
	case -inituplink
		ISBoxer:InitUplink
	  break
    case -launch
	  if ${Params.Size}<2
		break

		if ${Params.Size}==2
		{
			call ISBoxer.LaunchCharacterSet "${Params[2].Escape}" FALSE
		}

	    if ${Params.Size}==3
		{
			call ISBoxer.LaunchCharacterSet "${Params[2].Escape}" FALSE "${Params[3].Escape}"
		}
  	  break
    case -launchisboxer2slot
	  if ${Params.Size}<8
		break
		
	  call ISBoxer.LaunchCharacterSetSlot "${Params[2].Escape}" "${Params[3].Escape}" "${Params[4].Escape}" "${Params[5].Escape}" "${Params[6].Escape}" "${Params[7].Escape}" "${Params[8].Escape}"
	 break
    case -launchslot
	  if ${Params.Size}<3
		break
	  call ISBoxer.LaunchCharacterSetSlot "${Params[2].Escape}" "${Params[3].Escape}"
  	  break
    case -remotelaunch
	  if ${Params.Size}<2
		break
	  call ISBoxer.LaunchCharacterSet "${Params[2].Escape}" TRUE
  	  break
	case -reload
		if ${ISBoxerCharacterSet.Length} && ${ISBoxerCharacter.Length}
		{
			call ISBoxer.InitCharacter "${ISBoxerCharacterSet.Escape}" "${ISBoxerSlot}" "${ISBoxerCharacter}" TRUE
		}
		else
		{
			ISBoxer:Echo["\arCannot reload -- no Character Set or Character"]
		}
		break
	case -preinit
		ISBoxer:PreInitCharacter["${Params[2].Escape}","${Params[3].Escape}","${Params[4].Escape}","${Params[5].Escape}"]
		break
	case -init
		call ISBoxer.InitCharacter "${Params[2].Escape}" "${Params[3].Escape}" "${Params[4].Escape}" FALSE "${Params[5].Escape}"
		break
        default
  	  ISBoxer:Echo["Unrecognized parameter '${Params[1].Escape}'"]
  	  break
      }  
    }
    ISBoxer:Echo["Instructions completed."]
    echo "|"
    echo "\\===================================================="

}
