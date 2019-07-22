isboxer.Character.Name = "Samoanbeast";
isboxer.Character.ActualName = "Samoanbeast";
isboxer.Character.QualifiedName = "Samoanbeast-Ravenholdt";

function isboxer.Character_LoadBinds()
	if (isboxer.CharacterSet.Name=="#1") then
		isboxer.SetMacro("FTLAssist","BACKSPACE","/assist [nomod:alt,mod:lshift,nomod:ctrl]Samoanbeast;[nomod:alt,mod:rshift,nomod:ctrl]Samoandruid-EmeraldDream;[nomod:alt,nomod:shift,mod:lctrl]Cherriebomb-EmeraldDream\n",1,1,1,1);

		isboxer.SetMacro("FTLFocus","NONE","/focus [nomod:alt,mod:lshift,nomod:ctrl]Samoanbeast;[nomod:alt,mod:rshift,nomod:ctrl]Samoandruid-EmeraldDream;[nomod:alt,nomod:shift,mod:lctrl]Cherriebomb-EmeraldDream\n",1,1,1,1);

		isboxer.SetMacro("FTLFollow","F11","/jamba-follow snw\n/follow [nomod:alt,mod:lshift,nomod:ctrl]Samoanbeast;[nomod:alt,mod:rshift,nomod:ctrl]Samoandruid-EmeraldDream;[nomod:alt,nomod:shift,mod:lctrl]Cherriebomb-EmeraldDream\n",1,1,1,1);

		isboxer.SetMacro("FTLTarget","]","/targetexact [nomod:alt,mod:lshift,nomod:ctrl]Samoanbeast;[nomod:alt,mod:rshift,nomod:ctrl]Samoandruid-EmeraldDream;[nomod:alt,nomod:shift,mod:lctrl]Cherriebomb-EmeraldDream\n",1,1,1,1);

		isboxer.SetMacro("InviteTeam","ALT-CTRL-SHIFT-I","/invite Samoandruid-EmeraldDream\n/invite Cherriebomb-EmeraldDream\n",nil,nil,nil,1);

		isboxer.SetMacro("CTMOn","ALT-SHIFT-N","/console autointeract 1\n",nil,nil,nil,1);

		isboxer.SetMacro("CTMOff","ALT-CTRL-N","/console autointeract 0\n",nil,nil,nil,1);

		isboxer.SetMacro("JambaMaster","CTRL-SHIFT-F12","/jamba-team iammaster all\n",nil,nil,nil,1);

		isboxer.SetMacro("JambaStrobeOn","ALT-SHIFT-F12","/jamba-follow strobeonme all\n",nil,nil,nil,1);

		isboxer.SetMacro("JambaStrobeOff","ALT-CTRL-SHIFT-F12","/jamba-follow strobeoff all\n",nil,nil,nil,1);

		isboxer.ManageJambaTeam=True
		isboxer.ClearMembers();
		isboxer.AddMember("Samoanbeast-Ravenholdt");
		isboxer.AddMember("Samoandruid-Emerald Dream");
		isboxer.AddMember("Cherriebomb-Emerald Dream");
		isboxer.SetMaster("Samoanbeast-Ravenholdt");
		return
	end
end
isboxer.Character.LoadBinds = isboxer.Character_LoadBinds;

isboxer.Output("Character 'Samoanbeast' activated");
