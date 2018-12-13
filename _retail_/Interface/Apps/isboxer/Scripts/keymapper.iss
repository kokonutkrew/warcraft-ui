objectdef actiontimer
{
	method Initialize(string _TimerPool, uint _Timestamp, float _Seconds, bool _Recurring, string _TimerCommand)
	{
		This.TimerPool:Set["${_TimerPool.Escape}"]
		This.Seconds:Set[${_Seconds}]
		This.Recurring:Set[${_Recurring}]
		This.TimerCommand:Set["${_TimerCommand.Escape}"]
		This.Timestamp:Set[${_Timestamp}]
	}

	variable string TimerCommand
	variable bool Recurring
	variable float Seconds
	variable string TimerPool

	variable uint Timestamp

	member ToInitialize()
	{
		return "\"${This.TimerPool.Escape}\",${This.Timestamp},${This.Seconds},${This.Recurring},\"${This.TimerCommand.Escape}\""
	}

	method Execute()
	{
;		echo timer executing. "${This.TimerCommand.Escape}"
		execute -reparse "${This.TimerCommand.Escape}"
	}
}

objectdef timerpool
{
	variable string PoolName
	variable index:actiontimer PriorityQueue
	variable uint Size
	variable bool BackEndRemoval
	variable bool Unlimited
	variable bool Attached

	method Initialize(string _PoolName, uint _Size, bool _backEndRemoval)
	{
;		echo timerpool:Initialize[${_PoolName},${_Size}]
		Size:Set[${_Size}]
		if ${_Size}==0
		{
			This.Unlimited:Set[1]
			This.PriorityQueue:Resize[10]
		}
		else
			This.PriorityQueue:Resize[${_Size}]

		PoolName:Set[${_PoolName}]
		BackEndRemoval:Set[${_backEndRemoval}]

	}

	member:uint FindInsertPosition(uint Timestamp)
	{
		; this could be done with a binary search, but linear is going to be fine for now
		variable iterator Iterator
		This.PriorityQueue:GetIterator[Iterator]
		
		if !${Iterator:First(exists)}
		{
;			echo FindInsertPosition: default first
			return 1
		}

		do
		{
			if ${Iterator.Value.Timestamp}>${Timestamp}
			{
;				echo FindInsertPosition: found ${Iterator.Key} (${Iterator.Value.Timestamp}>${Timestamp})
				return ${Iterator.Key}
			}
		}
		while ${Iterator:Next(exists)}

		; not found, insert last.
;		echo FindInsertPosition: default last
		variable int newPos = ${Math.Calc[${PriorityQueue.Used}+1].Int}
		if ${newPos} > ${PriorityQueue.Size}
			return ${PriorityQueue.Size}
		return ${newPos}
	}

	method Insert(float Seconds, bool Recurring, string TimerCommand)
	{
;		echo timerpool["${PoolName.Escape}"]:Insert[${Seconds},${Recurring},\"${TimerCommand.Escape}\"]
		; generate the new timestamp
		variable uint Timestamp
		Timestamp:Set[${Math.Calc[ (${Seconds}*1000) + ${Script.RunningTime} ].Int}]

		; make room if we're supposed to...
		if ${PriorityQueue.Size}==${PriorityQueue.Used}
		{
			if ${This.Unlimited}
			{
				; we makes room
				if ${PriorityQueue.Size}>1000
					PriorityQueue:Resize[${Math.Calc[${PriorityQueue.Size}*1.5]}]
				else
					PriorityQueue:Resize[${Math.Calc[${PriorityQueue.Size}*2]}]
			}
			elseif ${This.BackEndRemoval}
			{
				; ignore new timer, this one's on the back end. sorry!
				return
			}
		}

;		echo pq.Size=${This.PriorityQueue.Size}
		; locate its position in the priority queue, and insert
		variable uint NewPosition
		NewPosition:Set[${This.FindInsertPosition[${Timestamp}]}]
;		echo NewPosition=${NewPosition}

		This.PriorityQueue:Shift[${NewPosition},1]
		This.PriorityQueue:Set[${NewPosition},"${This.PoolName.Escape}",${Timestamp},${Seconds},${Recurring},"${TimerCommand.Escape}"]
;		echo This.PriorityQueue:Set[${NewPosition},"${This.PoolName.Escape}",${Timestamp},${Seconds},${Recurring},"${TimerCommand.Escape}"]
;		echo pq.Used=${This.PriorityQueue.Used}

		if !${Attached}
		{
			Attached:Set[1]
			Event[OnFrame]:AttachAtom[This:OnFrame]
		}
	}

	method OnFrame()
	{
		while 1
		{
			if !${This.PriorityQueue.Used}
			{
				Event[OnFrame]:DetachAtom[This:OnFrame]
				Attached:Set[0]
				return
			}

			if ${This.PriorityQueue[1].Timestamp}>${Script.RunningTime}
			{
;				echo ${PoolName.Escape}: ${This.PriorityQueue[1].Timestamp}>${Script.RunningTime}
				return
			}

			This.PriorityQueue[1]:Execute

			; check if auto-recurring
			if ${This.PriorityQueue[1].Recurring}
			{
				; copy
				variable actiontimer TempTimer
				TempTimer:Initialize[${This.PriorityQueue[1].ToInitialize}]

				; remove
				This.PriorityQueue:Remove[1]
				This.PriorityQueue:Collapse

				; generate the new timestamp
				TempTimer.Timestamp:Set[${Math.Calc[ (${TempTimer.Seconds}*1000) + ${TempTimer.Timestamp} ].Int}]

				; insert again
				variable uint NewPosition
				NewPosition:Set[${This.FindInsertPosition[${TempTimer.Timestamp}]}]

				This.PriorityQueue:Shift[${NewPosition},1]
				This.PriorityQueue:Set[${NewPosition},${TempTimer.ToInitialize}]
			}
			else
			{
				; just remove and move on
				This.PriorityQueue:Remove[1]
				This.PriorityQueue:Collapse
			}
		}		
	}
}

objectdef mappedkeyref
{
	variable string KeyMapName
	variable string MappedKeyName
	
	method Initialize(string keymapname, string mappedkeyname)
	{
		keymapname:Set["${KeyMapper.ProcessVariables["${keymapname.Escape}"].Escape}"]
		mappedkeyname:Set["${KeyMapper.ProcessVariables["${mappedkeyname.Escape}"].Escape}"]

;		echo Initialize[${keymapname.Escape},${mappedkeyname.Escape}]
		KeyMapName:Set["${keymapname.Escape}"]
		MappedKeyName:Set["${mappedkeyname.Escape}"]
	}

	method Translate()
	{
		variable string fullname = "${KeyMapName.Replace[" ","_",";","?",":","_",",","_","[","lb_"].Escape}(keymap)_${MappedKeyName.Replace[" ","_",";","?",":","_",",","_","[","lb_"].Escape}"
		variable string halfname = "${KeyMapName.Replace[" ","_",";","?",":","_",",","_","[","lb_"].Escape}(keymap)"

;		echo fullname=${fullname.Escape}  bindexists=${Input.Bind["keymapper_${fullname.Escape}"](exists)}

		if ${Input.Bind["keymapper_${fullname.Escape}"](exists)}
		{
			/* KeyMap+MappedKey pair */		
			if  ${KeyMapper.MappedKeyRewrites.Element["${fullname.Escape}"](exists)}
			{
				KeyMapName:Set["${KeyMapper.MappedKeyRewrites.Element["${fullname.Escape}"].KeyMapName}"]
				MappedKeyName:Set["${KeyMapper.MappedKeyRewrites.Element["${fullname.Escape}"].MappedKeyName}"]
				ISBoxerUI:DebugOut["Virtual Mapped Key","Virtualizing ${fullname.Escape} as ${MappedKeyName.Escape} in ${KeyMapName.Escape}"]
				This:Translate
				return
			}

			/* KeyMap only */
			if  ${KeyMapper.MappedKeyRewrites.Element["${halfname.Escape}"](exists)}
			{
				KeyMapName:Set["${KeyMapper.MappedKeyRewrites.Element["${halfname.Escape}"].KeyMapName}"]		
				if ${KeyMapper.MappedKeyRewrites.Element["${halfname.Escape}"].MappedKeyName.Length}
				{
					MappedKeyName:Set["${KeyMapper.MappedKeyRewrites.Element["${halfname.Escape}"].MappedKeyName}"]
				}
					
				ISBoxerUI:DebugOut["Virtual Mapped Key","Virtualizing ${fullname.Escape} as ${MappedKeyName.Escape} in ${KeyMapName.Escape}"]
				This:Translate
				return
			}
		}


	}
	
	member ToText()
	{
		return "\"${KeyMapName.Escape}\",\"${MappedKeyName.Escape}\""	
	}
}

objectdef stepresethandler
{
	variable uint FirstPress
	variable uint FirstAdvance
	variable uint LastPress
	
	variable uint CurrentStepTimestamp
	
	variable uint CurrentStep
	variable uint Steps
	
	variable string ResetType
	variable uint ResetTimer
	
	variable index:int StickySteps
	variable index:int StumpSteps
	variable index:uint StepCounters
	variable index:bool EnabledSteps

	variable int CurrentStepTriggered

	
	
	method Initialize(uint resettimer, string resettype)
	{
		ResetType:Set["${resettype.Escape}"]
		ResetTimer:Set[${resettimer}]
		CurrentStep:Set[1]
		CurrentStepTriggered:Set[0]
	}
	
	method AddStep(int sticky, bool stop, bool stump, bool disabled)
	{
		Steps:Inc
		StickySteps:Resize[${Steps}]
		if ${stop}
			StickySteps:Set[${Steps},-1]
		else
			StickySteps:Set[${Steps},${sticky}]

		StumpSteps:Resize[${Steps}]
		StumpSteps:Set[${Steps},${Math.Calc[${stump}].Int}]

		StepCounters:Resize[${Steps}]
		StepCounters:Set[${Steps},1]

		EnabledSteps:Resize[${Steps}]
		if ${disabled}
			EnabledSteps:Set[${Steps},0]
		else
			EnabledSteps:Set[${Steps},1]
	}

	member:int GetNextEnabledStep(int from_step)
	{
		variable int next_step = ${from_step}
		next_step:Inc

		while 1
		{
			if ${next_step}>${Steps}
			{
				next_step:Set[1]
			}

			if ${next_step}==${from_step}
				return ${from_step}

			if ${EnabledSteps[${next_step}]}
			{
				return ${next_step}
			}

			next_step:Inc
		}
	}
	
	method Advance(bool press)
	{
;		echo Advance! ${press}
		if ${CurrentStep}==1
			FirstAdvance:Set[${Script.RunningTime}]
			
		StepCounters:Set[${CurrentStep},${StepCounters[${CurrentStep}]:Inc}]

		variable int from_step=${CurrentStep}
		CurrentStep:Inc
		while 1
		{
			if ${CurrentStep}>${Steps}
			{
				CurrentStep:Set[1]

				if ${press}
				{
	;				echo FirstPress:Set[${Script.RunningTime}]
					FirstPress:Set[${Script.RunningTime}]
				}
				else
				{
	;				echo FirstPress:Set[0]
					FirstPress:Set[0]
				}
			}

			if ${CurrentStep}==${from_step}
				break

			if !${press} || ${EnabledSteps[${CurrentStep}]}
			{
				break
			}

			CurrentStep:Inc
		}

		CurrentStepTriggered:Set[0]

		if ${press}
		{
;			FirstPress:Set[${Script.RunningTime}]
			CurrentStepTimestamp:Set[${Script.RunningTime}]
		}
		else
		{
			CurrentStepTimestamp:Set[0]
;			FirstPress:Set[0]
		}
		
	}

	member:uint StepCounter()
	{
		return ${StepCounters[${CurrentStep}]}
	}
	
	method Reset()
	{
		StepCounters:Set[${CurrentStep},${StepCounters[${CurrentStep}]:Inc}]
;		echo Reset!
		FirstPress:Set[${Script.RunningTime}]
		CurrentStep:Set[1]
		CurrentStepTriggered:Set[0]
;		CurrentStepTimestamp:Set[0]
		CurrentStepTimestamp:Set[${FirstPress}]
	}
	
	method Inc(int value)
	{
		if !${value}
			return
			
		if ${CurrentStep}==1
			FirstAdvance:Set[${Script.RunningTime}]
		
;		echo CurrentStep=${CurrentStep} value=${value}
		StepCounters:Set[${CurrentStep},${StepCounters[${CurrentStep}]:Inc}]
		CurrentStep:Set[ ((${CurrentStep}-1+${value}) % ${Steps}) + 1 ]
		while ${CurrentStep}<1
		{
			CurrentStep:Inc[${Steps}]
		}
			
;		echo new step=${CurrentStep}
			
;		if ${CurrentStep}==1
			FirstPress:Set[0]
;		else
		CurrentStepTimestamp:Set[0]
		CurrentStepTriggered:Set[0]
	}
	
	method Set(int value)
	{
		if ${value}<1
			value:Set[1]
			
		if ${CurrentStep}==1
			FirstAdvance:Set[${Script.RunningTime}]
		
		StepCounters:Set[${CurrentStep},${StepCounters[${CurrentStep}]:Inc}]
		CurrentStep:Set[ ((${value}-1) % ${Steps}) + 1 ]
			
;		if ${CurrentStep}==1
			FirstPress:Set[0]
;		else
;			CurrentStepTimestamp:Set[${Script.RunningTime}]			
		CurrentStepTimestamp:Set[0]
		CurrentStepTriggered:Set[0]
	}

	method Modify(int numStep, int enable, int sticky_time, int trigger_once)
	{
		if ${enable}>=0
		{
			EnabledSteps[${numStep}]:Set[${enable}]
		}
		if ${sticky_time}>=-1
		{
			StickySteps[${numStep}]:Set[${sticky_time}]
		}
		if ${trigger_once}>=0
		{
			StumpSteps[${numStep}]:Set[${trigger_once}]
		}
	}

	
	method Execute(string name, bool press, bool precheck)
	{
;		echo Execute press=${press} precheck=${precheck}

		if ${precheck}
		{
			if ${StickySteps[${CurrentStep}]}
			{
				if !${CurrentStepTimestamp}
					CurrentStepTimestamp:Set[${Script.RunningTime}]
				/* Pre-press advance check */
				if ${StickySteps[${CurrentStep}]}>0 && ${Script.RunningTime}>=${StickySteps[${CurrentStep}]}+${CurrentStepTimestamp}
				{
					This:Advance[1]
				}
;				else
;				{
;					echo \ayStep ${CurrentStep}: not advancing because ${Script.RunningTime}<${StickySteps[${CurrentStep}]}+${CurrentStepTimestamp}
;				}			
			}

			if !${FirstPress}
			{
				FirstPress:Set[${Script.RunningTime}]
				CurrentStepTimestamp:Set[${FirstPress}]
			}
			if ${CurrentStep}>1
			{
				/* Pre-press reset check */
				switch ${ResetType}
				{
				case FromFirstPress
					if ${Script.RunningTime}>=${ResetTimer}+${FirstPress}
					{
;						echo \agFromFirstPress ${Script.RunningTime}>=${ResetTimer}+${FirstPress}
						This:Reset
					}
;					else
;						echo \ayFromFirstPress ${Script.RunningTime}<${ResetTimer}+${FirstPress}
					break
				case FromFirstAdvance
;					echo FromFirstAdvance checking ${Script.RunningTime}>=${ResetTimer}+${FirstAdvance}
;					if ${Script.RunningTime}>=${ResetTimer}+${CurrentStepTimestamp}
					if ${Script.RunningTime}>=${ResetTimer}+${FirstAdvance}
						This:Reset
					break
				case FromLastPress
					if ${Script.RunningTime}>=${ResetTimer}+${LastPress}
						This:Reset
					break
				}

			}		
			
			LastPress:Set[${Script.RunningTime}]
		}

		if !${EnabledSteps[${CurrentStep}]}
		{
			This:Advance[1]
			if !${EnabledSteps[${CurrentStep}]}
			{
				return
			}
		}


		
		variable string LastStepCounter=${CurrentStepCounter}
		CurrentStepCounter:Set[%${StepCounters[${CurrentStep}]}]
		variable int executedStep
		executedStep:Set[${CurrentStep}]
		if ${press}
		{
			if !${StumpSteps[${CurrentStep}]} || ${CurrentStepTriggered}<1
			{
				execute "${name.Escape}_step_${CurrentStep}_press"
				CurrentStepTriggered:Set[1]
			}
		}
		else
		{
			if !${StumpSteps[${CurrentStep}]} || ${CurrentStepTriggered}<2
			{
				execute "${name.Escape}_step_${CurrentStep}_release"
				CurrentStepTriggered:Set[2]
			}
		}
		CurrentStepCounter:Set[${LastStepCounter}]
		
		if !${press} && ${CurrentStep}==${executedStep} && !${StickySteps[${CurrentStep}]}
		{
			This:Advance[0]			
		}

	}

}

objectdef bindbuilder
{
	variable string Name
	variable string Hotkey

	variable string PressCmd
	variable string ReleaseCmd

	variable bool Hold
	variable bool UseFTLModifiers
	variable string SendNextClick
	variable bool SendNextClickBlockLocal
	

	method AddPressCommand(string value)
	{
		if ${PressCmd.Length}
			PressCmd:Concat[";${value.Escape}"]
		else
			PressCmd:Set["${value.Escape}"]
	}
	method AddReleaseCommand(string value)
	{
		if ${ReleaseCmd.Length}
			ReleaseCmd:Concat[";${value.Escape}"]
		else
			ReleaseCmd:Set["${value.Escape}"]
	}

	member FTLModifiers(bool pretty_please)
	{
		if ${pretty_please} || ${UseFTLModifiers}
			return ${KeyMapper.FTLModifiers.Escape}
		return
	}

	member ResolveTarget(string name, bool roundrobin)
	{
		name:Set["${KeyMapper.ProcessVariables["${name.Escape}"].Escape}"]
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

		if ${roundrobin}
			return "(${name.Escape})\${CurrentStepCounter}"
		return "${name.Escape}"
	}

	/*
	; Work in progress
	method AddCustomVariable(string target, string _action, string vname, string newvalue)
	{
		variable string command
		if ${target.Length} && !${target.Equal[self]}
			command:Set["relay \"${This.ResolveTarget["${target.Escape}"]}\" "]
	
		name:Set["${KeyMapper.ProcessVariables["${name.Escape}"].Escape}"]
		switch ${value}
		{
		case PauseOne
			command:Concat["menuman -pausemenu \"${name.Escape}\""]
			break
		case UnpauseOne
			command:Concat["menuman -unpausemenu \"${name.Escape}\""]
			break
		case Load
			command:Concat["menuman -loadmenu \"${name.Escape}\""]
			break
		case Unload
			command:Concat["menuman -deletemenu \"${name.Escape}\""]
			break
		case Pause
			command:Concat["menuman -pausehotkeys"]
			break
		case UnPause
			command:Concat["menuman -unpausehotkeys"]
			break
		case Clear
			command:Concat["menuman -clearmenus"]
			break
		}
		
		if ${_ActionTimer}
			This:AddReleaseCommand["keymapper -addtimer \"${_ActionTimerPool.Escape}\" ${_ActionTimerSeconds} ${_ActionTimerRecurring} \"${command.Escape.Escape}\""]
		else		
			This:AddReleaseCommand["${command.Escape}"]	
	}
	/**/

	method AddVariableKeystroke(string target, string vkname, bool roundrobin, bool use_ftl_modifiers)
	{
		if ${target.Equal[None]}
			return

		if ${ISBoxerSingleWindowControl}
		{
			if ${target.Find["all"]} || ${target.Find["other"]}
			{
				if ${roundrobin}
				{
					ISBoxerUI:Echo["\aySingle Window Control Mode: Allowing Round-Robin Target of '${target.Escape}' on Variable Keystroke Action\ax"]
				}
				else
				{
					ISBoxerUI:Echo["\aySingle Window Control Mode: Enforcing Target of 'self' on Variable Keystroke Action\ax"]
					target:Set["self"]
				}
			}
			else
			{
				ISBoxerUI:Echo["\aySingle Window Control Mode: Allowing Target of '${target.Escape}' on Variable Keystroke Action\ax"]
			}
		}

		variable string command
		if ${target.Length} && !${target.Equal[self]}
			command:Set["relay \"${This.ResolveTarget["${target.Escape}",${roundrobin}].Escape}\" "]

		vkname:Set["${KeyMapper.ProcessVariables["${vkname.Escape}"].Escape}"]
		if ${target.Equal[self]}
		{
			if ${Hold}
			{
				This:AddPressCommand["${command.Escape}keymapper -holdvariable \"${vkname.Escape}\" \"\" \"variablekeystroke@${Session.Escape}\""]
				This:AddReleaseCommand["${command.Escape}keymapper -releasevariable \"${vkname.Escape}\" \"\" \"variablekeystroke@${Session.Escape}\""]
			}
			else
			{
				This:AddReleaseCommand["${command.Escape}keymapper -pressvariable \"${vkname.Escape}\" \"\" \"variablekeystroke@${Session.Escape}\""]
			}
		}
		else
		{			
			if ${Hold}
			{
				This:AddPressCommand["${command.Escape}keymapper -holdvariable \"${vkname.Escape}\" \"${This.FTLModifiers[${use_ftl_modifiers}]}\" \"variablekeystroke@${Session.Escape}\""]
				This:AddReleaseCommand["${command.Escape}keymapper -releasevariable \"${vkname.Escape}\" \"${This.FTLModifiers[${use_ftl_modifiers}]}\" \"variablekeystroke@${Session.Escape}\""]
			}
			else
			{
				This:AddReleaseCommand["${command.Escape}keymapper -pressvariable \"${vkname.Escape}\" \"${This.FTLModifiers[${use_ftl_modifiers}]}\" \"variablekeystroke@${Session.Escape}\""]
			}
		}		
	}

	method AddTwitchAction(string target, int _start, int _pause, int _commercial, string new_scene, int _mute_mic, float mic_volume, float playback_volume, bool _ActionTimer, string _ActionTimerPool, float _ActionTimerSeconds, bool _ActionTimerRecurring)
	{
;atom(globalkeep) keymapper_twitch(int _start, int _pause, int _commercial, string new_scene, int _mute_mic, float mic_volume, float playback_volume)
		variable string command
		if ${target.Length} && !${target.Equal[self]}
			command:Set["relay \"${This.ResolveTarget["${target.Escape}"]}\" "]
	
		new_scene:Set["${KeyMapper.ProcessVariables["${new_scene.Escape}"].Escape}"]

		command:Concat["keymapper_twitch ${_start} ${_pause} ${_commercial} \"${new_scene.Escape}\" ${_mute_mic} ${mic_volume} ${playback_volume}"]

		if ${_ActionTimer}
			This:AddReleaseCommand["keymapper -addtimer \"${_ActionTimerPool.Escape}\" ${_ActionTimerSeconds} ${_ActionTimerRecurring} \"${command.Escape.Escape}\""]
		else		
			This:AddReleaseCommand["${command.Escape}"]	
	}

	method AddDoMenuButtonAction(string target, string menu_name, int num_button)
	{
		if ${target.Equal[None]}
			return
		variable string command
		if ${target.Length} && !${target.Equal[self]}
			command:Set["relay \"${This.ResolveTarget["${target.Escape}"]}\" "]

		if !${menu_name.Length}
			This:AddReleaseCommand["${command.Escape}menuman -activatemouseoverbutton"]
		else
		{
			This:AddPressCommand["${command.Escape}menuman -holdbutton \"${menu_name.Escape}\" \"${num_button}\""]
			This:AddReleaseCommand["${command.Escape}menuman -releasebutton \"${menu_name.Escape}\" \"${num_button}\""]
		}
	}

	method AddSetVariableKeystroke(string target, string vkname, string newvalue)
	{
		if ${target.Equal[None]}
			return
		variable string command
		if ${target.Length} && !${target.Equal[self]}
			command:Set["relay \"${This.ResolveTarget["${target.Escape}"]}\" "]

		vkname:Set["${KeyMapper.ProcessVariables["${vkname.Escape}"].Escape}"]
		This:AddReleaseCommand["${command.Escape}keymapper -setvariable \"${vkname.Escape}\" \"${newvalue.Escape}\""]
	}
	
	method AddKeypress(string name, string key, bool roundrobin, bool use_ftl_modifiers)
	{
		if ${ISBoxerSingleWindowControl}		
		{
			if ${roundrobin}
			{
				ISBoxerUI:Echo["\aySingle Window Control Mode: Allowing Round-Robin Target of '${name.Escape}' on Keystroke Action\ax"]
			}
			elseif ${name.Find["all"]} || ${name.Find["other"]}
			{
				ISBoxerUI:Echo["\aySingle Window Control Mode: Enforcing Target of 'self' on Keystroke Action\ax"]
				name:Set["self"]
			}
			else
			{
				ISBoxerUI:Echo["\aySingle Window Control Mode: Allowing Target of '${name.Escape}' on Keystroke Action\ax"]
			}
		}


		if ${name.Equal[self]}
		{
;			if ${key.Equal["\\"]}
;			{
;				key:Set["\\\\"]
;			}
			if ${Hold}
			{
				This:AddPressCommand["remotebutton \"keystroke@${Session.Escape}\" hold \"${key.Escape.Escape}\""]
				This:AddReleaseCommand["remotebutton \"keystroke@${Session.Escape}\" release \"${key.Escape.Escape}\""]
			}
			else
			{
				This:AddReleaseCommand["remotebutton \"keystroke@${Session.Escape}\" nomodifiers \"${key.Escape.Escape}\""]
			}
		}
		else
		{
			if ${InnerSpace.Build}>=5015
			{
				if ${Hold}
				{
					This:AddPressCommand["relay \"${This.ResolveTarget["${name.Escape}",${roundrobin}].Escape}\" remotebutton \"keystroke@${Session.Escape}\" hold \"${This.FTLModifiers[${use_ftl_modifiers}]}${key.Escape.Escape.Escape}\""]
					This:AddReleaseCommand["relay \"${This.ResolveTarget["${name.Escape}",${roundrobin}].Escape}\" remotebutton \"keystroke@${Session.Escape}\" release \"${This.FTLModifiers[${use_ftl_modifiers}]}${key.Escape.Escape.Escape}\""]
				}
				else
				{
					This:AddReleaseCommand["relay \"${This.ResolveTarget["${name.Escape}",${roundrobin}].Escape}\" remotebutton \"keystroke@${Session.Escape}\" nomodifiers \"${This.FTLModifiers[${use_ftl_modifiers}]}${key.Escape.Escape.Escape}\""]
				}
			}
			else
			{
				if ${key.Equal["\\"]}
				{
					if ${Hold}
					{
						This:AddPressCommand["relay \"${This.ResolveTarget["${name.Escape}",${roundrobin}].Escape}\" remotebutton \"keystroke@${Session.Escape}\" hold \"${This.FTLModifiers[${use_ftl_modifiers}]}\\\\\\\\\""]
						This:AddReleaseCommand["relay \"${This.ResolveTarget["${name.Escape}",${roundrobin}].Escape}\" remotebutton \"keystroke@${Session.Escape}\" release \"${This.FTLModifiers[${use_ftl_modifiers}]}\\\\\\\\\""]
					}
					else
					{
						This:AddReleaseCommand["relay \"${This.ResolveTarget["${name.Escape}",${roundrobin}].Escape}\" remotebutton \"keystroke@${Session.Escape}\" nomodifiers \"${This.FTLModifiers[${use_ftl_modifiers}]}\\\\\\\\\""]
					}
				}
				else
				{
					if ${Hold}
					{
						This:AddPressCommand["relay \"${This.ResolveTarget["${name.Escape}",${roundrobin}].Escape}\" remotebutton \"keystroke@${Session.Escape}\" hold \"${This.FTLModifiers[${use_ftl_modifiers}]}${key.Escape}\""]
						This:AddReleaseCommand["relay \"${This.ResolveTarget["${name.Escape}",${roundrobin}].Escape}\" remotebutton \"keystroke@${Session.Escape}\" release \"${This.FTLModifiers[${use_ftl_modifiers}]}${key.Escape}\""]
					}
					else
					{
						This:AddReleaseCommand["relay \"${This.ResolveTarget["${name.Escape}",${roundrobin}].Escape}\" remotebutton \"keystroke@${Session.Escape}\" nomodifiers \"${This.FTLModifiers[${use_ftl_modifiers}]}${key.Escape}\""]
					}
				}
			}
		}
	}

	method AddLightAction(string uplink, string name, string value, bool _ActionTimer, string _ActionTimerPool, float _ActionTimerSeconds, bool _ActionTimerRecurring)
	{
		if ${name.Equal[None]}
			return
		variable string command
		if ${uplink.Length} && ${uplink.NotEqual[NULL]}
			command:Set["relay \"${uplink}\" "]
		command:Concat["keymapper -light \"${name.Escape}\" \"${value.Escape}\""]

		if ${_ActionTimer}
			This:AddReleaseCommand["keymapper -addtimer \"${_ActionTimerPool.Escape}\" ${_ActionTimerSeconds} ${_ActionTimerRecurring} \"${command.Escape.Escape}\""]
		else		
			This:AddReleaseCommand["${command.Escape}"]					
	}

;bb:AddMenuStyleAction["${Iterator.Value.FindAttribute[Target].String.Escape}","${Iterator.Value.String.Escape}","${Iterator.Value.FindAttribute[HotkeySet].String.Escape}","${Iterator.Value.FindAttribute[ButtonSet].String.Escape}","${Iterator.Value.FindAttribute[StartButtonSetAtNumButton].String.Escape}","${Iterator.Value.FindAttribute[ActionTimer].String.Equal[true]}","${Iterator.Value.FindAttribute[ActionTimerPool].String.Escape}","${Iterator.Value.FindAttribute[ActionTimerSeconds].String.Escape}","${Iterator.Value.FindAttribute[ActionTimerRecurring].String.Equal[true]}"]

	method AddHotkeySetAction(string target, string name, string menuname, bool bindSoft, string otherhotkeyset, int start_offset, bool _ActionTimer, string _ActionTimerPool, float _ActionTimerSeconds, bool _ActionTimerRecurring)
	{
		variable string command
		if ${target.Length} && !${target.Equal[self]}
			command:Set["relay \"${This.ResolveTarget["${target.Escape}"]}\" "]
	
		name:Set["${KeyMapper.ProcessVariables["${name.Escape}"].Escape}"]
		hotkeyset:Set["${KeyMapper.ProcessVariables["${otherhotkeyset.Escape}"].Escape}"]
		buttonset:Set["${KeyMapper.ProcessVariables["${menuname.Escape}"].Escape}"]

		command:Concat["menuman"]
		if ${otherhotkeyset.Length} && ${otherhotkeyset.NotEqual[NULL]}
		{
			command:Concat[" -copyhotkeys \"${name.Escape}\" \"${otherhotkeyset.Escape}\" ${start_offset}"]
		}

		if !${menuname.Length} 
		{
			command:Concat[" -detachhotkeylayout \"${name.Escape}\""]
		}
		elseif ${menuname.NotEqual[NULL]}
		{
			command:Concat[" -menuattachhotkeys \"${menuname.Escape}\" \"${name.Escape}\" ${bindSoft}"]
		}

		if ${_ActionTimer}
			This:AddReleaseCommand["keymapper -addtimer \"${_ActionTimerPool.Escape}\" ${_ActionTimerSeconds} ${_ActionTimerRecurring} \"${command.Escape.Escape}\""]
		else		
			This:AddReleaseCommand["${command.Escape}"]	
	}

	method AddMenuStyleAction(string target, string name, string hotkeyset, bool bindSoft, string buttonset, int start_offset, bool _ActionTimer, string _ActionTimerPool, float _ActionTimerSeconds, bool _ActionTimerRecurring)
	{
		variable string command
		if ${target.Length} && !${target.Equal[self]}
			command:Set["relay \"${This.ResolveTarget["${target.Escape}"]}\" "]
	
		name:Set["${KeyMapper.ProcessVariables["${name.Escape}"].Escape}"]
		hotkeyset:Set["${KeyMapper.ProcessVariables["${hotkeyset.Escape}"].Escape}"]
		buttonset:Set["${KeyMapper.ProcessVariables["${buttonset.Escape}"].Escape}"]

		command:Concat["menuman"]
		if ${hotkeyset.Length} && ${hotkeyset.NotEqual[NULL]}
		{
			command:Concat[" -menuattachhotkeys \"${name.Escape}\" \"${hotkeyset.Escape}\" ${bindSoft}"]
		}
		if ${buttonset.Length} && ${buttonset.NotEqual[NULL]}
		{
			command:Concat[" -menubuttonlayout \"${name.Escape}\" \"${buttonset.Escape}\" ${start_offset}"]
		}
		
		if ${_ActionTimer}
			This:AddReleaseCommand["keymapper -addtimer \"${_ActionTimerPool.Escape}\" ${_ActionTimerSeconds} ${_ActionTimerRecurring} \"${command.Escape.Escape}\""]
		else		
			This:AddReleaseCommand["${command.Escape}"]	
	}

	method AddMenuStateAction(string target, string name, string value, bool _ActionTimer, string _ActionTimerPool, float _ActionTimerSeconds, bool _ActionTimerRecurring)
	{
		variable string command
		if ${target.Length} && !${target.Equal[self]}
			command:Set["relay \"${This.ResolveTarget["${target.Escape}"]}\" "]
	
		name:Set["${KeyMapper.ProcessVariables["${name.Escape}"].Escape}"]
		switch ${value}
		{
		case PauseOne
			command:Concat["menuman -pausemenu \"${name.Escape}\""]
			break
		case UnpauseOne
			command:Concat["menuman -unpausemenu \"${name.Escape}\""]
			break
		case Load
			command:Concat["menuman -loadmenu \"${name.Escape}\""]
			break
		case Unload
			command:Concat["menuman -deletemenu \"${name.Escape}\""]
			break
		case Pause
			command:Concat["menuman -pausehotkeys"]
			break
		case UnPause
			command:Concat["menuman -unpausehotkeys"]
			break
		case Clear
			command:Concat["menuman -clearmenus"]
			break
		}
		
		if ${_ActionTimer}
			This:AddReleaseCommand["keymapper -addtimer \"${_ActionTimerPool.Escape}\" ${_ActionTimerSeconds} ${_ActionTimerRecurring} \"${command.Escape.Escape}\""]
		else		
			This:AddReleaseCommand["${command.Escape}"]	
	}

	method AddVolumeAction(string target, float _offset, float over_seconds, string _action, bool _ActionTimer, string _ActionTimerPool, float _ActionTimerSeconds, bool _ActionTimerRecurring)
	{
		variable string command
		if ${target.Length} && !${target.Equal[self]}
			command:Set["relay \"${This.ResolveTarget["${target.Escape}"]}\" "]

		command:Concat["keymapper_volume \"${_action.Escape}\" ${_offset} ${over_seconds}"]
			
		if ${_ActionTimer}
			This:AddReleaseCommand["keymapper -addtimer \"${_ActionTimerPool.Escape}\" ${_ActionTimerSeconds} ${_ActionTimerRecurring} \"${command.Escape.Escape}\""]
		else		
			This:AddReleaseCommand["${command.Escape}"]	
	}

	method AddMenuButtonAction(string target, string ButtonSet, string Menu, int NumButton, string StoreOrRestore, string PullButtonSet, string PullMenu, int PullNumButton, string Text, string press_command, string release_command, string Image, string ImageHover, string ImagePressed, float Alpha, string BackgroundColor, string BorderColor, int Border, string FontName, int FontSize, string FontColor, int FontBold, bool _ActionTimer, string _ActionTimerPool, float _ActionTimerSeconds, bool _ActionTimerRecurring)
	{
		variable string command
		if ${target.Length} && !${target.Equal[self]}
			command:Set["relay \"${This.ResolveTarget["${target.Escape}"]}\" "]

		; Text:Set["${KeyMapper.ProcessVariables["${Text.Escape}"].Escape}"]

		command:Concat["menuman_buttonupdate \"${ButtonSet.Escape}\" \"${Menu.Escape}\" \"${NumButton}\" \"${StoreOrRestore.Escape}\" \"${PullButtonSet.Escape}\" \"${PullMenu.Escape}\" \"${PullNumButton}\" \"${Text.Escape}\" \"${press_command.Escape}\" \"${release_command.Escape}\" \"${Image.Escape}\" \"${ImageHover.Escape}\" \"${ImagePressed.Escape}\" \"${Alpha}\" \"${BackgroundColor.Escape}\" \"${BorderColor.Escape}\" \"${Border}\" \"${FontName.Escape}\" \"${FontSize}\" \"${FontColor.Escape}\" \"${FontBold}\""]

		if ${_ActionTimer}
			This:AddReleaseCommand["keymapper -addtimer \"${_ActionTimerPool.Escape}\" ${_ActionTimerSeconds} ${_ActionTimerRecurring} \"${command.Escape.Escape}\""]
		else		
			This:AddReleaseCommand["${command.Escape}"]	
	}

	method AddClickBarStateAction(string target, string name, string value, bool _ActionTimer, string _ActionTimerPool, float _ActionTimerSeconds, bool _ActionTimerRecurring)
	{
		variable string command
		if ${target.Length} && !${target.Equal[self]}
			command:Set["relay \"${This.ResolveTarget["${target.Escape}"]}\" "]
	
		name:Set["${KeyMapper.ProcessVariables["${name.Escape}"].Escape}"]
		command:Concat["keymapper -clickbar \"${name.Escape}\" \"${value.Escape}\""]
		
		if ${_ActionTimer}
			This:AddReleaseCommand["keymapper -addtimer \"${_ActionTimerPool.Escape}\" ${_ActionTimerSeconds} ${_ActionTimerRecurring} \"${command.Escape.Escape}\""]
		else		
			This:AddReleaseCommand["${command.Escape}"]	
	}
	
	method AddClickBarButtonAction(string target, string clickbarname, string name, string text, string bgcolor, string img, bool _ActionTimer, string _ActionTimerPool, float _ActionTimerSeconds, bool _ActionTimerRecurring)
	{
		variable string command
		if ${target.Length} && !${target.Equal[self]}
			command:Set["relay \"${This.ResolveTarget["${target.Escape}"]}\" "]
			
		clickbarname:Set["${KeyMapper.ProcessVariables["${clickbarname.Escape}"].Escape}"]
		name:Set["${KeyMapper.ProcessVariables["${name.Escape}"].Escape}"]
		text:Set["${KeyMapper.ProcessVariables["${text.Escape}"].Escape}"]
		command:Concat["keymapper -clickbarbutton \"${clickbarname.Escape}\" \"${name.Escape}\" \"${text.Escape}\" \"${bgcolor.Escape}\" \"${img.Escape}\""]

		if ${_ActionTimer}
			This:AddReleaseCommand["keymapper -addtimer \"${_ActionTimerPool.Escape}\" ${_ActionTimerSeconds} ${_ActionTimerRecurring} \"${command.Escape.Escape}\""]
		else		
			This:AddReleaseCommand["${command.Escape}"]	
	}

	method AddKeyMapAction(string target, string name, string value, bool _ActionTimer, string _ActionTimerPool, float _ActionTimerSeconds, bool _ActionTimerRecurring)
	{
		variable string command
		if ${target.Length} && !${target.Equal[self]}
			command:Set["relay \"${This.ResolveTarget["${target.Escape}"]}\" "]

		name:Set["${KeyMapper.ProcessVariables["${name.Escape}"].Escape}"]

		switch ${value}
		{
		case Toggle
			command:Concat["keymapper -togglemap \"${name.Escape}\""]
			break
		case On
			command:Concat["keymapper -loadmap \"${name.Escape}\""]
			break
		case Off
			command:Concat["keymapper -unloadmap \"${name.Escape}\""]
			break
		}

		if ${_ActionTimer}
			This:AddReleaseCommand["keymapper -addtimer \"${_ActionTimerPool.Escape}\" ${_ActionTimerSeconds} ${_ActionTimerRecurring} \"${command.Escape.Escape}\""]
		else		
			This:AddReleaseCommand["${command.Escape}"]									
	}
	
	method AddDoMappedKeyAction(string target, string keymapname, string name, bool roundrobin, string conditionalKey)
	{
		variable string command
		if ${target.Length} && !${target.Equal[self]}
			command:Set["relay \"${This.ResolveTarget["${target.Escape}",${roundrobin}].Escape}\" "]
			
		keymapname:Set["${KeyMapper.ProcessVariables["${keymapname.Escape}"].Escape}"]
		name:Set["${KeyMapper.ProcessVariables["${name.Escape}"].Escape}"]
		if ${conditionalKey.Length} && !${conditionalKey.Equal[NULL]}
		{
			if ${Hold}
			{
				This:AddPressCommand["keymapper -conditionalholdmappedkey \"${conditionalKey.Escape}\" \"${This.ResolveTarget["${target.Escape}",${roundrobin}].Escape}\" \"${keymapname.Escape}\" \"${name.Escape}\""]
				This:AddReleaseCommand["keymapper -conditionalreleasemappedkey \"${conditionalKey.Escape}\" \"${This.ResolveTarget["${target.Escape}",${roundrobin}].Escape}\" \"${keymapname.Escape}\" \"${name.Escape}\""]
			}
			else
			{
				This:AddReleaseCommand["keymapper -conditionalexecutemappedkey \"${conditionalKey.Escape}\" \"${This.ResolveTarget["${target.Escape}",${roundrobin}].Escape}\" \"${keymapname.Escape}\" \"${name.Escape}\""]
			}
		}
		else
		{
			if ${Hold}
			{
				This:AddPressCommand["${command.Escape}keymapper -holdmappedkey \"${keymapname.Escape}\" \"${name.Escape}\""]
				This:AddReleaseCommand["${command.Escape}keymapper -releasemappedkey \"${keymapname.Escape}\" \"${name.Escape}\""]
			}
			else
			{
				This:AddReleaseCommand["${command.Escape}keymapper -executemappedkey \"${keymapname.Escape}\" \"${name.Escape}\""]
			}
		}
	}

	method AddMappedKeyAction(string target, string keymapname, string name, string value, bool _ActionTimer, string _ActionTimerPool, float _ActionTimerSeconds, bool _ActionTimerRecurring)
	{
		variable string command
		if ${target.Length} && !${target.Equal[self]}
			command:Set["relay \"${This.ResolveTarget["${target.Escape}"]}\" "]

		keymapname:Set["${KeyMapper.ProcessVariables["${keymapname.Escape}"].Escape}"]
		name:Set["${KeyMapper.ProcessVariables["${name.Escape}"].Escape}"]
		switch ${value}
		{
		case Toggle
			command:Concat["keymapper -togglemappedkey \"${keymapname.Escape}\" \"${name.Escape}\""]
			break
		case On
			command:Concat["keymapper -loadmappedkey \"${keymapname.Escape}\" \"${name.Escape}\""]
			break
		case Off
			command:Concat["keymapper -unloadmappedkey \"${keymapname.Escape}\" \"${name.Escape}\""]
			break
		}
		if ${_ActionTimer}
			This:AddReleaseCommand["keymapper -addtimer \"${_ActionTimerPool.Escape}\" ${_ActionTimerSeconds} ${_ActionTimerRecurring} \"${command.Escape.Escape}\""]
		else		
			This:AddReleaseCommand["${command.Escape}"]									
	}
	
	method AddMappedKeyStepAction(string target, string keymapname, string mappedkeyname, string action, int value, bool _ActionTimer, string _ActionTimerPool, float _ActionTimerSeconds, bool _ActionTimerRecurring)
	{
		variable string command
		if ${target.Length} && !${target.Equal[self]}
			command:Set["relay \"${This.ResolveTarget["${target.Escape}"]}\" "]
			
		keymapname:Set["${KeyMapper.ProcessVariables["${keymapname.Escape}"].Escape}"]
		mappedkeyname:Set["${KeyMapper.ProcessVariables["${mappedkeyname.Escape}"].Escape}"]

		switch ${action}
		{
		case Add
			command:Concat["keymapper -incstep \"${keymapname.Escape}\" \"${mappedkeyname.Escape}\" \"${value}\""]
			break
		case Set
			command:Concat["keymapper -setstep \"${keymapname.Escape}\" \"${mappedkeyname.Escape}\" \"${value}\""]
			break
		}
		
		if ${_ActionTimer}
			This:AddReleaseCommand["keymapper -addtimer \"${_ActionTimerPool.Escape}\" ${_ActionTimerSeconds} ${_ActionTimerRecurring} \"${command.Escape.Escape}\""]
		else		
			This:AddReleaseCommand["${command.Escape}"]									
	}

	method AddMappedKeyStepStateAction(string target, string keymapname, string mappedkeyname, int numStep, int enable, int stickyTime, int triggerOnce, bool _ActionTimer, string _ActionTimerPool, float _ActionTimerSeconds, bool _ActionTimerRecurring)
	{
		variable string command
		if ${target.Length} && !${target.Equal[self]}
			command:Set["relay \"${This.ResolveTarget["${target.Escape}"]}\" "]
			
		keymapname:Set["${KeyMapper.ProcessVariables["${keymapname.Escape}"].Escape}"]
		mappedkeyname:Set["${KeyMapper.ProcessVariables["${mappedkeyname.Escape}"].Escape}"]

		command:Concat["keymapper -modstep \"${keymapname.Escape}\" \"${mappedkeyname.Escape}\" \"${numStep}\" \"${enable}\" \"${stickyTime}\" \"${triggerOnce}\""]
		
		if ${_ActionTimer}
			This:AddReleaseCommand["keymapper -addtimer \"${_ActionTimerPool.Escape}\" ${_ActionTimerSeconds} ${_ActionTimerRecurring} \"${command.Escape.Escape}\""]
		else		
			This:AddReleaseCommand["${command.Escape}"]									
	}

	method AddMappedKeyRewriteAction(string target, string fromkeymap, string frommappedkey, string tokeymap, string tomappedkey, bool _ActionTimer, string _ActionTimerPool, float _ActionTimerSeconds, bool _ActionTimerRecurring)
	{
		variable string command
		if ${target.Length} && !${target.Equal[self]}
			command:Set["relay \"${This.ResolveTarget["${target.Escape}"]}\" "]

		;name:Set["${KeyMapper.ProcessVariables["${name.Escape}"].Escape}"]
			
		command:Concat["keymapper -rewritemappedkey \"${fromkeymap.Escape}\" \"${frommappedkey.Escape}\" \"${tokeymap.Escape}\" \"${tomappedkey.Escape}\""]
		
		if ${_ActionTimer}
			This:AddReleaseCommand["keymapper -addtimer \"${_ActionTimerPool.Escape}\" ${_ActionTimerSeconds} ${_ActionTimerRecurring} \"${command.Escape.Escape}\""]
		else		
			This:AddReleaseCommand["${command.Escape}"]
	}
	
	method AddRepeaterStateAction(string target, string mousestate, string keyboardstate, int videofeedstate, int videosourcewidth, int videosourceheight, int videooutputwidth, int videooutputheight, int videooutputalpha, string videooutputbordercolor)
	{
		variable string command
		if ${target.Length} && !${target.Equal[self]}
			command:Set["relay \"${This.ResolveTarget["${target.Escape}"]}\" "]

		command:Concat["repeater"]
		switch ${mousestate}
		{
		case Toggle
			command:Concat[" mousetoggle"]
			break
		case On
			command:Concat[" mouseon"]
			break
		case Off
			command:Concat[" mouseoff"]
			break
		}

		switch ${keyboardstate}
		{
		case Toggle
			command:Concat[" keytoggle"]
			break
		case On
			command:Concat[" keyon"]
			break
		case Off
			command:Concat[" keyoff"]
			break
		}

		;int videofeedstate, int videosourcewidth, int videosourceheight, int videooutputwidth, int videooutputheight, int videooutputalpha, string videooutputbordercolor
		if ${videosourcewidth} && ${videosourceheight}
		{
			command:Concat[" mousevideosourcesize ${videosourcewidth},${videosourceheight}"]
		}

		if ${videooutputwidth} && ${videooutputheight}
		{
			command:Concat[" mousevideooutputsize ${videooutputwidth},${videooutputheight}"]
		}

		if ${videooutputalpha}>=0
		{
			command:Concat[" mousevideooutputopacity ${videooutputalpha}"]
		}

		if ${videooutputbordercolor.Length}>=6
		{
			command:Concat[" mousevideooutputborder \"${videooutputbordercolor.Escape}\""]
		}

		switch ${videofeedstate}
		{
		case 1
			command:Concat[" mousevideo"]			
			break
		case 0
			command:Concat[" nomousevideo"]			
			break
		}

		This:AddReleaseCommand["${command.Escape}"]									
	}
	
	method AddRepeaterRegionsAction(string action, string value, bool _ActionTimer, string _ActionTimerPool, float _ActionTimerSeconds, bool _ActionTimerRecurring)
	{
		variable string command

		switch ${action}
		{
		case Load
			value:Set["${KeyMapper.ProcessVariables["${value.Escape}"].Escape}"]
			command:Concat["relay all \"ISBoxerUI:LoadMyRepeaterRegions[\"${value.Escape}\"]\""]
			break
		case Clear
			command:Concat["relay all ISBoxerUI:ClearRepeaterRegions"]
			break
		}	

		if ${_ActionTimer}
			This:AddReleaseCommand["keymapper -addtimer \"${_ActionTimerPool.Escape}\" ${_ActionTimerSeconds} ${_ActionTimerRecurring} \"${command.Escape.Escape}\""]
		else		
			This:AddReleaseCommand["${command.Escape}"]									

	}
	
	method AddTargetGroupAction(string target, string action, string value, bool _ActionTimer, string _ActionTimerPool, float _ActionTimerSeconds, bool _ActionTimerRecurring)
	{
		if ${ISBoxerSingleWindowControl}		
		{
				ISBoxerUI:Echo["\aySingle Window Control Mode: Ignoring Target Group Action entirely\ax"]
				return
		}

		variable string command
		if ${target.Length} && !${target.Equal[self]}
			command:Set["relay \"${This.ResolveTarget["${target.Escape}"]}\" "]

		value:Set["${KeyMapper.ProcessVariables["${value.Escape}"].Escape}"]
		command:Concat["uplink relaygroup -${action} \"${value.Escape}\""]
		
		if ${_ActionTimer}
			This:AddReleaseCommand["keymapper -addtimer \"${_ActionTimerPool.Escape}\" ${_ActionTimerSeconds} ${_ActionTimerRecurring} \"${command.Escape.Escape}\""]
		else		
			This:AddReleaseCommand["${command.Escape}"]									
	}

	method AddTimerPoolAction(string target, string action, string value)
	{
		variable string command
		if ${target.Length} && !${target.Equal[self]}
			command:Set["relay \"${This.ResolveTarget["${target.Escape}"]}\" "]

		switch ${action}
		{
		case Reset
			command:Concat["keymapper -resettimerpool \"${value.Escape}\""]
			break
		}
		
		This:AddReleaseCommand["${command.Escape}"]									
	}

	method AddVideoFeedsAction(string target, string action, string value, bool issource, int x, int y, int width, int height, int alpha, string bordercolor, string use_mouse, bool use_keyboard, string keymapname, string mappedkeyname, bool _ActionTimer, string _ActionTimerPool, float _ActionTimerSeconds, bool _ActionTimerRecurring, bool use_focus_hotkey)
	{
		variable string command
		if ${target.Length} && !${target.Equal[self]}
			command:Set["relay \"${This.ResolveTarget["${target.Escape}"]}\" "]
		
		value:Set["${KeyMapper.ProcessVariables["${value.Escape}"].Escape}"]
		keymapname:Set["${KeyMapper.ProcessVariables["${keymapname.Escape}"].Escape}"]
		mappedkeyname:Set["${KeyMapper.ProcessVariables["${mappedkeyname.Escape}"].Escape}"]

		switch ${action}
		{
        case Load
			command:Concat["isboxervideofeeds Load \"${value.Escape}\""]
			break
        case Clear
			command:Concat["isboxervideofeeds Clear"]
			break
        case Show
			command:Concat["isboxervideofeeds Show \"${value.Escape}\""]
			break
        case Hide
			command:Concat["isboxervideofeeds Hide \"${value.Escape}\""]
			break
        case Add
			command:Concat["isboxervideofeeds Add \"${value.Escape}\" ${issource} ${x} ${y} ${width} ${height} ${alpha} \"${bordercolor.Escape}\" ${use_mouse} ${use_keyboard} \"${keymapname.Escape}\" \"${mappedkeyname.Escape}\" ${use_focus_hotkey}"]
			break
        case Remove
			command:Concat["isboxervideofeeds Remove \"${value.Escape}\" ${issource}"]
			break
		default
			echo \ayAddVideoFeedsAction: Unrecognized instruction '${action.Escape}'
			return
		}		

		if ${_ActionTimer}
			This:AddReleaseCommand["keymapper -addtimer \"${_ActionTimerPool.Escape}\" ${_ActionTimerSeconds} ${_ActionTimerRecurring} \"${command.Escape.Escape}\""]
		else		
			This:AddReleaseCommand["${command.Escape}"]
	}

	method AddSendNextClickAction(string target, bool blocklocal, bool roundrobin, bool usevideofeed, int videosourcewidth, int videosourceheight, int videooutputwidth, int videooutputheight, int videooutputalpha, string videooutputbordercolor)
	{
		if ${ISBoxerSingleWindowControl}		
		{
			if ${roundrobin}
			{
				ISBoxerUI:Echo["\aySingle Window Control Mode: Allowing Round-Robin Target of '${target.Escape}' on Send Next Click Action\ax"]
			}
			elseif ${target.Find["all"]} || ${target.Find["other"]}
			{
				ISBoxerUI:Echo["\aySingle Window Control Mode: Enforcing Target of 'self' on Send Next Click Action\ax"]
				target:Set["self"]
			}
			else
			{
				ISBoxerUI:Echo["\aySingle Window Control Mode: Allowing Target of '${target.Escape}' on Send Next Click Action\ax"]
			}
		}

		if !${usevideofeed}
			This:AddReleaseCommand["noop \${MouseRepeater:SendNextClick[\"${This.ResolveTarget["${target.Escape}",${roundrobin}].Escape}\",\"${Name.Escape}_${target.Escape}\",${blocklocal}]}"]
		else
			This:AddReleaseCommand["noop \${MouseRepeater:SendNextClick[\"${This.ResolveTarget["${target.Escape}",${roundrobin}].Escape}\",\"${Name.Escape}_${target.Escape}\",${blocklocal},${usevideofeed},${videosourcewidth},${videosourceheight},${videooutputwidth},${videooutputheight},${videooutputalpha},\"${videooutputbordercolor.Escape}\"]}"]
	}

	method AddRepeaterTargetAction(string target, string repeatertarget, bool blocklocal)
	{
		if ${ISBoxerSingleWindowControl}		
		{
			if ${repeatertarget.Find["all"]} || ${repeatertarget.Find["other"]}
			{
				ISBoxerUI:Echo["\aySingle Window Control Mode: Enforcing Repeater Target of 'self' on Repeater Target Action\ax"]
				target:Set["self"]
			}
			else
			{
				ISBoxerUI:Echo["\aySingle Window Control Mode: Allowing Repeater Target of '${repeatertarget.Escape}' on Repeater Target Action\ax"]
			}
		}

		variable string command
		if ${target.Length} && !${target.Equal[self]}
			command:Set["relay \"${This.ResolveTarget["${target.Escape}"]}\" "]

		command:Concat["repeatertarget \"${This.ResolveTarget["${repeatertarget.Escape}"]}\" ${blocklocal}"]
		This:AddReleaseCommand["${command.Escape}"]
	}
	
	method AddRepeaterListAction(string target, string listtype, string name)
	{
		variable string command
		if ${target.Length} && !${target.Equal[self]}
			command:Set["relay \"${This.ResolveTarget["${target.Escape}"]}\" "]
		
		if !${name.Length}
		{
			command:Concat["repeater -nolist"]
		}
		else
		{
			switch ${listtype}
			{
			case Ignore
				command:Concat["repeater -nolist"]
				break
			case WhiteList
				command:Concat["repeater -whitelist \"${name.Escape}\""]
				break
			case BlackList
				command:Concat["repeater -blacklist \"${name.Escape}\""]
				break
			}
		}
		
		This:AddReleaseCommand["${command.Escape}"]									
	}
	
	method AddSyncCursorAction(string target,bool roundrobin)
	{
		if ${Hold}
			This:AddPressCommand["repeater synccursor \"${This.ResolveTarget["${target.Escape}",${roundrobin}].Escape}\""]
		else
			This:AddReleaseCommand["repeater synccursor \"${This.ResolveTarget["${target.Escape}",${roundrobin}].Escape}\""]
	}
	
	method AddWindowStateAction(string target,string regiontype,string action,bool deactivateothers)
	{
		variable string command
		if ${target.Length} && !${target.Equal[self]}
			command:Set["relay \"${This.ResolveTarget["${target.Escape}"]}\" "]
		
		if ${deactivateothers} && ${regiontype.Equal[Foreground]}
		{
			command:Concat["snapset -activate -deactivateothers"]
		}
		else
		{
			command:Concat["snapset -state ${regiontype} ${action}"]
		}
		
		This:AddReleaseCommand["${command.Escape}"]									
	}
	
	method AddWindowCloseAction(string target,string action)
	{
		variable string command
		if ${target.Length} && !${target.Equal[self]}
			command:Set["relay \"${This.ResolveTarget["${target.Escape}"]}\" "]
		
		switch ${action}
		{
		case Normal
			; sends WM_CLOSE
			command:Concat["Display.Window:PostMessage[16]"]
			break
		case Terminate
			command:Concat["exit"]
			break
		default
			return
		}
		This:AddReleaseCommand["${command.Escape}"]									
	}

	method AddScreenshotAction(string target, string filetemplate, bool useDirectX, bool useRect, bool clientCoords, int x, int y, int width, int height, bool _ActionTimer, string _ActionTimerPool, float _ActionTimerSeconds, bool _ActionTimerRecurring)
	{
		variable string command
		if ${target.Length} && !${target.Equal[self]}
			command:Set["relay \"${This.ResolveTarget["${target.Escape}"]}\" "]

		; filetemplate:Set["${KeyMapper.ProcessVariables["${filetemplate.Escape}"].Escape}"]

		; keymapper_screenshot(string filetemplate, bool useDirectX, bool useRect, bool clientCoords, int x, int y, int width, int height)

		command:Concat["keymapper_screenshot \"${filetemplate}\" ${useDirectX} ${useRect} ${clientCoords} ${x} ${y} ${width} ${height}"]
		
		if ${_ActionTimer}
			This:AddReleaseCommand["keymapper -addtimer \"${_ActionTimerPool.Escape}\" ${_ActionTimerSeconds} ${_ActionTimerRecurring} \"${command.Escape.Escape}\""]
		else		
			This:AddReleaseCommand["${command.Escape}"]
	}

	method AddWindowStyleAction(string target, string regiontype, bool useposition, int x, int y, bool usesize, int width, int height, bool usealwaysontop, string alwaysontop, bool usesometimesontop, string sometimesontop, bool usenewframe, string newframe)
	{
		variable string command
		if ${target.Length} && !${target.Equal[self]}
			command:Set["relay \"${This.ResolveTarget["${target.Escape}"]}\" "]
		
		command:Concat["snapstyle -${regiontype} "]
		if ${useposition}
			command:Concat["-position ${x} ${y} "]
		if ${usesize}
			command:Concat["-size ${width} ${height} "]
		if ${usealwaysontop}
			command:Concat["-alwaysontop ${alwaysontop.Escape} "]
		if ${usesometimesontop}
			command:Concat["-sometimesontop ${sometimesontop.Escape} "]
		if ${usenewframe}
			command:Concat["${newframe.Escape} "]		
		
		This:AddReleaseCommand["${command.Escape}"]									
	}

	method AddWindowFocusAction(string uplink, string window, string target)
	{
		variable string command
		if ${window.Length}
		{
			if ${uplink.Length} && ${uplink.NotEqual[NULL]}
				command:Set["relay \"${uplink}\" "]
			else
				command:Set["uplink "]

			if ${target.Length} && !${target.Equal[NULL]}
			{
				if !${target.Equal[self]}
				{
					command:Concat["isboxerfocus \"${window.Escape}\" \"${This.ResolveTarget["${target.Escape}"]}\""]
				}
				else
				{
					command:Concat["isboxerfocus \"${window.Escape}\" \"${This.ResolveTarget["${Session.Escape}"]}\""]
				}
			}
			else
			{
				command:Concat["isboxerfocus \"${window.Escape}\""]
			}
		}
		else
		{
			if ${target.Length} && !${target.Equal[self]}
				command:Set["relay \"${This.ResolveTarget["${target.Escape}"]}\" isboxerfocusme"]
			else
				command:Set["isboxerfocusme"]
		}
		This:AddReleaseCommand["${command.Escape}"]					
	}
	
	method AddSoundAction(string uplink, string filename, bool _ActionTimer, string _ActionTimerPool, float _ActionTimerSeconds, bool _ActionTimerRecurring)
	{
		variable string command
		if ${uplink.Length} && ${uplink.NotEqual[NULL]}
			command:Set["relay \"${uplink}\" "]
		else
			command:Set["uplink "]
		command:Concat["playsound \"${filename.Escape}\""]

		if ${_ActionTimer}
			This:AddReleaseCommand["keymapper -addtimer \"${_ActionTimerPool.Escape}\" ${_ActionTimerSeconds} ${_ActionTimerRecurring} \"${command.Escape.Escape}\""]
		else		
			This:AddReleaseCommand["${command.Escape}"]
	}

	method AddInputDeviceKeySetAction(string target, string devicename, string keysetname)
	{
		variable string command
		if ${target.Length} && !${target.Equal[self]}
			command:Set["relay \"${This.ResolveTarget["${target.Escape}"]}\" keymapper_inputdevicekeyset \"${devicename.Escape}\" \"${keysetname.Escape}\""]
		else
			command:Set["keymapper_inputdevicekeyset \"${devicename.Escape}\" \"${keysetname.Escape}\""]		
		
		This:AddReleaseCommand["${command.Escape}"]
	}

	method AddKeyStringAction(string target, string text, bool fill_clipboard)
	{
		if ${ISBoxerSingleWindowControl}		
		{
			if ${target.Find["all"]} || ${target.Find["other"]}
			{
				ISBoxerUI:Echo["\aySingle Window Control Mode: Enforcing Target of 'self' on Key String Action\ax"]
				target:Set["self"]
			}
			else
			{
				ISBoxerUI:Echo["\aySingle Window Control Mode: Allowing Target of '${repeatertarget.Escape}' on Key String Action\ax"]
			}
		}

		text:Set["${KeyMapper.ProcessVariables["${text.Escape}"].Escape}"]
		variable string command
		if ${target.Length} && !${target.Equal[self]}
			command:Set["relay \"${This.ResolveTarget["${target.Escape}"]}\" keymapper_pastetext \"${text.Escape}\" ${fill_clipboard}"]
		else
			command:Set["keymapper_pastetext \"${text.Escape}\" ${fill_clipboard}"]

;			command:Set["noop \${Display.Window:Paste["${text.Escape}"]}"]
		
		This:AddReleaseCommand["${command.Escape}"]
	}
	
	;"${Iterator.Value.FindAttribute[ActionTimer].String.Equal[true]}","${Iterator.Value.FindAttribute[ActionTimerPool].String.Escape}","${Iterator.Value.FindAttribute[ActionTimerSeconds].String.Escape}","${Iterator.Value.FindAttribute[ActionTimerRecurring].String.Equal[true]}"
	method AddPopupTextAction(string target, string text, uint durationms, uint fadems, string color, bool _ActionTimer, string _ActionTimerPool, float _ActionTimerSeconds, bool _ActionTimerRecurring)
	{
		text:Set["${KeyMapper.ProcessVariables["${text.Escape}"].Escape}"]
		variable string command
		if ${target.Length} && !${target.Equal[self]}
			command:Set["relay \"${This.ResolveTarget["${target.Escape}"]}\" keymapper_popuptext \"${text.Escape}\" ${durationms} ${fadems} \"FF${color.Escape}\""]
		else
			command:Set["keymapper_popuptext \"${text.Escape}\" ${durationms} ${fadems} \"FF${color.Escape}\""]
;			command:Set["noop \${ISBoxerUI:PopupText["${text.Escape}",${durationms},${fadems},"FF${color.Escape}"]}"]		

		;string _TimerPool, float _Seconds, bool _Recurring, string _TimerCommand
		if ${_ActionTimer}
			This:AddReleaseCommand["keymapper -addtimer \"${_ActionTimerPool.Escape}\" ${_ActionTimerSeconds} ${_ActionTimerRecurring} \"${command.Escape.Escape}\""]
		else		
			This:AddReleaseCommand["${command.Escape}"]							
	}

	method AddWindowSnapperZoomAction(string target, float scale, bool _ActionTimer, string _ActionTimerPool, float _ActionTimerSeconds, bool _ActionTimerRecurring)
	{
		variable string command
		if ${target.Length} && !${target.Equal[self]}
			command:Set["relay \"${This.ResolveTarget["${target.Escape}"]}\" "]

		command:Concat["snapset -zoom ${scale}"]		
		
		This:AddReleaseCommand["${command.Escape}"]							
	}

	method CreateAlias()
	{
		if ${InnerSpace.Build}>=5463
		{
			if ${Hold}
			{
				if ${PressCmd.Length}
					LavishScript:RegisterAlias["${Name.Escape}_press","${PressCmd.Escape}"]
				else
					LavishScript:RegisterAlias["${Name.Escape}_press","noop"]
			}
			if ${ReleaseCmd.Length}
				LavishScript:RegisterAlias["${Name.Escape}_release","${ReleaseCmd.Escape}"]
			else
				LavishScript:RegisterAlias["${Name.Escape}_release","noop"]
		}
		else
		{
			if ${Hold}
			{
				if ${PressCmd.Length}
					execute squelch alias "${Name.Escape}_press" "${PressCmd.Escape}"
				else
					execute squelch alias "${Name.Escape}_press" "noop"
			}
			if ${ReleaseCmd.Length}
				execute squelch alias "${Name.Escape}_release" "${ReleaseCmd.Escape}"
			else
				execute squelch alias "${Name.Escape}_release" "noop"			
		}
	}

	method CreateBind()
	{
		if ${PressCmd.Length}
		{
			Input:Bind[-press,"${Name.Escape}","${Hotkey.Escape}","${PressCmd.Escape}"]			
		}
		if ${ReleaseCmd.Length}
		{
			if ${SendNextClick.Length}
			{
				if ${SendNextClick.Equal[${Int[${SendNextClick}]}]}
					Input:Bind[-release,"${Name.Escape}","${Hotkey.Escape}","${ReleaseCmd.Escape};noop \${MouseRepeater:SendNextClick[\"is${SendNextClick}\",\"${Name.Escape}\",${SendNextClickBlockLocal}]}"]
				else
					Input:Bind[-release,"${Name.Escape}","${Hotkey.Escape}","${ReleaseCmd.Escape};noop \${MouseRepeater:SendNextClick[\"${SendNextClick}\",\"${Name.Escape}\",${SendNextClickBlockLocal}]}"]
			}
			else
			{
				Input:Bind[-release,"${Name.Escape}","${Hotkey.Escape}","${ReleaseCmd.Escape}"]
			}
		}
		else
		{
			if ${SendNextClick.Length}
			{
				if ${SendNextClick.Equal[${Int[${SendNextClick}]}]}
					Input:Bind[-release,"${Name.Escape}","${Hotkey.Escape}","noop \${MouseRepeater:SendNextClick[\"is${SendNextClick}\",\"${Name.Escape}\",${SendNextClickBlockLocal}]}"]
				else
					Input:Bind[-release,"${Name.Escape}","${Hotkey.Escape}","noop \${MouseRepeater:SendNextClick[\"${SendNextClick}\",\"${Name.Escape}\",${SendNextClickBlockLocal}]}"]
			}
			else
			{
				Input:Bind[-release,"${Name.Escape}","${Hotkey.Escape}","noop"]
			}
		}
		if !${Input.Bind["${Name.Escape}"](exists)} && ${Hotkey.NotEqual[none]}
		{
			Hotkey:Set[none]
			This:CreateBind
		}
	}
}

objectdef rememberedmappedkey
{
	method Initialize(string target, string mappedkey)
	{
		MappedKeyTarget:Set["${target.Escape}"]
		MappedKey:Set["${mappedkey.Escape}"]
	}

	variable string MappedKeyTarget
	variable string MappedKey
	
	member ToText()
	{
		return "'${MappedKey.Escape}'" -> "'${MappedKeyTarget.Escape}'"
	}
	
}

objectdef variablekeystroke
{
	method Initialize(string name, string newValue, string category, string subCategory, string description)
	{
		This.Name:Set["${name.Escape}"]
		This.Category:Set["${category.Escape}"]
		This.SubCategory:Set["${subCategory.Escape}"]
		This.Description:Set["${description.Escape}"]
		This.Keystroke:Set["${newValue.Escape}"]
	}

	variable string Name
	variable string Category
	variable string SubCategory
	variable string Description

	variable string Keystroke

	method Press(string source, string ftlModifiers)
	{
		if !${This.Keystroke.Length}
			return
		remotebutton "${source.Escape}" nomodifiers "${ftlModifiers.Escape}${This.Keystroke.Escape}"
	}

	method Hold(string source, string ftlModifiers)
	{
		if !${This.Keystroke.Length}
			return
		remotebutton "${source.Escape}" hold "${ftlModifiers.Escape}${This.Keystroke.Escape}"
	}

	method Release(string source, string ftlModifiers)
	{
		if !${This.Keystroke.Length}
			return
		remotebutton "${source.Escape}" release "${ftlModifiers.Escape}${This.Keystroke.Escape}"
	}

	method Dump()
	{
		echo "${This.Name.Escape} = \"${This.Keystroke}\""
		echo " ^- ${Category} - ${SubCategory} - ${Description}"
	}
}

objectdef keymapper
{
	variable settingsetref ListRoot
	variable string FTLModifiers
	variable set LoadedMaps

	variable set BlackListSet
	variable set WhiteListSet
	variable bool UseWhiteList

	variable collection:stepresethandler ResetHandler
	variable collection:rememberedmappedkey RememberedMappedKeys
	variable collection:mappedkeyref MappedKeyRewrites
	variable collection:timerpool TimerPools
	variable collection:variablekeystroke VariableKeystrokes
	variable collection:string CustomVars

;	variable collection:uint NamedStepCounters
;	variable stack StepCounterStack

	method Initialize()
	{
		LavishSettings:AddSet[KeyMapper]
		ListRoot:Set[${LavishSettings.FindSet["KeyMapper"]}]

		LavishScript:RegisterEvent["VariableKeystrokeAdded"]
	}

	method Shutdown()
	{
		UIElement[vktree@variable keystrokes@tabs@isboxermain].Root:RemoveChildren
		ListRoot:Remove
		squelch alias -delete keymapper_*
		squelch bind -delete keymapper_*
		echo Keymapper: Key maps unloaded.
	}

	member:string DateTime()
	{
		return "${Time.Year}-${Time.Month.LeadingZeroes[2]}-${Time.Day.LeadingZeroes[2]}.${Time.Hour.LeadingZeroes[2]}${Time.Minute.LeadingZeroes[2]}.${Time.Second.LeadingZeroes[2]}"
	}

	member:string ProcessVariables(string txt)
	{
		variable string Out
		variable string Var
;		echo ${txt}
		variable int brace
		variable int count

		brace:Set[${txt.Find["{"]}]

		while ${brace}>0
		{		
			count:Inc
			if ${count}>50
				break
;			echo brace=${brace}
			brace:Dec
			if ${brace}
			{
				Out:Concat["${txt.Left[${brace}].Escape}"]			

				txt:Set["${txt.Right[-${brace}].Escape}"]
			}

			brace:Set[${txt.Find["}"]}]
			if !${brace}
			{
				break
			}
			Var:Set["${txt.Left[${brace}].Escape}"]
			Var:Set["${Var.Mid[2,${Var.Length:Dec[2]}].Escape}"]
			txt:Set["${txt.Right[-${brace}].Escape}"]

			if ${CustomVars.Element["${Var.Escape}"](exists)}
			{
				Out:Concat["${CustomVars.Element["${Var.Escape}"].Escape}"]
			}
			else
			{
				switch ${Var}
				{
				case DATETIME
					Out:Concat["${This.DateTime}"]
					break
				case SLOT
					Out:Concat["${ISBoxerSlot}"]
					break
				case CHARACTER
					Out:Concat["${ISBoxerCharacter}"]
					break
				case CHARACTERSET
					Out:Concat["${ISBoxerCharacterSet}"]
					break
				default
					Out:Concat["{${Var.Escape}}"]
					break
				}
			}

;			echo Var=${Var.Escape} Out=${Out.Escape}   txt=${txt.Escape}

			brace:Set[${txt.Find["{"]}]
		}

		Out:Concat["${txt.Escape}"]

		return "${Out.Escape}"
	}

	member:string ProcessVariablesOld(string txt)
	{
		variable int i
		
		while ${i:Set[${txt.Find["{SLOT}"]}]}
		{
			if ${i}>1
				txt:Set["${txt.Left[${Math.Calc[${i}-1]}].Escape}${ISBoxerSlot}${txt.Right[-${Math.Calc[5+${i}]}]}"]
			else
				txt:Set["${ISBoxerSlot}${txt.Right[-${Math.Calc[5+${i}]}]}"]
		}

		while ${i:Set[${txt.Find["{CHARACTER}"]}]}
		{
			if ${i}>1
				txt:Set["${txt.Left[${Math.Calc[${i}-1]}].Escape}${ISBoxerCharacter}${txt.Right[-${Math.Calc[10+${i}]}]}"]
			else
				txt:Set["${ISBoxerCharacter}${txt.Right[-${Math.Calc[10+${i}]}]}"]
		}

		while ${i:Set[${txt.Find["{CHARACTERSET}"]}]}
		{
			if ${i}>1
				txt:Set["${txt.Left[${Math.Calc[${i}-1]}].Escape}${ISBoxerCharacterSet}${txt.Right[-${Math.Calc[13+${i}]}]}"]
			else
				txt:Set["${ISBoxerCharacterSet}${txt.Right[-${Math.Calc[13+${i}]}]}"]
		}

		while ${i:Set[${txt.Find["{DATETIME}"]}]}
		{
			if ${i}>1
				txt:Set["${txt.Left[${Math.Calc[${i}-1]}].Escape}${This.DateTime}${txt.Right[-${Math.Calc[9+${i}]}]}"]
			else
				txt:Set["${This.DateTime}${txt.Right[-${Math.Calc[9+${i}]}]}"]
		}

		return "${txt.Escape}"
	}

; Variable Keystrokes --------------------------------------------

	method PressVariable(string name, string ftlModifiers, string source)
	{
		name:Set["${This.ProcessVariables["${name.Escape}"].Escape}"]
		This.VariableKeystrokes.Element["${name.Escape}"]:Press["${source.Escape}","${ftlModifiers.Escape}"]
	}

	method ReleaseVariable(string name, string ftlModifiers, string source)
	{
		name:Set["${This.ProcessVariables["${name.Escape}"].Escape}"]
		This.VariableKeystrokes.Element["${name.Escape}"]:Release["${source.Escape}","${ftlModifiers.Escape}"]
	}

	method HoldVariable(string name, string ftlModifiers, string source)
	{
		name:Set["${This.ProcessVariables["${name.Escape}"].Escape}"]
		This.VariableKeystrokes.Element["${name.Escape}"]:Hold["${source.Escape}","${ftlModifiers.Escape}"]
	}

	method SetCustomVariable(string name, string newvalue)
	{
		This.CustomVars:Set["${name.Escape}","${newvalue.Escape}"]
	}

	method UnsetCustomVariable(string name)
	{
		This.CustomVars:Erase["${name.Escape}"]
	}

	method SetVariable(string name, string newValue)
	{
		ISBoxerUI:DebugOut["Variable Keystroke","Setting ${name.Escape} to \"${newValue.Escape}\""]
		This.VariableKeystrokes.Element["${name.Escape}"].Keystroke:Set["${newValue.Escape}"]
	}

	method DefineVariable(string name, string newValue, string category, string subCategory, string description)
	{
		ISBoxerUI:DebugOut["Variable Keystroke","Defining ${name.Escape} with default value \"${newValue.Escape}\""]
		This.VariableKeystrokes:Set["${name.Escape}","${name.Escape}","${newValue.Escape}","${category.Escape}","${subCategory.Escape}","${description.Escape}"]
		Event[VariableKeystrokeAdded]:Execute["${name.Escape}","${newValue.Escape}","${category.Escape}","${subCategory.Escape}","${description.Escape}"]

	}

	method DumpVariables()
	{
		variable iterator Iterator

		This.VariableKeystrokes:GetIterator[Iterator]
		
		if !${Iterator:First(exists)}
		{
			echo "DumpVariables: No variables defined."
			return
		}		
		
		echo "Dumping ${This.VariableKeystrokes.Used} variable keystrokes:\n------------------------------------------"
		do
		{
			Iterator.Value:Dump
		}
		while ${Iterator:Next(exists)}

	}

; Timer Pools ----------------------------------------------------

	method AddTimerPool(string _PoolName, uint _Size, bool _backEndRemoval)
	{
;		echo AddTimerPool name=${_PoolName.Escape} size=${_Size}
		This.TimerPools:Erase["${_PoolName.Escape}"]
		This.TimerPools:Set["${_PoolName.Escape}","${_PoolName.Escape}",${_Size},${_backEndRemoval}]
	}

	method ResetTimerPool(string _PoolName)
	{
		if !${This.TimerPools.Element["${_PoolName.Escape}"](exists)}
		{
			ISBoxerUI:DebugOut["Timer Pool","Pool '${_PoolName.Escape}' not found for reset"]
			return
		}
		This:AddTimerPool["${_PoolName.Escape}",${This.TimerPools.Element["${_PoolName.Escape}"].Size},${This.TimerPools.Element["${_PoolName.Escape}"].BackEndRemoval}]
	}

	method AddTimer(string _TimerPool, float _Seconds, bool _Recurring, string _TimerCommand)
	{
;		echo This.TimerPools.Element["${_TimerPool.Escape}"]:Insert[${_Seconds},${_Recurring},"${_TimerCommand.Escape.Escape}"]
		This.TimerPools.Element["${_TimerPool.Escape}"]:Insert[${_Seconds},${_Recurring},"${_TimerCommand.Escape}"]
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


	method RewriteMappedKey(string fromkeymap, string frommappedkey, string tokeymap, string tomappedkey)
	{
		if ${frommappedkey.Equal[NULL]}
			 frommappedkey:Set[""]
		if ${tomappedkey.Equal[NULL]}
			 tomappedkey:Set[""]
		if ${fromkeymap.Equal[NULL]}
			 fromkeymap:Set[""]
		if ${tokeymap.Equal[NULL]}
			 tokeymap:Set[""]

		if !${frommappedkey.Length}
		{
			/* Key Map only */

			if ${fromkeymap.Equal["${tokeymap.Escape}"]}
			{
				MappedKeyRewrites:Erase["${fromkeymap.Replace[" ","_",";","?",":","_",",","_","[","lb_"].Escape}(keymap)"]
				return
			}
			
			MappedKeyRewrites:Set["${fromkeymap.Replace[" ","_",";","?",":","_",",","_","[","lb_"].Escape}(keymap)","${tokeymap.Escape}","${tomappedkey.Escape}"]
			return
		}

		if ${fromkeymap.Equal["${tokeymap.Escape}"]} && ${frommappedkey.Equal[${tomappedkey.Escape}]}
		{
			MappedKeyRewrites:Erase["${fromkeymap.Replace[" ","_",";","?",":","_",",","_","[","lb_"].Escape}(keymap)_${frommappedkey.Replace[" ","_",";","?",":","_",",","_","[","lb_"].Escape}"]
			return
		}
			
		MappedKeyRewrites:Set["${fromkeymap.Replace[" ","_",";","?",":","_",",","_","[","lb_"].Escape}(keymap)_${frommappedkey.Replace[" ","_",";","?",":","_",",","_","[","lb_"].Escape}","${tokeymap.Escape}","${tomappedkey.Escape}"]
;		echo MappedKeyRewrites:Set["${fromkeymap.Replace[" ","_",";","?",":","_",",","_","[","lb_"].Escape}(keymap)_${frommappedkey.Replace[" ","_",";","?",":","_",",","_","[","lb_"].Escape}","${tokeymap.Escape}","${tomappedkey.Escape}"]
	}
	
	method UnrewriteMappedKey(string fromkeymap, string frommappedkey)
	{
		if !${frommappedkey.Length}
		{
			MappedKeyRewrites:Erase["${keymapname.Replace[" ","_",";","?",":","_",",","_","[","lb_"].Escape}(keymap)"]
			return
		}

		MappedKeyRewrites:Erase["${keymapname.Replace[" ","_",";","?",":","_",",","_","[","lb_"].Escape}(keymap)_${mappedkeyname.Replace[" ","_",";","?",":","_",",","_","[","lb_"].Escape}"]
	}

	method UpdateFTLModifiers()
	{
		variable settingsetref ftlSet
		variable int nSession=${Session.Right[-2]}

		ftlSet:Set[${ListRoot.FindSet["FTL Modifiers"]}]
		if !${ftlSet.Children(exists)}
			return
		
		if ${ftlSet.FindSetting[${nSession}](exists)}
		{
			This:SetFTLModifiers["${ftlSet.FindSetting[${nSession}].String.Escape}"]
		}
		else
		{
			FTLModifiers:Set[""]
		}
	}

	method SetFTLModifiers(string mods)
	{
		FTLModifiers:Set["${mods.Escape}"]
		if ${FTLModifiers.Length}
		{
			if ${FTLModifiers.Right[1].NotEqual["+"]}
				FTLModifiers:Concat["+"]
		}
		echo Keymapper: FTLModifiers=${FTLModifiers.Escape}
	}

	method Import(string filename)
	{
		echo Keymapper: Importing key maps from '\at${filename}\ay'
		if !${ListRoot:Import["${filename.Escape}"](exists)}
		{
			echo Keymapper: Reading of file '\at${filename}\ay' \arfailed\ax. It either doesn't exist at the given location, or is invalid XML.
			return
		}
		This:UpdateFTLModifiers
	}

	member:bool KeyMapAllowed(string name)
	{
		if ${BlackListSet.Contains["${name.Escape}"]}
			return 0

		if ${UseWhiteList} && !${WhiteListSet.Contains["${name.Escape}"]}
			return 0
		return 1
	}

	method ToggleKeyMap(string name)
	{
		if ${LoadedMaps.Contains["${name.Escape}"]}
			This:UnloadKeyMap["${name.Escape}"]
		else
			This:LoadKeyMap["${name.Escape}"]
	}
	
	method ToggleMappedKey(string keymapname, string mappedkeyname)
	{	
		if ${Input.Bind["keymapper_${keymapname.Replace[" ","_",";","?",":","_",",","_","[","lb_"].Escape}(keymap)_${mappedkeyname.Replace[" ","_",";","?",":","_",",","_","[","lb_"].Escape}"](exists)}
			This:UnloadMappedKey["${keymapname.Escape}","${mappedkeyname.Escape}"]
		else
			This:LoadMappedKey["${keymapname.Escape}","${mappedkeyname.Escape}"]
	}

	method LoadKeyMap(string name)
	{
		if !${This.KeyMapAllowed["${name.Escape}"]}
		{
			return
		}

		echo Keymapper: Loading key map '\at${name.Escape}\ax'
		ISBoxerUI:DebugOut["Key Map","'${name.Escape}' loaded"]
		This:LoadKeyMapFromSet["${name.Escape}",${ListRoot.FindSet["key maps"].FindSet["${name.Escape}"]}]
	}
	
	method LoadMappedKey(string keymapname, string mappedkeyname)
	{
		if !${This.KeyMapAllowed["${keymapname.Escape}"]}
		{
			return
		}
		This:LoadMappedKeyFromSet["${mappedkeyname.Escape}",${ListRoot.FindSet["key maps"].FindSet["${keymapname.Escape}"]},"${mappedkeyname.Escape}"]
	}
	
	method WhiteList(settingsetref listSet)
	{
		This.UseWhiteList:Set[1]
		variable iterator Iterator

		listSet:GetSettingIterator[Iterator]
		if ${Iterator:First(exists)}
		{
			do
			{
				WhiteListSet:Add["${Iterator.Key.Escape}"]
			}
			while ${Iterator:Next(exists)}
		}
	}

	method BlackList(settingsetref listSet)
	{
		variable iterator Iterator

		listSet:GetSettingIterator[Iterator]
		if ${Iterator:First(exists)}
		{
			do
			{
				BlackListSet:Add["${Iterator.Key.Escape}"]
			}
			while ${Iterator:Next(exists)}
		}
	}

	method LoadAlias(string main, string name, settingsetref loadSet, bool hold, bool useftl, string nextStep, bool enablePress)
	{
		variable bindbuilder bb
		bb.Name:Set["${name.Escape}"]
		bb.Hold:Set[${hold}]
		bb.UseFTLModifiers:Set[${useftl}]
		
		variable iterator Iterator
		loadSet:GetSettingIterator[Iterator]
		if ${Iterator:First(exists)}
		{
			do
			{
				switch ${Iterator.Key}
				{
				case Reset Timer
				case Reset Type
				case Mode
				case Hold
				case Use FTL Modifiers
				case Hotkey
				case Send Next Click
				case Stick
				case Stop
				case Stump
				case Manual Load
				case Disabled
					break
				default
					if ${Iterator.Value.FindAttribute[ActionType](exists)}
					{
						switch ${Iterator.Value.FindAttribute[ActionType]}
						{
						case Keystroke
							bb:AddKeypress["${Iterator.Value.FindAttribute[Target].String.Escape}","${Iterator.Value.String.Escape}","${Iterator.Value.FindAttribute[RoundRobin].String.Equal[true]}","${Iterator.Value.FindAttribute[UseFTLModifiers].String.Equal[true]}"]
							break
						case Light
							bb:AddLightAction["${Iterator.Value.FindAttribute[Computer].String.Escape}","${Iterator.Value.String.Escape}","${Iterator.Value.FindAttribute[Action].String.Escape}","${Iterator.Value.FindAttribute[ActionTimer].String.Equal[true]}","${Iterator.Value.FindAttribute[ActionTimerPool].String.Escape}","${Iterator.Value.FindAttribute[ActionTimerSeconds].String.Escape}","${Iterator.Value.FindAttribute[ActionTimerRecurring].String.Equal[true]}"]
							break
						case KeyMap
							bb:AddKeyMapAction["${Iterator.Value.FindAttribute[Target].String.Escape}","${Iterator.Value.String.Escape}","${Iterator.Value.FindAttribute[Action].String.Escape}","${Iterator.Value.FindAttribute[ActionTimer].String.Equal[true]}","${Iterator.Value.FindAttribute[ActionTimerPool].String.Escape}","${Iterator.Value.FindAttribute[ActionTimerSeconds].String.Escape}","${Iterator.Value.FindAttribute[ActionTimerRecurring].String.Equal[true]}"]
							break
						case MappedKey
							bb:AddMappedKeyAction["${Iterator.Value.FindAttribute[Target].String.Escape}","${Iterator.Value.FindAttribute[KeyMap].String.Escape}","${Iterator.Value.String.Escape}","${Iterator.Value.FindAttribute[Action].String.Escape}","${Iterator.Value.FindAttribute[ActionTimer].String.Equal[true]}","${Iterator.Value.FindAttribute[ActionTimerPool].String.Escape}","${Iterator.Value.FindAttribute[ActionTimerSeconds].String.Escape}","${Iterator.Value.FindAttribute[ActionTimerRecurring].String.Equal[true]}"]
							break
						case DoMappedKey
							bb:AddDoMappedKeyAction["${Iterator.Value.FindAttribute[Target].String.Escape}","${Iterator.Value.FindAttribute[KeyMap].String.Escape}","${Iterator.Value.String.Escape}","${Iterator.Value.FindAttribute[RoundRobin].String.Equal[true]}","${Iterator.Value.FindAttribute[ConditionalKey].String.Escape}"]
							break
						case VariableKeystroke
							bb:AddVariableKeystroke["${Iterator.Value.FindAttribute[Target].String.Escape}","${Iterator.Value.String.Escape}","${Iterator.Value.FindAttribute[RoundRobin].String.Equal[true]}","${Iterator.Value.FindAttribute[UseFTLModifiers].String.Equal[true]}"]
							break
						case SetVariableKeystroke
							bb:AddSetVariableKeystroke["${Iterator.Value.FindAttribute[Target].String.Escape}","${Iterator.Value.FindAttribute[VariableKeystroke].String.Escape}","${Iterator.Value.String.Escape}"]
							break
						case MappedKeyRewrite
							bb:AddMappedKeyRewriteAction["${Iterator.Value.FindAttribute[Target].String.Escape}","${Iterator.Value.FindAttribute[FromKeyMap].String.Escape}","${Iterator.Value.FindAttribute[FromMappedKey].String.Escape}","${Iterator.Value.FindAttribute[ToKeyMap].String.Escape}","${Iterator.Value.FindAttribute[ToMappedKey].String.Escape}","${Iterator.Value.FindAttribute[ActionTimer].String.Equal[true]}","${Iterator.Value.FindAttribute[ActionTimerPool].String.Escape}","${Iterator.Value.FindAttribute[ActionTimerSeconds].String.Escape}","${Iterator.Value.FindAttribute[ActionTimerRecurring].String.Equal[true]}"]
							break
						case MappedKeyStep
							bb:AddMappedKeyStepAction["${Iterator.Value.FindAttribute[Target].String.Escape}","${Iterator.Value.FindAttribute[KeyMap].String.Escape}","${Iterator.Value.FindAttribute[MappedKey].String.Escape}","${Iterator.Value.FindAttribute[Action].String.Escape}","${Iterator.Value.Int}","${Iterator.Value.FindAttribute[ActionTimer].String.Equal[true]}","${Iterator.Value.FindAttribute[ActionTimerPool].String.Escape}","${Iterator.Value.FindAttribute[ActionTimerSeconds].String.Escape}","${Iterator.Value.FindAttribute[ActionTimerRecurring].String.Equal[true]}"]
							break							
						case MappedKeyStepState
							bb:AddMappedKeyStepStateAction["${Iterator.Value.FindAttribute[Target].String.Escape}","${Iterator.Value.FindAttribute[KeyMap].String.Escape}","${Iterator.Value.FindAttribute[MappedKey].String.Escape}","${Iterator.Value.Int}","${Iterator.Value.FindAttribute[Enable].Int}","${Iterator.Value.FindAttribute[StickyTime].Int}","${Iterator.Value.FindAttribute[TriggerOnce].Int}","${Iterator.Value.FindAttribute[ActionTimer].String.Equal[true]}","${Iterator.Value.FindAttribute[ActionTimerPool].String.Escape}","${Iterator.Value.FindAttribute[ActionTimerSeconds].String.Escape}","${Iterator.Value.FindAttribute[ActionTimerRecurring].String.Equal[true]}"]
							break							
						case Sound
							bb:AddSoundAction["${Iterator.Value.FindAttribute[Computer].String.Escape}","${Iterator.Value.String.Escape}","${Iterator.Value.FindAttribute[ActionTimer].String.Equal[true]}","${Iterator.Value.FindAttribute[ActionTimerPool].String.Escape}","${Iterator.Value.FindAttribute[ActionTimerSeconds].String.Escape}","${Iterator.Value.FindAttribute[ActionTimerRecurring].String.Equal[true]}"]
							break
						case InputDeviceKeySet						
							bb:AddInputDeviceKeySetAction["${Iterator.Value.FindAttribute[Target].String.Escape}","${Iterator.Value.FindAttribute[InputDevice].String.Escape}","${Iterator.Value.String.Escape}"]
							break
						case KeyString
							bb:AddKeyStringAction["${Iterator.Value.FindAttribute[Target].String.Escape}","${Iterator.Value.String.Escape}","${Iterator.Value.FindAttribute[FillClipboard].String.Equal[true]}"]
							break
						case TimerPool
							bb:AddTimerPoolAction["${Iterator.Value.FindAttribute[Target].String.Escape}","${Iterator.Value.FindAttribute[Action].String.Escape}","${Iterator.Value.String.Escape}"]
							break
						case PopupText
							bb:AddPopupTextAction["${Iterator.Value.FindAttribute[Target].String.Escape}","${Iterator.Value.String.Escape}","${Iterator.Value.FindAttribute[DurationMS].Int}","${Iterator.Value.FindAttribute[FadeDurationMS].Int}","${Iterator.Value.FindAttribute[Color].String.Escape}","${Iterator.Value.FindAttribute[ActionTimer].String.Equal[true]}","${Iterator.Value.FindAttribute[ActionTimerPool].String.Escape}","${Iterator.Value.FindAttribute[ActionTimerSeconds].String.Escape}","${Iterator.Value.FindAttribute[ActionTimerRecurring].String.Equal[true]}"]
							break
						case VideoFeeds
							bb:AddVideoFeedsAction["${Iterator.Value.FindAttribute[Target].String.Escape}","${Iterator.Value.FindAttribute[Action].String.Escape}","${Iterator.Value.String.Escape}","${Iterator.Value.FindAttribute[IsSource].String.Equal[true]}","${Iterator.Value.FindAttribute[X].Int}","${Iterator.Value.FindAttribute[Y].Int}","${Iterator.Value.FindAttribute[Width].Int}","${Iterator.Value.FindAttribute[Height].Int}","${Iterator.Value.FindAttribute[Alpha].Int}","${Iterator.Value.FindAttribute[BorderColor].String.Escape}","${Iterator.Value.FindAttribute[UseMouseRepeat].String.Equal[true]}","${Iterator.Value.FindAttribute[UseKeyRepeat].String.Equal[true]}","${Iterator.Value.FindAttribute[KeyMap].String.Escape}","${Iterator.Value.FindAttribute[MappedKey].String.Escape}","${Iterator.Value.FindAttribute[ActionTimer].String.Equal[true]}","${Iterator.Value.FindAttribute[ActionTimerPool].String.Escape}","${Iterator.Value.FindAttribute[ActionTimerSeconds].String.Escape}","${Iterator.Value.FindAttribute[ActionTimerRecurring].String.Equal[true]}","${Iterator.Value.FindAttribute[UseFocusHotkey].String.Equal[true]}"]
							break
						case Screenshot
							bb:AddScreenshotAction["${Iterator.Value.FindAttribute[Target].String.Escape}","${Iterator.Value.String.Escape}","${Iterator.Value.FindAttribute[DirectXCapture].String.Equal[true]}","${Iterator.Value.FindAttribute[UseRect].String.Equal[true]}","${Iterator.Value.FindAttribute[ClientCoords].String.Equal[true]}","${Iterator.Value.FindAttribute[X].Int}","${Iterator.Value.FindAttribute[Y].Int}","${Iterator.Value.FindAttribute[Width].Int}","${Iterator.Value.FindAttribute[Height].Int}","${Iterator.Value.FindAttribute[ActionTimer].String.Equal[true]}","${Iterator.Value.FindAttribute[ActionTimerPool].String.Escape}","${Iterator.Value.FindAttribute[ActionTimerSeconds].String.Escape}","${Iterator.Value.FindAttribute[ActionTimerRecurring].String.Equal[true]}"]
							break
						case RepeaterState
							bb:AddRepeaterStateAction["${Iterator.Value.FindAttribute[Target].String.Escape}","${Iterator.Value.FindAttribute[MouseState].String.Escape}","${Iterator.Value.FindAttribute[KeyboardState].String.Escape}","${Iterator.Value.FindAttribute[VideoFeedState].Int}","${Iterator.Value.FindAttribute[VideoSourceWidth].Int}","${Iterator.Value.FindAttribute[VideoSourceHeight].Int}","${Iterator.Value.FindAttribute[VideoOutputWidth].Int}","${Iterator.Value.FindAttribute[VideoOutputHeight].Int}","${Iterator.Value.FindAttribute[VideoOutputAlpha].Int}","${Iterator.Value.FindAttribute[VideoOutputBorderColor].String.Escape}"]
							break
						case RepeaterList
							bb:AddRepeaterListAction["${Iterator.Value.FindAttribute[Target].String.Escape}","${Iterator.Value.FindAttribute[Action].String.Escape}","${Iterator.Value.String.Escape}"]
							break
						case RepeaterRegions
							bb:AddRepeaterRegionsAction["${Iterator.Value.FindAttribute[Action].String.Escape}","${Iterator.Value.String.Escape}","${Iterator.Value.FindAttribute[ActionTimer].String.Equal[true]}","${Iterator.Value.FindAttribute[ActionTimerPool].String.Escape}","${Iterator.Value.FindAttribute[ActionTimerSeconds].String.Escape}","${Iterator.Value.FindAttribute[ActionTimerRecurring].String.Equal[true]}"]
							break
						case RepeaterTarget
							bb:AddRepeaterTargetAction["${Iterator.Value.FindAttribute[Target].String.Escape}","${Iterator.Value.String.Escape}","${Iterator.Value.FindAttribute[BlockLocal].String.Equal[true]}"]
							break
						case TargetGroup
							bb:AddTargetGroupAction["${Iterator.Value.FindAttribute[Target].String.Escape}","${Iterator.Value.FindAttribute[Action].String.Escape}","${Iterator.Value.String.Escape}","${Iterator.Value.FindAttribute[ActionTimer].String.Equal[true]}","${Iterator.Value.FindAttribute[ActionTimerPool].String.Escape}","${Iterator.Value.FindAttribute[ActionTimerSeconds].String.Escape}","${Iterator.Value.FindAttribute[ActionTimerRecurring].String.Equal[true]}"]
							break
						case SendNextClick
							bb:AddSendNextClickAction["${Iterator.Value.String.Escape}","${Iterator.Value.FindAttribute[BlockLocal].String.Equal[true]}","${Iterator.Value.FindAttribute[RoundRobin].String.Equal[true]}","${Iterator.Value.FindAttribute[VideoFeed].String.Equal[true]}","${Iterator.Value.FindAttribute[VideoSourceWidth].Int}","${Iterator.Value.FindAttribute[VideoSourceHeight].Int}","${Iterator.Value.FindAttribute[VideoOutputWidth].Int}","${Iterator.Value.FindAttribute[VideoOutputHeight].Int}","${Iterator.Value.FindAttribute[VideoOutputAlpha].Int}","${Iterator.Value.FindAttribute[VideoOutputBorderColor].String.Escape}"]
							break						
						case WindowSnapperZoom
							bb:AddWindowSnapperZoomAction["${Iterator.Value.FindAttribute[Target].String.Escape}","${Iterator.Value.String.Escape}","${Iterator.Value.FindAttribute[ActionTimer].String.Equal[true]}","${Iterator.Value.FindAttribute[ActionTimerPool].String.Escape}","${Iterator.Value.FindAttribute[ActionTimerSeconds].String.Escape}","${Iterator.Value.FindAttribute[ActionTimerRecurring].String.Equal[true]}"]
							break
						case SyncCursor
							bb:AddSyncCursorAction["${Iterator.Value.String.Escape}","${Iterator.Value.FindAttribute[RoundRobin].String.Equal[true]}"]
							break														
						case WindowClose
							bb:AddWindowCloseAction["${Iterator.Value.FindAttribute[Target].String.Escape}","${Iterator.Value.String.Escape}"]
							break
						case WindowState
							bb:AddWindowStateAction["${Iterator.Value.FindAttribute[Target].String.Escape}","${Iterator.Value.FindAttribute[RegionType].String.Escape}","${Iterator.Value.String.Escape}","${Iterator.Value.FindAttribute[DeactivateOthers].String.Equal[true]}"]
							break
						case WindowFocus
							bb:AddWindowFocusAction["${Iterator.Value.FindAttribute[Computer].String.Escape}","${Iterator.Value.String.Escape}","${Iterator.Value.FindAttribute[FilterTarget].String.Escape}"]
							break
						case WindowStyle
							bb:AddWindowStyleAction["${Iterator.Value.FindAttribute[Target].String.Escape}","${Iterator.Value.FindAttribute[RegionType].String.Escape}","${Iterator.Value.FindAttribute[UsePosition].String.Equal[true]}","${Iterator.Value.FindAttribute[X].Int}","${Iterator.Value.FindAttribute[Y].Int}","${Iterator.Value.FindAttribute[UseSize].String.Equal[true]}","${Iterator.Value.FindAttribute[Width].Int}","${Iterator.Value.FindAttribute[Height].Int}","${Iterator.Value.FindAttribute[UseAlwaysOnTop].String.Equal[true]}","${Iterator.Value.FindAttribute[AlwaysOnTop].String.Escape}","${Iterator.Value.FindAttribute[UseSometimesOnTop].String.Equal[true]}","${Iterator.Value.FindAttribute[SometimesOnTop].String.Escape}","${Iterator.Value.FindAttribute[UseBorder].String.Equal[true]}","${Iterator.Value.FindAttribute[Border].String.Escape}"]
							break
						case ClickBarState
							bb:AddClickBarStateAction["${Iterator.Value.FindAttribute[Target].String.Escape}","${Iterator.Value.String.Escape}","${Iterator.Value.FindAttribute[Action].String.Escape}","${Iterator.Value.FindAttribute[ActionTimer].String.Equal[true]}","${Iterator.Value.FindAttribute[ActionTimerPool].String.Escape}","${Iterator.Value.FindAttribute[ActionTimerSeconds].String.Escape}","${Iterator.Value.FindAttribute[ActionTimerRecurring].String.Equal[true]}"]
							break
						case ClickBarButton
							bb:AddClickBarButtonAction["${Iterator.Value.FindAttribute[Target].String.Escape}","${Iterator.Value.FindAttribute[ClickBar].String.Escape}","${Iterator.Value.String.Escape}","${Iterator.Value.FindAttribute[Text].String.Escape}","${Iterator.Value.FindAttribute[BackgroundColor].String.Escape}","${Iterator.Value.FindAttribute[Image].String.Escape}","${Iterator.Value.FindAttribute[ActionTimer].String.Equal[true]}","${Iterator.Value.FindAttribute[ActionTimerPool].String.Escape}","${Iterator.Value.FindAttribute[ActionTimerSeconds].String.Escape}","${Iterator.Value.FindAttribute[ActionTimerRecurring].String.Equal[true]}"]
							break											
						case MenuState
							bb:AddMenuStateAction["${Iterator.Value.FindAttribute[Target].String.Escape}","${Iterator.Value.String.Escape}","${Iterator.Value.FindAttribute[Action].String.Escape}","${Iterator.Value.FindAttribute[ActionTimer].String.Equal[true]}","${Iterator.Value.FindAttribute[ActionTimerPool].String.Escape}","${Iterator.Value.FindAttribute[ActionTimerSeconds].String.Escape}","${Iterator.Value.FindAttribute[ActionTimerRecurring].String.Equal[true]}"]
							break
						case MenuStyle
							bb:AddMenuStyleAction["${Iterator.Value.FindAttribute[Target].String.Escape}","${Iterator.Value.String.Escape}","${Iterator.Value.FindAttribute[HotkeySet].String.Escape}","${Iterator.Value.FindAttribute[BindSoft].String.Escape}","${Iterator.Value.FindAttribute[ButtonSet].String.Escape}","${Iterator.Value.FindAttribute[StartButtonSetAtNumButton].String.Escape}","${Iterator.Value.FindAttribute[ActionTimer].String.Equal[true]}","${Iterator.Value.FindAttribute[ActionTimerPool].String.Escape}","${Iterator.Value.FindAttribute[ActionTimerSeconds].String.Escape}","${Iterator.Value.FindAttribute[ActionTimerRecurring].String.Equal[true]}"]
							break
						case MenuButton
							bb:AddMenuButtonAction["${Iterator.Value.FindAttribute[Target].String.Escape}","${Iterator.Value.FindAttribute[ButtonSet].String.Escape}","${Iterator.Value.FindAttribute[Menu].String.Escape}","${Iterator.Value.FindAttribute[NumButton].String.Escape}","${Iterator.Value.FindAttribute[StoreOrRestore].String.Escape}","${Iterator.Value.FindAttribute[PullButtonSet].String.Escape}","${Iterator.Value.FindAttribute[PullMenu].String.Escape}","${Iterator.Value.FindAttribute[PullNumButton].String.Escape}","${Iterator.Value.FindAttribute[Text].String.Escape}","${Iterator.Value.FindAttribute[press_command].String.Escape}","${Iterator.Value.FindAttribute[release_command].String.Escape}","${Iterator.Value.FindAttribute[Image].String.Escape}","${Iterator.Value.FindAttribute[ImageHover].String.Escape}","${Iterator.Value.FindAttribute[ImagePressed].String.Escape}","${Iterator.Value.FindAttribute[Alpha].String.Escape}","${Iterator.Value.FindAttribute[BackgroundColor].String.Escape}","${Iterator.Value.FindAttribute[BorderColor].String.Escape}","${Iterator.Value.FindAttribute[Border].String.Escape}","${Iterator.Value.FindAttribute[FontName].String.Escape}","${Iterator.Value.FindAttribute[FontSize].String.Escape}","${Iterator.Value.FindAttribute[FontColor].String.Escape}","${Iterator.Value.FindAttribute[FontBold].String.Escape}","${Iterator.Value.FindAttribute[ActionTimer].String.Equal[true]}","${Iterator.Value.FindAttribute[ActionTimerPool].String.Escape}","${Iterator.Value.FindAttribute[ActionTimerSeconds].String.Escape}","${Iterator.Value.FindAttribute[ActionTimerRecurring].String.Equal[true]}"]
							break
						case HotkeySet
							bb:AddHotkeySetAction["${Iterator.Value.FindAttribute[Target].String.Escape}","${Iterator.Value.String.Escape}","${Iterator.Value.FindAttribute[Menu].String.Escape}","${Iterator.Value.FindAttribute[BindSoft].String.Escape}","${Iterator.Value.FindAttribute[OtherHotkeySet].String.Escape}","${Iterator.Value.FindAttribute[StartHotkeySetAtNumHotkey].String.Escape}","${Iterator.Value.FindAttribute[ActionTimer].String.Equal[true]}","${Iterator.Value.FindAttribute[ActionTimerPool].String.Escape}","${Iterator.Value.FindAttribute[ActionTimerSeconds].String.Escape}","${Iterator.Value.FindAttribute[ActionTimerRecurring].String.Equal[true]}"]
							break
						case DoMenuButton
							bb:AddDoMenuButtonAction["${Iterator.Value.FindAttribute[Target].String.Escape}","${Iterator.Value.FindAttribute[Menu].String.Escape}","${Iterator.Value.Int}"]
							break
						case Twitch
							bb:AddTwitchAction["${Iterator.Value.FindAttribute[Target].String.Escape}","${Iterator.Value.FindAttribute[Start].String.Escape}","${Iterator.Value.FindAttribute[Pause].String.Escape}","${Iterator.Value.FindAttribute[Commercial].String.Escape}","${Iterator.Value.String.Escape}","${Iterator.Value.FindAttribute[Mute].String.Escape}","${Iterator.Value.FindAttribute[MicrophoneVolume].String.Escape}","${Iterator.Value.FindAttribute[PlaybackVolume].String.Escape}","${Iterator.Value.FindAttribute[ActionTimer].String.Equal[true]}","${Iterator.Value.FindAttribute[ActionTimerPool].String.Escape}","${Iterator.Value.FindAttribute[ActionTimerSeconds].String.Escape}","${Iterator.Value.FindAttribute[ActionTimerRecurring].String.Equal[true]}"]
							break
						case Volume
							bb:AddVolumeAction["${Iterator.Value.FindAttribute[Target].String.Escape}","${Iterator.Value.String.Escape}","${Iterator.Value.FindAttribute[OverSeconds].String.Escape}","${Iterator.Value.FindAttribute[Action].String.Escape}","${Iterator.Value.FindAttribute[ActionTimer].String.Equal[true]}","${Iterator.Value.FindAttribute[ActionTimerPool].String.Escape}","${Iterator.Value.FindAttribute[ActionTimerSeconds].String.Escape}","${Iterator.Value.FindAttribute[ActionTimerRecurring].String.Equal[true]}"]
							break
						}
					}
					else
						bb:AddKeypress["${Iterator.Key.Escape}","${Iterator.Value.String.Escape}","${Iterator.Value.FindAttribute[RoundRobin].String.Equal[true]}"]
				}
			}
			while ${Iterator:Next(exists)}
		}
/*
		if ${hold}
			bb:AddPressCommand["squelch alias \"${main.Escape}_press\" \"${nextStep.Escape}_press\""]
		bb:AddReleaseCommand["squelch alias \"${main.Escape}_release\" \"${nextStep.Escape}_release\""]
/**/
		if ${enablePress}
			bb.Hold:Set[1]
		bb:CreateAlias
	}
	
	method ExecuteStep(string name, bool press, bool precheck)
	{
		ResetHandler.Element["${name.Escape}"]:Execute["${name.Escape}",${press},${precheck}]
	}

	method IncStep(string keymapname, string mappedkeyname, int value)
	{
		variable mappedkeyref mkref = "${keymapname.Escape}" "${mappedkeyname.Escape}"
		mkref:Translate
		keymapname:Set["${mkref.KeyMapName.Escape}"]
		mappedkeyname:Set["${mkref.MappedKeyName.Escape}"]

		variable string name
		name:Set["keymapper_${keymapname.Escape}(keymap)_${mappedkeyname.Escape}"]
		name:Set["${name.Replace[" ","_",";","?",":","_",",","_","[","lb_"].Escape}"]
		
		ResetHandler.Element["${name.Escape}"]:Inc[${value}]
	}

	method SetStep(string keymapname, string mappedkeyname, int value)
	{
		variable mappedkeyref mkref = "${keymapname.Escape}" "${mappedkeyname.Escape}"
		mkref:Translate
		keymapname:Set["${mkref.KeyMapName.Escape}"]
		mappedkeyname:Set["${mkref.MappedKeyName.Escape}"]
	
		variable string name
		name:Set["keymapper_${keymapname.Escape}(keymap)_${mappedkeyname.Escape}"]
		name:Set["${name.Replace[" ","_",";","?",":","_",",","_","[","lb_"].Escape}"]
		
		ResetHandler.Element["${name.Escape}"]:Set[${value}]
	}

	method ModStep(string keymapname, string mappedkeyname, int numStep, int enable, int sticky_time, int trigger_once)
	{
		variable mappedkeyref mkref = "${keymapname.Escape}" "${mappedkeyname.Escape}"
		mkref:Translate
		keymapname:Set["${mkref.KeyMapName.Escape}"]
		mappedkeyname:Set["${mkref.MappedKeyName.Escape}"]
	
		variable string name
		name:Set["keymapper_${keymapname.Escape}(keymap)_${mappedkeyname.Escape}"]
		name:Set["${name.Replace[" ","_",";","?",":","_",",","_","[","lb_"].Escape}"]
		
		ResetHandler.Element["${name.Escape}"]:Modify[${numStep},${enable},${sticky_time},${trigger_once}]
	}

	method LoadBind(string name, settingsetref loadSet, bool useftl, bool hold)
	{
		variable bindbuilder bb
		name:Set["${name.Replace[" ","_",";","?",":","_",",","_","[","lb_"].Escape}"]
		bb.Name:Set["${name.Escape}"]
		if !${loadSet.FindSetting["Hotkey"](exists)}
		{
			bb.Hotkey:Set["NONE"]
		}
		else
		{
			bb.Hotkey:Set["${loadSet.FindSetting["Hotkey"].String.Escape}"]
		}

		if ${loadSet.FindSetting["Send Next Click"].String.Length}
			bb.SendNextClick:Set["${loadSet.FindSetting["Send Next Click"].String.Escape}"]
		if ${loadSet.FindSetting["Send Next Click Block Local"].String.Length}
			bb.SendNextClickBlockLocal:Set["${loadSet.FindSetting["Send Next Click Block Local"].String.Escape}"]

		if ${loadSet.FindSetting["Hold"].String.Length}
			bb.Hold:Set["${loadSet.FindSetting["Hold"].String.Escape}"]
		else
			bb.Hold:Set["${hold}"]
			
		if ${loadSet.FindSetting["Use FTL Modifiers"].String.Length}
			bb.UseFTLModifiers:Set["${loadSet.FindSetting["Use FTL Modifiers"].String.Escape}"]
		else
			bb.UseFTLModifiers:Set["${useftl}"]
			

		variable iterator Iterator
		loadSet:GetSettingIterator[Iterator]
		if ${Iterator:First(exists)}
		{
			do
			{
				switch ${Iterator.Key}
				{
				case Reset Timer
				case Reset Type
				case Stick
				case Stop
				case Stump
				case Mode
				case Hold
				case Use FTL Modifiers
				case Hotkey
				case Send Next Click
				case Manual Load
				case Disabled
					break
				default
					if ${Iterator.Value.FindAttribute[ActionType](exists)}
					{
						switch ${Iterator.Value.FindAttribute[ActionType]}
						{
						case Keystroke
							bb:AddKeypress["${Iterator.Value.FindAttribute[Target].String.Escape}","${Iterator.Value.String.Escape}","${Iterator.Value.FindAttribute[RoundRobin].String.Equal[true]}","${Iterator.Value.FindAttribute[UseFTLModifiers].String.Equal[true]}"]
							break
						case Light
							bb:AddLightAction["${Iterator.Value.FindAttribute[Computer].String.Escape}","${Iterator.Value.String.Escape}","${Iterator.Value.FindAttribute[Action].String.Escape}","${Iterator.Value.FindAttribute[ActionTimer].String.Equal[true]}","${Iterator.Value.FindAttribute[ActionTimerPool].String.Escape}","${Iterator.Value.FindAttribute[ActionTimerSeconds].String.Escape}","${Iterator.Value.FindAttribute[ActionTimerRecurring].String.Equal[true]}"]
							break
						case KeyMap
							bb:AddKeyMapAction["${Iterator.Value.FindAttribute[Target].String.Escape}","${Iterator.Value.String.Escape}","${Iterator.Value.FindAttribute[Action].String.Escape}","${Iterator.Value.FindAttribute[ActionTimer].String.Equal[true]}","${Iterator.Value.FindAttribute[ActionTimerPool].String.Escape}","${Iterator.Value.FindAttribute[ActionTimerSeconds].String.Escape}","${Iterator.Value.FindAttribute[ActionTimerRecurring].String.Equal[true]}"]
							break
						case MappedKey
							bb:AddMappedKeyAction["${Iterator.Value.FindAttribute[Target].String.Escape}","${Iterator.Value.FindAttribute[KeyMap].String.Escape}","${Iterator.Value.String.Escape}","${Iterator.Value.FindAttribute[Action].String.Escape}","${Iterator.Value.FindAttribute[ActionTimer].String.Equal[true]}","${Iterator.Value.FindAttribute[ActionTimerPool].String.Escape}","${Iterator.Value.FindAttribute[ActionTimerSeconds].String.Escape}","${Iterator.Value.FindAttribute[ActionTimerRecurring].String.Equal[true]}"]
							break
						case DoMappedKey
							bb:AddDoMappedKeyAction["${Iterator.Value.FindAttribute[Target].String.Escape}","${Iterator.Value.FindAttribute[KeyMap].String.Escape}","${Iterator.Value.String.Escape}","${Iterator.Value.FindAttribute[RoundRobin].String.Equal[true]}","${Iterator.Value.FindAttribute[ConditionalKey].String.Escape}"]
							break
						case VariableKeystroke
							bb:AddVariableKeystroke["${Iterator.Value.FindAttribute[Target].String.Escape}","${Iterator.Value.String.Escape}","${Iterator.Value.FindAttribute[RoundRobin].String.Equal[true]}","${Iterator.Value.FindAttribute[UseFTLModifiers].String.Equal[true]}"]
							break
						case SetVariableKeystroke
							bb:AddSetVariableKeystroke["${Iterator.Value.FindAttribute[Target].String.Escape}","${Iterator.Value.FindAttribute[VariableKeystroke].String.Escape}","${Iterator.Value.String.Escape}"]
							break
						case MappedKeyRewrite
							bb:AddMappedKeyRewriteAction["${Iterator.Value.FindAttribute[Target].String.Escape}","${Iterator.Value.FindAttribute[FromKeyMap].String.Escape}","${Iterator.Value.FindAttribute[FromMappedKey].String.Escape}","${Iterator.Value.FindAttribute[ToKeyMap].String.Escape}","${Iterator.Value.FindAttribute[ToMappedKey].String.Escape}","${Iterator.Value.FindAttribute[ActionTimer].String.Equal[true]}","${Iterator.Value.FindAttribute[ActionTimerPool].String.Escape}","${Iterator.Value.FindAttribute[ActionTimerSeconds].String.Escape}","${Iterator.Value.FindAttribute[ActionTimerRecurring].String.Equal[true]}"]
							break
						case MappedKeyStep
							bb:AddMappedKeyStepAction["${Iterator.Value.FindAttribute[Target].String.Escape}","${Iterator.Value.FindAttribute[KeyMap].String.Escape}","${Iterator.Value.FindAttribute[MappedKey].String.Escape}","${Iterator.Value.FindAttribute[Action].String.Escape}","${Iterator.Value.Int}","${Iterator.Value.FindAttribute[ActionTimer].String.Equal[true]}","${Iterator.Value.FindAttribute[ActionTimerPool].String.Escape}","${Iterator.Value.FindAttribute[ActionTimerSeconds].String.Escape}","${Iterator.Value.FindAttribute[ActionTimerRecurring].String.Equal[true]}"]
							break							
						case MappedKeyStepState
							bb:AddMappedKeyStepStateAction["${Iterator.Value.FindAttribute[Target].String.Escape}","${Iterator.Value.FindAttribute[KeyMap].String.Escape}","${Iterator.Value.FindAttribute[MappedKey].String.Escape}","${Iterator.Value.Int}","${Iterator.Value.FindAttribute[Enable].Int}","${Iterator.Value.FindAttribute[StickyTime].Int}","${Iterator.Value.FindAttribute[TriggerOnce].Int}","${Iterator.Value.FindAttribute[ActionTimer].String.Equal[true]}","${Iterator.Value.FindAttribute[ActionTimerPool].String.Escape}","${Iterator.Value.FindAttribute[ActionTimerSeconds].String.Escape}","${Iterator.Value.FindAttribute[ActionTimerRecurring].String.Equal[true]}"]
							break							
						case Sound
							bb:AddSoundAction["${Iterator.Value.FindAttribute[Computer].String.Escape}","${Iterator.Value.String.Escape}","${Iterator.Value.FindAttribute[ActionTimer].String.Equal[true]}","${Iterator.Value.FindAttribute[ActionTimerPool].String.Escape}","${Iterator.Value.FindAttribute[ActionTimerSeconds].String.Escape}","${Iterator.Value.FindAttribute[ActionTimerRecurring].String.Equal[true]}"]
							break
						case InputDeviceKeySet						
							bb:AddInputDeviceKeySetAction["${Iterator.Value.FindAttribute[Target].String.Escape}","${Iterator.Value.FindAttribute[InputDevice].String.Escape}","${Iterator.Value.String.Escape}"]
							break
						case KeyString
							bb:AddKeyStringAction["${Iterator.Value.FindAttribute[Target].String.Escape}","${Iterator.Value.String.Escape}","${Iterator.Value.FindAttribute[FillClipboard].String.Equal[true]}"]
							break
						case TimerPool
							bb:AddTimerPoolAction["${Iterator.Value.FindAttribute[Target].String.Escape}","${Iterator.Value.FindAttribute[Action].String.Escape}","${Iterator.Value.String.Escape}"]
							break
						case PopupText
							bb:AddPopupTextAction["${Iterator.Value.FindAttribute[Target].String.Escape}","${Iterator.Value.String.Escape}","${Iterator.Value.FindAttribute[DurationMS].Int}","${Iterator.Value.FindAttribute[FadeDurationMS].Int}","${Iterator.Value.FindAttribute[Color].String.Escape}","${Iterator.Value.FindAttribute[ActionTimer].String.Equal[true]}","${Iterator.Value.FindAttribute[ActionTimerPool].String.Escape}","${Iterator.Value.FindAttribute[ActionTimerSeconds].String.Escape}","${Iterator.Value.FindAttribute[ActionTimerRecurring].String.Equal[true]}"]
							break
						case VideoFeeds
							bb:AddVideoFeedsAction["${Iterator.Value.FindAttribute[Target].String.Escape}","${Iterator.Value.FindAttribute[Action].String.Escape}","${Iterator.Value.String.Escape}","${Iterator.Value.FindAttribute[IsSource].String.Equal[true]}","${Iterator.Value.FindAttribute[X].Int}","${Iterator.Value.FindAttribute[Y].Int}","${Iterator.Value.FindAttribute[Width].Int}","${Iterator.Value.FindAttribute[Height].Int}","${Iterator.Value.FindAttribute[Alpha].Int}","${Iterator.Value.FindAttribute[BorderColor].String.Escape}","${Iterator.Value.FindAttribute[UseMouseRepeat].String.Equal[true]}","${Iterator.Value.FindAttribute[UseKeyRepeat].String.Equal[true]}","${Iterator.Value.FindAttribute[KeyMap].String.Escape}","${Iterator.Value.FindAttribute[MappedKey].String.Escape}","${Iterator.Value.FindAttribute[ActionTimer].String.Equal[true]}","${Iterator.Value.FindAttribute[ActionTimerPool].String.Escape}","${Iterator.Value.FindAttribute[ActionTimerSeconds].String.Escape}","${Iterator.Value.FindAttribute[ActionTimerRecurring].String.Equal[true]}","${Iterator.Value.FindAttribute[UseFocusHotkey].String.Equal[true]}"]
							break
						case Screenshot
							bb:AddScreenshotAction["${Iterator.Value.FindAttribute[Target].String.Escape}","${Iterator.Value.String.Escape}","${Iterator.Value.FindAttribute[DirectXCapture].String.Equal[true]}","${Iterator.Value.FindAttribute[UseRect].String.Equal[true]}","${Iterator.Value.FindAttribute[ClientCoords].String.Equal[true]}","${Iterator.Value.FindAttribute[X].Int}","${Iterator.Value.FindAttribute[Y].Int}","${Iterator.Value.FindAttribute[Width].Int}","${Iterator.Value.FindAttribute[Height].Int}","${Iterator.Value.FindAttribute[ActionTimer].String.Equal[true]}","${Iterator.Value.FindAttribute[ActionTimerPool].String.Escape}","${Iterator.Value.FindAttribute[ActionTimerSeconds].String.Escape}","${Iterator.Value.FindAttribute[ActionTimerRecurring].String.Equal[true]}"]
							break
						case RepeaterState
							bb:AddRepeaterStateAction["${Iterator.Value.FindAttribute[Target].String.Escape}","${Iterator.Value.FindAttribute[MouseState].String.Escape}","${Iterator.Value.FindAttribute[KeyboardState].String.Escape}","${Iterator.Value.FindAttribute[VideoFeedState].Int}","${Iterator.Value.FindAttribute[VideoSourceWidth].Int}","${Iterator.Value.FindAttribute[VideoSourceHeight].Int}","${Iterator.Value.FindAttribute[VideoOutputWidth].Int}","${Iterator.Value.FindAttribute[VideoOutputHeight].Int}","${Iterator.Value.FindAttribute[VideoOutputAlpha].Int}","${Iterator.Value.FindAttribute[VideoOutputBorderColor].String.Escape}"]
							break
						case RepeaterList
							bb:AddRepeaterListAction["${Iterator.Value.FindAttribute[Target].String.Escape}","${Iterator.Value.FindAttribute[Action].String.Escape}","${Iterator.Value.String.Escape}"]
							break
						case RepeaterRegions
							bb:AddRepeaterRegionsAction["${Iterator.Value.FindAttribute[Action].String.Escape}","${Iterator.Value.String.Escape}","${Iterator.Value.FindAttribute[ActionTimer].String.Equal[true]}","${Iterator.Value.FindAttribute[ActionTimerPool].String.Escape}","${Iterator.Value.FindAttribute[ActionTimerSeconds].String.Escape}","${Iterator.Value.FindAttribute[ActionTimerRecurring].String.Equal[true]}"]
							break
						case RepeaterTarget
							bb:AddRepeaterTargetAction["${Iterator.Value.FindAttribute[Target].String.Escape}","${Iterator.Value.String.Escape}","${Iterator.Value.FindAttribute[BlockLocal].String.Equal[true]}"]
							break
						case TargetGroup
							bb:AddTargetGroupAction["${Iterator.Value.FindAttribute[Target].String.Escape}","${Iterator.Value.FindAttribute[Action].String.Escape}","${Iterator.Value.String.Escape}","${Iterator.Value.FindAttribute[ActionTimer].String.Equal[true]}","${Iterator.Value.FindAttribute[ActionTimerPool].String.Escape}","${Iterator.Value.FindAttribute[ActionTimerSeconds].String.Escape}","${Iterator.Value.FindAttribute[ActionTimerRecurring].String.Equal[true]}"]
							break
						case SendNextClick
							bb:AddSendNextClickAction["${Iterator.Value.String.Escape}","${Iterator.Value.FindAttribute[BlockLocal].String.Equal[true]}","${Iterator.Value.FindAttribute[RoundRobin].String.Equal[true]}","${Iterator.Value.FindAttribute[VideoFeed].String.Equal[true]}","${Iterator.Value.FindAttribute[VideoSourceWidth].Int}","${Iterator.Value.FindAttribute[VideoSourceHeight].Int}","${Iterator.Value.FindAttribute[VideoOutputWidth].Int}","${Iterator.Value.FindAttribute[VideoOutputHeight].Int}","${Iterator.Value.FindAttribute[VideoOutputAlpha].Int}","${Iterator.Value.FindAttribute[VideoOutputBorderColor].String.Escape}"]
							break
						case WindowSnapperZoom
							bb:AddWindowSnapperZoomAction["${Iterator.Value.FindAttribute[Target].String.Escape}","${Iterator.Value.String.Escape}","${Iterator.Value.FindAttribute[ActionTimer].String.Equal[true]}","${Iterator.Value.FindAttribute[ActionTimerPool].String.Escape}","${Iterator.Value.FindAttribute[ActionTimerSeconds].String.Escape}","${Iterator.Value.FindAttribute[ActionTimerRecurring].String.Equal[true]}"]
							break
						case SyncCursor
							bb:AddSyncCursorAction["${Iterator.Value.String.Escape}","${Iterator.Value.FindAttribute[RoundRobin].String.Equal[true]}"]
							break
						case WindowClose
							bb:AddWindowCloseAction["${Iterator.Value.FindAttribute[Target].String.Escape}","${Iterator.Value.String.Escape}"]
							break
						case WindowState
							bb:AddWindowStateAction["${Iterator.Value.FindAttribute[Target].String.Escape}","${Iterator.Value.FindAttribute[RegionType].String.Escape}","${Iterator.Value.String.Escape}","${Iterator.Value.FindAttribute[DeactivateOthers].String.Equal[true]}"]
							break
						case WindowFocus
							bb:AddWindowFocusAction["${Iterator.Value.FindAttribute[Computer].String.Escape}","${Iterator.Value.String.Escape}","${Iterator.Value.FindAttribute[FilterTarget].String.Escape}"]
							break
						case WindowStyle
							bb:AddWindowStyleAction["${Iterator.Value.FindAttribute[Target].String.Escape}","${Iterator.Value.FindAttribute[RegionType].String.Escape}","${Iterator.Value.FindAttribute[UsePosition].String.Equal[true]}","${Iterator.Value.FindAttribute[X].Int}","${Iterator.Value.FindAttribute[Y].Int}","${Iterator.Value.FindAttribute[UseSize].String.Equal[true]}","${Iterator.Value.FindAttribute[Width].Int}","${Iterator.Value.FindAttribute[Height].Int}","${Iterator.Value.FindAttribute[UseAlwaysOnTop].String.Equal[true]}","${Iterator.Value.FindAttribute[AlwaysOnTop].String.Escape}","${Iterator.Value.FindAttribute[UseSometimesOnTop].String.Equal[true]}","${Iterator.Value.FindAttribute[SometimesOnTop].String.Escape}","${Iterator.Value.FindAttribute[UseBorder].String.Equal[true]}","${Iterator.Value.FindAttribute[Border].String.Escape}"]
							break
						case ClickBarState
							bb:AddClickBarStateAction["${Iterator.Value.FindAttribute[Target].String.Escape}","${Iterator.Value.String.Escape}","${Iterator.Value.FindAttribute[Action].String.Escape}","${Iterator.Value.FindAttribute[ActionTimer].String.Equal[true]}","${Iterator.Value.FindAttribute[ActionTimerPool].String.Escape}","${Iterator.Value.FindAttribute[ActionTimerSeconds].String.Escape}","${Iterator.Value.FindAttribute[ActionTimerRecurring].String.Equal[true]}"]
							break
						case ClickBarButton
							bb:AddClickBarButtonAction["${Iterator.Value.FindAttribute[Target].String.Escape}","${Iterator.Value.FindAttribute[ClickBar].String.Escape}","${Iterator.Value.String.Escape}","${Iterator.Value.FindAttribute[Text].String.Escape}","${Iterator.Value.FindAttribute[BackgroundColor].String.Escape}","${Iterator.Value.FindAttribute[Image].String.Escape}","${Iterator.Value.FindAttribute[ActionTimer].String.Equal[true]}","${Iterator.Value.FindAttribute[ActionTimerPool].String.Escape}","${Iterator.Value.FindAttribute[ActionTimerSeconds].String.Escape}","${Iterator.Value.FindAttribute[ActionTimerRecurring].String.Equal[true]}"]
							break											
						case MenuState
							bb:AddMenuStateAction["${Iterator.Value.FindAttribute[Target].String.Escape}","${Iterator.Value.String.Escape}","${Iterator.Value.FindAttribute[Action].String.Escape}","${Iterator.Value.FindAttribute[ActionTimer].String.Equal[true]}","${Iterator.Value.FindAttribute[ActionTimerPool].String.Escape}","${Iterator.Value.FindAttribute[ActionTimerSeconds].String.Escape}","${Iterator.Value.FindAttribute[ActionTimerRecurring].String.Equal[true]}"]
							break
						case MenuStyle
							bb:AddMenuStyleAction["${Iterator.Value.FindAttribute[Target].String.Escape}","${Iterator.Value.String.Escape}","${Iterator.Value.FindAttribute[HotkeySet].String.Escape}","${Iterator.Value.FindAttribute[BindSoft].String.Escape}","${Iterator.Value.FindAttribute[ButtonSet].String.Escape}","${Iterator.Value.FindAttribute[StartButtonSetAtNumButton].String.Escape}","${Iterator.Value.FindAttribute[ActionTimer].String.Equal[true]}","${Iterator.Value.FindAttribute[ActionTimerPool].String.Escape}","${Iterator.Value.FindAttribute[ActionTimerSeconds].String.Escape}","${Iterator.Value.FindAttribute[ActionTimerRecurring].String.Equal[true]}"]
							break
						case MenuButton
							bb:AddMenuButtonAction["${Iterator.Value.FindAttribute[Target].String.Escape}","${Iterator.Value.FindAttribute[ButtonSet].String.Escape}","${Iterator.Value.FindAttribute[Menu].String.Escape}","${Iterator.Value.FindAttribute[NumButton].String.Escape}","${Iterator.Value.FindAttribute[StoreOrRestore].String.Escape}","${Iterator.Value.FindAttribute[PullButtonSet].String.Escape}","${Iterator.Value.FindAttribute[PullMenu].String.Escape}","${Iterator.Value.FindAttribute[PullNumButton].String.Escape}","${Iterator.Value.FindAttribute[Text].String.Escape}","${Iterator.Value.FindAttribute[press_command].String.Escape}","${Iterator.Value.FindAttribute[release_command].String.Escape}","${Iterator.Value.FindAttribute[Image].String.Escape}","${Iterator.Value.FindAttribute[ImageHover].String.Escape}","${Iterator.Value.FindAttribute[ImagePressed].String.Escape}","${Iterator.Value.FindAttribute[Alpha].String.Escape}","${Iterator.Value.FindAttribute[BackgroundColor].String.Escape}","${Iterator.Value.FindAttribute[BorderColor].String.Escape}","${Iterator.Value.FindAttribute[Border].String.Escape}","${Iterator.Value.FindAttribute[FontName].String.Escape}","${Iterator.Value.FindAttribute[FontSize].String.Escape}","${Iterator.Value.FindAttribute[FontColor].String.Escape}","${Iterator.Value.FindAttribute[FontBold].String.Escape}","${Iterator.Value.FindAttribute[ActionTimer].String.Equal[true]}","${Iterator.Value.FindAttribute[ActionTimerPool].String.Escape}","${Iterator.Value.FindAttribute[ActionTimerSeconds].String.Escape}","${Iterator.Value.FindAttribute[ActionTimerRecurring].String.Equal[true]}"]
							break
						case HotkeySet
							bb:AddHotkeySetAction["${Iterator.Value.FindAttribute[Target].String.Escape}","${Iterator.Value.String.Escape}","${Iterator.Value.FindAttribute[Menu].String.Escape}","${Iterator.Value.FindAttribute[BindSoft].String.Escape}","${Iterator.Value.FindAttribute[OtherHotkeySet].String.Escape}","${Iterator.Value.FindAttribute[StartHotkeySetAtNumHotkey].String.Escape}","${Iterator.Value.FindAttribute[ActionTimer].String.Equal[true]}","${Iterator.Value.FindAttribute[ActionTimerPool].String.Escape}","${Iterator.Value.FindAttribute[ActionTimerSeconds].String.Escape}","${Iterator.Value.FindAttribute[ActionTimerRecurring].String.Equal[true]}"]
							break
						case DoMenuButton
							bb:AddDoMenuButtonAction["${Iterator.Value.FindAttribute[Target].String.Escape}","${Iterator.Value.FindAttribute[Menu].String.Escape}","${Iterator.Value.Int}"]
							break
						case Twitch
							bb:AddTwitchAction["${Iterator.Value.FindAttribute[Target].String.Escape}","${Iterator.Value.FindAttribute[Start].String.Escape}","${Iterator.Value.FindAttribute[Pause].String.Escape}","${Iterator.Value.FindAttribute[Commercial].String.Escape}","${Iterator.Value.String.Escape}","${Iterator.Value.FindAttribute[Mute].String.Escape}","${Iterator.Value.FindAttribute[MicrophoneVolume].String.Escape}","${Iterator.Value.FindAttribute[PlaybackVolume].String.Escape}","${Iterator.Value.FindAttribute[ActionTimer].String.Equal[true]}","${Iterator.Value.FindAttribute[ActionTimerPool].String.Escape}","${Iterator.Value.FindAttribute[ActionTimerSeconds].String.Escape}","${Iterator.Value.FindAttribute[ActionTimerRecurring].String.Equal[true]}"]
							break
						case Volume
							bb:AddVolumeAction["${Iterator.Value.FindAttribute[Target].String.Escape}","${Iterator.Value.String.Escape}","${Iterator.Value.FindAttribute[OverSeconds].String.Escape}","${Iterator.Value.FindAttribute[Action].String.Escape}","${Iterator.Value.FindAttribute[ActionTimer].String.Equal[true]}","${Iterator.Value.FindAttribute[ActionTimerPool].String.Escape}","${Iterator.Value.FindAttribute[ActionTimerSeconds].String.Escape}","${Iterator.Value.FindAttribute[ActionTimerRecurring].String.Equal[true]}"]
							break
						}
					}
					else
						bb:AddKeypress["${Iterator.Key.Escape}","${Iterator.Value.String.Escape}","${Iterator.Value.FindAttribute[RoundRobin].String.Equal[true]}"]
				}
			}
			while ${Iterator:Next(exists)}
		}
		loadSet:GetSetIterator[Iterator]
		if ${Iterator:First(exists)}
		{
			ResetHandler:Erase["${name.Escape}"]
			ResetHandler:Set["${name.Escape}",${loadSet.FindSetting["Reset Timer"].Int},"${loadSet.FindSetting["Reset Type"].String.Escape}"]
						
			if ${bb.Hold}
				execute squelch alias "${name.Escape}_press" "${name.Escape}_${Iterator.Key.Replace[" ","_",";","?",":","_",",","_","[","lb_"].Escape}_press"
			execute squelch alias "${name.Escape}_release" "${name.Escape}_${Iterator.Key.Replace[" ","_",";","?",":","_",",","_","[","lb_"].Escape}_release"
			variable settingsetref firstStep
			variable settingsetref thisStep
			firstStep:Set[${Iterator.Value}]
			while 1
			{
				thisStep:Set[${Iterator.Value}]
				ResetHandler.Element["${name.Escape}"]:AddStep[${thisStep.FindSetting["Stick"].Int},${Bool["${thisStep.FindSetting["Stop"].String.Escape}"]},${Bool["${thisStep.FindSetting["Stump"].String.Escape}"]},${Bool["${thisStep.FindSetting["Disabled"].String.Escape}"]}]
				if ${Iterator:Next(exists)}
				{
					This:LoadAlias["${name.Escape}","${name.Escape}_${thisStep.Name.Replace[" ","_",";","?",":","_",",","_","[","lb_"].Escape}",${thisStep},${bb.Hold},${bb.UseFTLModifiers},"${name.Escape}_${Iterator.Key.Replace[" ","_",";","?",":","_",",","_","[","lb_"].Escape}"]
				}
				else
				{
					This:LoadAlias["${name.Escape}","${name.Escape}_${thisStep.Name.Replace[" ","_",";","?",":","_",",","_","[","lb_"].Escape}",${thisStep},${bb.Hold},${bb.UseFTLModifiers},"${name.Escape}_${firstStep.Name.Replace[" ","_",";","?",":","_",",","_","[","lb_"].Escape}"]
					break
				}
			}

			if ${bb.Hold}
			{
				bb:AddPressCommand["keymapper -executestep \"${name.Escape}\" 1 1"]
				bb:AddReleaseCommand["keymapper -executestep \"${name.Escape}\" 0 0"]
			}
			else
			{
				switch ${loadSet.FindSetting["Mode"].String}
				{
					case OnPress
						bb:AddPressCommand["keymapper -executestep \"${name.Escape}\" 0 1"]
						break
					case OnRelease
					default
						bb:AddReleaseCommand["keymapper -executestep \"${name.Escape}\" 0 1"]
						break
					case OnPressAndRelease
						bb:AddPressCommand["keymapper -executestep \"${name.Escape}\" 0 1"]
						bb:AddReleaseCommand["keymapper -executestep \"${name.Escape}\" 0 1"]
						break
				}
					
			
			}

/*
			if ${bb.Hold}
				bb:AddPressCommand["${name.Escape}_press"]
			bb:AddReleaseCommand["${name.Escape}_release"]
/**/
		}

		bb:CreateBind
	}

	method LoadKeyMapFromSet(string name,settingsetref loadSet)
	{
		variable bool useftl
		useftl:Set["${loadSet.FindSetting["Use FTL Modifiers"].String.Escape}"]
		variable bool hold
		hold:Set["${loadSet.FindSetting["Hold"].String.Escape}"]

		variable iterator Iterator
		loadSet:GetSetIterator[Iterator]

		if ${Iterator:First(exists)}
		{
			do
			{
				if !${Bool[${Iterator.Value.FindSetting["Manual Load"].String.Escape}]}
					This:LoadBind["keymapper_${loadSet.Name.Escape}(keymap)_${Iterator.Key.Escape}","${Iterator.Value}","${useftl}","${hold}"]
			}
			while ${Iterator:Next(exists)}
			LoadedMaps:Add["${name.Escape}"]
			Event[KeyMapper:KeyMapLoaded]:Execute["${loadSet.Name.Escape}"]
		}
		else
		{
			echo Keymapper: Key map '${name.Escape}' is empty or not found
		}						
	}

	method LoadMappedKeyFromSet(string name,settingsetref loadSet, string mappedkeyname)
	{
		variable bool useftl
		useftl:Set["${loadSet.FindSetting["Use FTL Modifiers"].String.Escape}"]
		variable bool hold
		hold:Set["${loadSet.FindSetting["Hold"].String.Escape}"]

		variable settingsetref mappedkeySet
		mappedkeySet:Set[${loadSet.FindSet["${mappedkeyname.Escape}"]}]
		if !${mappedkeySet}
		{
			echo KeyMapper: Mapped Key '${mappedkeyname.Escape}' not found in Key Map '${loadSet.Name.Escape}'
			return
		}

		This:LoadBind["keymapper_${loadSet.Name.Escape}(keymap)_${mappedkeyname.Escape}","${mappedkeySet}","${useftl}","${hold}"]
		
		Event[KeyMapper:MappedKeyLoaded]:Execute["${loadSet.Name.Escape}","${mappedkeyname.Escape}"]
	}

	method UnloadKeyMap(string name)
	{
		echo Keymapper: Unloading key map '\at${name.Escape}\ax'
		ISBoxerUI:DebugOut["Key Map","Unloading '${name.Escape}'"]
		LoadedMaps:Remove["${name.Escape}"]		
		name:Set["${name.Replace[" ","_",";","?",":","_",",","_","[","lb_"].Escape}"]
		execute squelch bind -delete "keymapper_${name.Escape}(keymap)*"
		execute squelch alias -delete "keymapper_${name.Escape}(keymap)*"
		
		Event[KeyMapper:KeyMapUnloaded]:Execute["${name.Escape}"]
	}
	
	method UnloadMappedKey(string keymapname, string mappedkeyname)
	{
		keymapname:Set["${keymapname.Replace[" ","_",";","?",":","_",",","_","[","lb_"].Escape}"]
		mappedkeyname:Set["${mappedkeyname.Replace[" ","_",";","?",":","_",",","_","[","lb_"].Escape}"]
		execute squelch bind -delete "keymapper_${keymapname.Escape}(keymap)_${mappedkeyname.Escape}"
		execute squelch alias -delete "keymapper_${keymapname.Escape}(keymap)_${mappedkeyname.Escape}_press"
		execute squelch alias -delete "keymapper_${keymapname.Escape}(keymap)_${mappedkeyname.Escape}_release"	
		execute squelch alias -delete "keymapper_${keymapname.Escape}(keymap)_${mappedkeyname.Escape}_step_*"
	
		Event[KeyMapper:MappedKeyUnloaded]:Execute["${keymapname.Escape}","${mappedkeyname.Escape}"]
	}

	method ConditionalExecuteMappedKey(string conditionalKey,string target,string keymapname,string mappedkeyname)
	{
		if ${conditionalKey.Equal[nomodifiers]}
		{
			if ${Input.Button[160].Pressed} || ${Input.Button[161].Pressed} || ${Input.Button[162].Pressed} || ${Input.Button[163].Pressed} || ${Input.Button[164].Pressed} || ${Input.Button[165].Pressed}
			{
				return
			}
		}
		elseif !${Input.Button["${conditionalKey.Escape}"].Pressed}
			return

		if ${target.Length} && !${target.Equal[self]}
		{
			relay "${target.Escape}" keymapper -executemappedkey "${keymapname.Escape}" "${mappedkeyname.Escape}"
			return
		}

		This:ExecuteMappedKey["${keymapname.Escape}","${mappedkeyname.Escape}"]
	}

	method ConditionalPressMappedKey(string conditionalKey,string target,string keymapname,string mappedkeyname)
	{
		if ${conditionalKey.Equal[nomodifiers]}
		{
			if ${Input.Button[160].Pressed} || ${Input.Button[161].Pressed} || ${Input.Button[162].Pressed} || ${Input.Button[163].Pressed} || ${Input.Button[164].Pressed} || ${Input.Button[165].Pressed}
			{
				return
			}
		}
		elseif !${Input.Button["${conditionalKey.Escape}"].Pressed}
			return

		/*
		if ${target.Length} && !${target.Equal[self]}
		{
			relay "${target.Escape}" keymapper -pressmappedkey "${keymapname.Escape}" "${mappedkeyname.Escape}"
			return
		}
		*/

		This:PressMappedKey["${keymapname.Escape}","${mappedkeyname.Escape}","${conditionalKey.Escape}_${target.Escape}_${keymapname.Escape}_${mappedkeyname.Escape}","${target.Escape}"]
	}

	method ConditionalReleaseMappedKey(string conditionalKey,string target,string keymapname,string mappedkeyname)
	{
		This:ReleaseRememberedMappedKey["${conditionalKey.Escape}_${target.Escape}_${keymapname.Escape}_${mappedkeyname.Escape}"]	
	}
	
	method ExecuteMappedKey(string keymapname,string mappedkeyname)
	{
		variable mappedkeyref mkref = "${keymapname.Escape}" "${mappedkeyname.Escape}"
		mkref:Translate
		keymapname:Set["${mkref.KeyMapName.Escape}"]
		mappedkeyname:Set["${mkref.MappedKeyName.Escape}"]
	
		keymapname:Set["${keymapname.Replace[" ","_",";","?",":","_",",","_","[","lb_"].Escape}"]
		mappedkeyname:Set["${mappedkeyname.Replace[" ","_",";","?",":","_",",","_","[","lb_"].Escape}"]
		Input.Bind["keymapper_${keymapname.Escape}(keymap)_${mappedkeyname.Escape}"]:Press:Release
	}

	method PressMappedKey(string keymapname,string mappedkeyname,string remember,string target)
	{
		if ${remember.Length} && ${RememberedMappedKeys.Element["${remember.Escape}"](exists)}
		{
			return
		}

;		echo pressmappedkey ${remember}
		if ${target.Length} && !${target.Equal[self]}
		{
;			echo relay "${This.ResolveTarget["${target.Escape}"]}" keymapper -rememberholdmappedkey "${keymapname.Escape}" "${mappedkeyname.Escape}" "${Session}_${remember.Escape}" "self"
			relay "${This.ResolveTarget["${target.Escape}"]}" keymapper -rememberholdmappedkey "${keymapname.Escape}" "${mappedkeyname.Escape}" "${Session}_${remember.Escape}" "self"
		}
		else
		{
			variable mappedkeyref mkref = "${keymapname.Escape}" "${mappedkeyname.Escape}"
			mkref:Translate
			keymapname:Set["${mkref.KeyMapName.Escape}"]
			mappedkeyname:Set["${mkref.MappedKeyName.Escape}"]
			ISBoxerUI:DebugOut["Mapped Key","Pressing '${mappedkeyname.Escape}' in '${keymapname.Escape}'"]
	
			keymapname:Set["${keymapname.Replace[" ","_",";","?",":","_",",","_","[","lb_"].Escape}"]
			mappedkeyname:Set["${mappedkeyname.Replace[" ","_",";","?",":","_",",","_","[","lb_"].Escape}"]
			Input.Bind["keymapper_${keymapname.Escape}(keymap)_${mappedkeyname.Escape}"]:Press
		}

		if ${remember.Length}
		{
;			echo Remembering keymapper_${keymapname.Escape}(keymap)_${mappedkeyname.Escape} for hold on target=${target.Escape}
			RememberedMappedKeys:Set["${remember.Escape}","${target.Escape}","keymapper_${keymapname.Escape}(keymap)_${mappedkeyname.Escape}"]
		}
	}
	method ReleaseMappedKey(string keymapname,string mappedkeyname)
	{
		; text:Set["${KeyMapper.ProcessVariables["${text.Escape}"].Escape}"]
		variable mappedkeyref mkref = "${keymapname.Escape}" "${mappedkeyname.Escape}"
		mkref:Translate
		keymapname:Set["${mkref.KeyMapName.Escape}"]
		mappedkeyname:Set["${mkref.MappedKeyName.Escape}"]
		ISBoxerUI:DebugOut["Mapped Key","Releasing '${mappedkeyname.Escape}' in '${keymapname.Escape}'"]
	
		keymapname:Set["${keymapname.Replace[" ","_",";","?",":","_",",","_","[","lb_"].Escape}"]
		mappedkeyname:Set["${mappedkeyname.Replace[" ","_",";","?",":","_",",","_","[","lb_"].Escape}"]
		Input.Bind["keymapper_${keymapname.Escape}(keymap)_${mappedkeyname.Escape}"]:Release
	}
	
	method ReleaseRememberedMappedKey(string remember)
	{
		if !${RememberedMappedKeys.Element["${remember.Escape}"](exists)}
		{
			return
		}
		variable string target
		variable string mappedkey
		target:Set["${RememberedMappedKeys.Element["${remember.Escape}"].MappedKeyTarget.Escape}"]
		mappedkey:Set["${RememberedMappedKeys.Element["${remember.Escape}"].MappedKey.Escape}"]
;		echo Remembering ${mappedkey.Escape} for release on target=${target.Escape}
		if ${target.Length} && !${target.Equal[self]}
		{
			echo relay "${This.ResolveTarget["${target.Escape}"]}" keymapper -rememberreleasemappedkey "${Session}_${remember.Escape}"
			relay "${This.ResolveTarget["${target.Escape}"]}" keymapper -rememberreleasemappedkey "${Session}_${remember.Escape}"
		}
		else		
		{
			ISBoxerUI:DebugOut["Mapped Key","Releasing '${mappedkey.Escape}'"]

			Input.Bind["${mappedkey.Escape}"]:Release
		}
		RememberedMappedKeys:Erase["${remember.Escape}"]
	}

	method ClickBarAction(string name, string value)
	{
		name:Set["${KeyMapper.ProcessVariables["${name.Escape}"].Escape}"]

;		echo ClickBarAction ${name} ${value}
		switch ${value}
		{
		case On
			UIElement["clickbar_${name.Escape}"]:Show
			break
		case Off
			UIElement["clickbar_${name.Escape}"]:Hide
			break
		case Toggle
			UIElement["clickbar_${name.Escape}"]:ToggleVisible
			break
		case Load
			ISBoxerUI:LoadMyClickBars["${name.Escape}"]
			break
		case Clear
			ISBoxerUI:HideClickBars
			break
		}
	}	

	method ClickBarButtonAction(string clickbarname, string name, string text, string bgcolor, string img)
	{
		clickbarname:Set["${KeyMapper.ProcessVariables["${clickbarname.Escape}"].Escape}"]
		text:Set["${KeyMapper.ProcessVariables["${text.Escape}"].Escape}"]
		img:Set["${KeyMapper.ProcessVariables["${img.Escape}"].Escape}"]
		name:Set["${KeyMapper.ProcessVariables["${name.Escape}"].Escape}"]

;		echo ClickBarButtonAction ${name.Escape}@buttons@clickbar_${clickbarname.Escape} text=${text.Escape} bgcolor=${bgcolor.Escape} img=${img.Escape}
		; ${name.Escape}@buttons@${clickbarname.Escape}		
		variable int id = ${UIElement[clickbar_${clickbarname.Escape}].FindUsableChild["${name.Escape}",button].ID}
		if ${text.NotEqual["NULL"]}
		{
			UIElement["${id}"]:SetText["${text.Escape}"]
		}
		if ${bgcolor.NotEqual["NULL"]}
		{
			UIElement["${id}"]:SetBackgroundColor["${bgcolor.Escape}"]
		}
		if ${img.NotEqual["NULL"]}
		{
;			echo img exists = ${UIElement[${img.Escape}@clickbarimages].Texture(exists)}
			UIElement["${id}"].Texture:Copy["UIElement[${img.Escape}@clickbarimages].Texture"]
		}
	}	
	
	method LightAction(string light, string value)
	{
		switch ${light}
		{
		case M1
		case M2
		case M3
		case MR
			switch ${value}
			{
			case On
				Input.G15:Set${light.Upper}Light[TRUE]
				break
			case Off
				Input.G15:Set${light.Upper}Light[FALSE]
				break
			case Toggle
				Input.G15:Set${light.Upper}Light[!${Input.G15.${light.Upper}Light}]				
				break
			}
			break
		}
	}

}

variable(global) keymapper KeyMapper
variable(global) string CurrentStepCounter

atom(global) keymapper(... Params)
{
	/* Process parameters */
	variable int p=1
	for (${p}<=${Params.Size} ; p:Inc)
	{
		/* Switch does a string comparison, so parameter processing is easy */
		switch ${Params[${p}]}
		{
		case -whitelist
			p:Inc
			if ${p}<=${Params.Size}
			{
				KeyMapper:WhiteList["${Params[${p}].Escape}"]
			}
			break		
		case -blacklist
			p:Inc
			if ${p}<=${Params.Size}
			{
				KeyMapper:BlackList["${Params[${p}].Escape}"]
			}
			break		
		case -import
			p:Inc
			if ${p}<=${Params.Size}
			{
				KeyMapper:Import["${Params[${p}].Escape}"]
			}
			break
		case -togglemap
			p:Inc
			if ${p}<=${Params.Size}
			{
				KeyMapper:ToggleKeyMap["${Params[${p}].Escape}"]
			}
			break
		case -togglemappedkey
			p:Inc[2]
			if ${p}<=${Params.Size}
			{
				KeyMapper:ToggleMappedKey["${Params[${Math.Calc[${p}-1]}].Escape}","${Params[${p}].Escape}"]
			}
			break		
		case -executemappedkey
			p:Inc[2]
			if ${p}<=${Params.Size}
			{
				KeyMapper:ExecuteMappedKey["${Params[${Math.Calc[${p}-1]}].Escape}","${Params[${p}].Escape}"]
			}
			break		
		case -executestep
			p:Inc[3]
			if ${p}<=${Params.Size}
			{
				KeyMapper:ExecuteStep["${Params[${Math.Calc[${p}-2]}].Escape}","${Params[${Math.Calc[${p}-1]}].Escape}","${Params[${p}].Escape}"]
			}
			break
		case -incstep
			p:Inc[3]
			if ${p}<=${Params.Size}
			{
				KeyMapper:IncStep["${Params[${Math.Calc[${p}-2]}].Escape}","${Params[${Math.Calc[${p}-1]}].Escape}","${Params[${p}].Escape}"]
			}
			break
		case -setstep
			p:Inc[3]
			if ${p}<=${Params.Size}
			{
				KeyMapper:SetStep["${Params[${Math.Calc[${p}-2]}].Escape}","${Params[${Math.Calc[${p}-1]}].Escape}","${Params[${p}].Escape}"]
			}
			break
		case -modstep
			p:Inc[6]
			if ${p}<=${Params.Size}
			{
				KeyMapper:ModStep["${Params[${Math.Calc[${p}-5]}].Escape}","${Params[${Math.Calc[${p}-4]}].Escape}","${Params[${Math.Calc[${p}-3]}].Escape}","${Params[${Math.Calc[${p}-2]}].Escape}","${Params[${Math.Calc[${p}-1]}].Escape}","${Params[${p}].Escape}"]
			}
			break
		case -holdbind
			p:Inc
			if ${p}<=${Params.Size}
			{
				Input.Bind["${Params[${p}].Escape}"]:Press
			}
			break
		case -releasebind
			p:Inc
			if ${p}<=${Params.Size}
			{
				Input.Bind["${Params[${p}].Escape}"]:Release
			}
			break
		case -conditionalholdmappedkey
			p:Inc[4]
			if ${p}<=${Params.Size}
			{
				KeyMapper:ConditionalPressMappedKey["${Params[${Math.Calc[${p}-3]}].Escape}","${Params[${Math.Calc[${p}-2]}].Escape}","${Params[${Math.Calc[${p}-1]}].Escape}","${Params[${p}].Escape}"]
			}
			break
		case -conditionalreleasemappedkey
			p:Inc[4]
			if ${p}<=${Params.Size}
			{
				KeyMapper:ConditionalReleaseMappedKey["${Params[${Math.Calc[${p}-3]}].Escape}","${Params[${Math.Calc[${p}-2]}].Escape}","${Params[${Math.Calc[${p}-1]}].Escape}","${Params[${p}].Escape}"]
			}
			break
		case -conditionalexecutemappedkey
			p:Inc[4]
			if ${p}<=${Params.Size}
			{
				KeyMapper:ConditionalExecuteMappedKey["${Params[${Math.Calc[${p}-3]}].Escape}","${Params[${Math.Calc[${p}-2]}].Escape}","${Params[${Math.Calc[${p}-1]}].Escape}","${Params[${p}].Escape}"]
			}
			break
		case -holdmappedkey
			p:Inc[2]
			if ${p}<=${Params.Size}
			{
				KeyMapper:PressMappedKey["${Params[${Math.Calc[${p}-1]}].Escape}","${Params[${p}].Escape}"]
			}
			break
		case -releasemappedkey
			p:Inc[2]
			if ${p}<=${Params.Size}
			{
				KeyMapper:ReleaseMappedKey["${Params[${Math.Calc[${p}-1]}].Escape}","${Params[${p}].Escape}"]
			}
			break		
		case -rememberholdmappedkey
			p:Inc[4]
			if ${p}<=${Params.Size}
			{
				KeyMapper:PressMappedKey["${Params[${Math.Calc[${p}-3]}].Escape}","${Params[${Math.Calc[${p}-2]}].Escape}","${Params[${Math.Calc[${p}-1]}].Escape}","${Params[${p}].Escape}"]
			}
			break
		case -rememberreleasemappedkey
			p:Inc
			if ${p}<=${Params.Size}
			{
				KeyMapper:ReleaseRememberedMappedKey["${Params[${p}].Escape}"]
			}
			break			
		case -loadmap
			p:Inc
			if ${p}<=${Params.Size}
			{
				KeyMapper:LoadKeyMap["${Params[${p}].Escape}"]
			}
			break
		case -loadmappedkey
			p:Inc[2]
			if ${p}<=${Params.Size}
			{
				KeyMapper:LoadMappedKey["${Params[${Math.Calc[${p}-1]}].Escape}","${Params[${p}].Escape}"]
			}
			break		
		case -unloadmap
			p:Inc
			if ${p}<=${Params.Size}
			{
				KeyMapper:UnloadKeyMap["${Params[${p}].Escape}"]
			}
			break
		case -unloadmappedkey
			p:Inc[2]
			if ${p}<=${Params.Size}
			{
				KeyMapper:UnloadMappedKey["${Params[${Math.Calc[${p}-1]}].Escape}","${Params[${p}].Escape}"]
			}
			break
		case -rewritemappedkey
			p:Inc[4]
			if ${p}<=${Params.Size}
			{
				KeyMapper:RewriteMappedKey["${Params[${Math.Calc[${p}-3]}].Escape}","${Params[${Math.Calc[${p}-2]}].Escape}","${Params[${Math.Calc[${p}-1]}].Escape}","${Params[${p}].Escape}"]
			}
			break		
		case -ftlmods
			p:Inc
			if ${p}<=${Params.Size}
			{			
				KeyMapper:SetFTLModifiers["${Params[${p}].Escape}"]
			}
			break
		case -noftlmods
			KeyMapper.FTLModifiers:Set[""]
			break
		case -light
			p:Inc
			if ${p}<=${Params.Size}
			{			
				KeyMapper:LightAction["${Params[${p}].Escape}","${Params[${p:Inc}].Escape}"]
			}
			break
		case -clickbar
			p:Inc[2]
			if ${p}<=${Params.Size}
			{
				KeyMapper:ClickBarAction["${Params[${Math.Calc[${p}-1]}].Escape}","${Params[${p}].Escape}"]
			}
			break
		case -clickbarbutton
			p:Inc[5]
			if ${p}<=${Params.Size}
			{
				KeyMapper:ClickBarButtonAction["${Params[${Math.Calc[${p}-4]}].Escape}","${Params[${Math.Calc[${p}-3]}].Escape}","${Params[${Math.Calc[${p}-2]}].Escape}","${Params[${Math.Calc[${p}-1]}].Escape}","${Params[${p}].Escape}"]
			}
			break
		case -addtimerpool
			p:Inc[3]
			if ${p}<=${Params.Size}
			{
				KeyMapper:AddTimerPool["${Params[${Math.Calc[${p}-2]}].Escape}","${Params[${Math.Calc[${p}-1]}].Escape}","${Params[${p}].Escape}"]
			}
			break
		case -resettimerpool
			p:Inc
			if ${p}<=${Params.Size}
			{			
				KeyMapper:ResetTimerPool["${Params[${p}].Escape}"]
			}
			break			
		case -addtimer
			p:Inc[4]
			if ${p}<=${Params.Size}
			{
				KeyMapper:AddTimer["${Params[${Math.Calc[${p}-3]}].Escape}","${Params[${Math.Calc[${p}-2]}].Escape}","${Params[${Math.Calc[${p}-1]}].Escape}","${Params[${p}].Escape}"]
			}
			break
		case -muteon			
			break
		case -muteoff
			break
		case -mutetoggle
			break
		case -pressvariable
			p:Inc[3]
			if ${p}<=${Params.Size}
			{
				KeyMapper:PressVariable["${Params[${Math.Calc[${p}-2]}].Escape}","${Params[${Math.Calc[${p}-1]}].Escape}","${Params[${p}].Escape}"]
			}
			break
		case -releasevariable
			p:Inc[3]
			if ${p}<=${Params.Size}
			{
				KeyMapper:ReleaseVariable["${Params[${Math.Calc[${p}-2]}].Escape}","${Params[${Math.Calc[${p}-1]}].Escape}","${Params[${p}].Escape}"]
			}
			break
		case -holdvariable
			p:Inc[3]
			if ${p}<=${Params.Size}
			{
				KeyMapper:HoldVariable["${Params[${Math.Calc[${p}-2]}].Escape}","${Params[${Math.Calc[${p}-1]}].Escape}","${Params[${p}].Escape}"]
			}
			break
		case -setvariable
			p:Inc[2]
			if ${p}<=${Params.Size}
			{
				KeyMapper:SetVariable["${Params[${Math.Calc[${p}-1]}].Escape}","${Params[${p}].Escape}"]
			}
			break
		case -definevariable
			p:Inc[5]
			if ${p}<=${Params.Size}
			{
				KeyMapper:DefineVariable["${Params[${Math.Calc[${p}-4]}].Escape}","${Params[${Math.Calc[${p}-3]}].Escape}","${Params[${Math.Calc[${p}-2]}].Escape}","${Params[${Math.Calc[${p}-1]}].Escape}","${Params[${p}].Escape}"]
			}
			break
		case -setcustomvar
			p:Inc[2]
			if ${p}<=${Params.Size}
			{
				KeyMapper:SetCustomVariable["${Params[${Math.Calc[${p}-1]}].Escape}","${Params[${p}].Escape}"]
			}
			break
		case -unsetcustomvar
			p:Inc
			if ${p}<=${Params.Size}
			{
				KeyMapper:UnsetCustomVariable["${Params[${p}].Escape}"]
			}
			break
		}
	}			
}

atom(globalkeep) keymapper_twitch(int _start, int _pause, int _commercial, string new_scene, int _mute_mic, float mic_volume, float playback_volume)
{
	if ${_start}>=0
	{
		if ${_start}
			Twitch:Start
		else
			Twitch:Stop
	}
	if ${_pause}>=0
	{
		if ${_pause}
			Twitch:Pause
		else
			Twitch:UnPause
	}
	if ${_commercial}>0
	{
		Twitch:RunCommercial
	}
	if ${new_scene.Length} && ${new_scene.NotEqual[NULL]}
	{
		Twitch:SetScene["${new_scene.Escape}"]
	}
	if ${_mute_mic}>=0
	{
		Twitch:SetMicrophoneMute[${_mute_mic}]
	}
	if ${mic_volume}>=0
	{
		Twitch:SetMicrophoneVolume[${mic_volume}]
	}
	if ${playback_volume}>=0
	{
		Twitch:SetPlaybackVolume[${playback_volume}]
	}
}

atom(globalkeep) keymapper_volume(string _action, float _value, float over_seconds)
{
	switch ${_action}
	{
	case Mute
		Audio:SetMute[1]
		break
	case UnMute
		Audio:SetMute[0]
		break
	case SetVolume
		if ${over_seconds}>=0.01 && ${InnerSpace.Build}>=6012
		{
			Audio:FadeVolume[${_value},${over_seconds}]
		}
		else
		{
			Audio:SetVolume[${_value}]
		}
		break
	case IncVolume
		Audio:IncVolume[${_value}]
		break
	}
		
}

atom(globalkeep) keymapper_screenshot(string filetemplate, bool useDirectX, bool useRect, bool clientCoords, int x, int y, int width, int height)
{
	filetemplate:Set["${KeyMapper.ProcessVariables["${filetemplate.Escape}"].Escape}"]

	variable string options
	if ${useDirectX}
	{
		options:Set["-directx,"]
	}
	else
	{
		options:Set["-desktop,"]
	}

	if ${clientCoords}
	{
		options:Concat["-clientcoords,"]
	}
	else
	{
		options:Concat["-screencoords,"]
	}

	if ${useRect}
	{
		Display:Screencap[${options}${filetemplate},${x},${y},${x:Inc[${width}]},${y:Inc[${height}]}]
	}
	else
	{
		Display:Screencap[${options}${filetemplate}]
	}
}

atom(globalkeep) keymapper_inputdevicekeyset(string device,string keyset)
{
	device:Set["${KeyMapper.ProcessVariables["${device.Escape}"].Escape}"]
	keyset:Set["${KeyMapper.ProcessVariables["${keyset.Escape}"].Escape}"]
	Input.Device["${device.Escape}"]:SelectKeySet["${keyset.Escape}"]
}

atom(globalkeep) keymapper_pastetext(string text, bool fill_clipboard)
{
	text:Set["${KeyMapper.ProcessVariables["${text.Escape}"].Escape}"]
	ISBoxerUI:DebugOut["Paste","${text.Escape}"]
	if ${fill_clipboard}
	{
		System:SetClipboardText["${text.Escape}"]
	}
	else
	{
		Display.Window:Paste["${text.Escape}"]
	}
}

atom(globalkeep) keymapper_popuptext(string text, int milliseconds=500, int fadeMS=500, string color="FFFFFFFF")
{
	text:Set["${KeyMapper.ProcessVariables["${text.Escape}"].Escape}"]
	ISBoxerUI:PopupText["${text.Escape}",${milliseconds},${fadeMS},"FF${color.Escape}"]	
}

/*
atom(globalkeep) keymapper_pushstepcounter(string step_counter_name)
{
	if !${KeyMapper.NamedStepCounters["${step_counter_name.Escape}"](exists)}
	{
		KeyMapper.NamedStepCounters:Set["${step_counter_name.Escape}",1]
	}
	KeyMapper.StepCounterStack:Push["${CurrentStepCounter.Escape}"]
	CurrentStepCounter:Set["${KeyMapper.NamedStepCounters["${step_counter_name.Escape}"]}"]
}

atom(globalkeep) keymapper_popstepcounter(string increment_step_counter_name)
{
;	StepCounters:Set[${CurrentStep},${StepCounters[${CurrentStep}]:Inc}]

	CurrentStepCounter:Set["${KeyMapper.StepCounterStack.Top.Escape}"]
	KeyMapper.StepCounterStack:Pop

	KeyMapper.NamedStepCounters:Set["${increment_step_counter_name.Escape}",${KeyMapper.NamedStepCounters["${step_counter_name.Escape}"]:Inc}]
}
/**/

function main(... Params)
{
	if !${Params[1].Equal[-nodefaultmaps]}
	{
		KeyMapper:Import[keymapper.xml]
		KeyMapper:LoadKeyMap[main]
	}

	while 1
		waitframe
}

