isboxer.Character.Name = "Samoanrouge";
isboxer.Character.ActualName = "Samoanrouge";
isboxer.Character.QualifiedName = "Samoanrouge-Emerald Dream";

function isboxer.Character_LoadBinds()
	if (isboxer.CharacterSet.Name=="SS + M4NCUB") then
		isboxer.SetMacro("FTLAssist","BACKSPACE","/assist [nomod:alt,mod:lshift,nomod:ctrl]Samoantitan;[nomod:alt,mod:rshift,nomod:ctrl]Samoanrouge\n",1,1,1,1);

		isboxer.SetMacro("FTLFocus","NONE","/focus [nomod:alt,mod:lshift,nomod:ctrl]Samoantitan;[nomod:alt,mod:rshift,nomod:ctrl]Samoanrouge\n",1,1,1,1);

		isboxer.SetMacro("FTLFollow","F11","/jamba-follow snw\n/follow [nomod:alt,mod:lshift,nomod:ctrl]Samoantitan;[nomod:alt,mod:rshift,nomod:ctrl]Samoanrouge\n",1,1,1,1);

		isboxer.SetMacro("FTLTarget","]","/targetexact [nomod:alt,mod:lshift,nomod:ctrl]Samoantitan;[nomod:alt,mod:rshift,nomod:ctrl]Samoanrouge\n",1,1,1,1);

		isboxer.SetMacro("InviteTeam","ALT-CTRL-SHIFT-I","/invite Samoantitan\n",nil,nil,nil,1);

		isboxer.SetMacro("CTMOn","ALT-SHIFT-N","/console autointeract 1\n",nil,nil,nil,1);

		isboxer.SetMacro("CTMOff","ALT-CTRL-N","/console autointeract 0\n",nil,nil,nil,1);

		isboxer.SetMacro("JambaMaster","CTRL-SHIFT-F12","/jamba-team iammaster all\n",nil,nil,nil,1);

		isboxer.SetMacro("JambaStrobeOn","ALT-SHIFT-F12","/jamba-follow strobeonme all\n",nil,nil,nil,1);

		isboxer.SetMacro("JambaStrobeOff","ALT-CTRL-SHIFT-F12","/jamba-follow strobeoff all\n",nil,nil,nil,1);

		isboxer.ManageJambaTeam=True
		isboxer.ClearMembers();
		isboxer.AddMember("Samoantitan-Emerald Dream");
		isboxer.AddMember("Samoanrouge-Emerald Dream");
		isboxer.SetMaster("Samoantitan-Emerald Dream");
		return
	end
	if (isboxer.CharacterSet.Name=="S + M + T") then
		isboxer.SetMacro("FTLAssist","BACKSPACE","/assist [nomod:alt,mod:lshift,nomod:ctrl]Samoantitan;[nomod:alt,mod:rshift,nomod:ctrl]Samoanrouge;[nomod:alt,nomod:shift,mod:lctrl]Tygrrlilly\n",1,1,1,1);

		isboxer.SetMacro("FTLFocus","NONE","/focus [nomod:alt,mod:lshift,nomod:ctrl]Samoantitan;[nomod:alt,mod:rshift,nomod:ctrl]Samoanrouge;[nomod:alt,nomod:shift,mod:lctrl]Tygrrlilly\n",1,1,1,1);

		isboxer.SetMacro("FTLFollow","F11","/jamba-follow snw\n/follow [nomod:alt,mod:lshift,nomod:ctrl]Samoantitan;[nomod:alt,mod:rshift,nomod:ctrl]Samoanrouge;[nomod:alt,nomod:shift,mod:lctrl]Tygrrlilly\n",1,1,1,1);

		isboxer.SetMacro("FTLTarget","]","/targetexact [nomod:alt,mod:lshift,nomod:ctrl]Samoantitan;[nomod:alt,mod:rshift,nomod:ctrl]Samoanrouge;[nomod:alt,nomod:shift,mod:lctrl]Tygrrlilly\n",1,1,1,1);

		isboxer.SetMacro("InviteTeam","ALT-CTRL-SHIFT-I","/invite Samoantitan\n/invite Tygrrlilly\n",nil,nil,nil,1);

		isboxer.SetMacro("CTMOn","ALT-SHIFT-N","/console autointeract 1\n",nil,nil,nil,1);

		isboxer.SetMacro("CTMOff","ALT-CTRL-N","/console autointeract 0\n",nil,nil,nil,1);

		isboxer.SetMacro("JambaMaster","CTRL-SHIFT-F12","/jamba-team iammaster all\n",nil,nil,nil,1);

		isboxer.SetMacro("JambaStrobeOn","ALT-SHIFT-F12","/jamba-follow strobeonme all\n",nil,nil,nil,1);

		isboxer.SetMacro("JambaStrobeOff","ALT-CTRL-SHIFT-F12","/jamba-follow strobeoff all\n",nil,nil,nil,1);

		isboxer.ManageJambaTeam=True
		isboxer.ClearMembers();
		isboxer.AddMember("Samoantitan-Emerald Dream");
		isboxer.AddMember("Samoanrouge-Emerald Dream");
		isboxer.AddMember("Tygrrlilly-Emerald Dream");
		isboxer.SetMaster("Samoantitan-Emerald Dream");
		return
	end
end
isboxer.Character.LoadBinds = isboxer.Character_LoadBinds;

isboxer.Output("Character 'Samoanrouge' activated");
