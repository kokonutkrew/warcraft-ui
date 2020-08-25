-- Author      : Naxxrama | Everlook - Karsten Potreck
-- Create Date : 10/2/2019 5:30:14 AM

------ Globals
ChatAlarm = {};
locale = GetLocale();
------ Locals

local NChatAlarm, CA = ...

CA.color1="";
CA.color2="";
CA.ColorPicker=1;
CA.playerName = UnitName("player");
CA.realmName = GetRealmName();
CA.colorMatch1=">";
CA.colorMatch2="<";
NCATicker=nil;

--Ä = \195\132
--ä = \195\164
--Ö = \195\150
--ö = \195\182
--Ü = \195\156
--ü = \195\188
--ß = \195\159

CA.merge={
deDE={"Gruppe f\195\188r <ini> sucht noch <player>","<player> sucht noch Gruppe f\195\188r <ini>"},
enUS={"<ini> group search for <player>","<player> search group for <ini>"}		
}
CA.menu = {"30","45","60","80","120","180","200"}
CA.Channels={
deDE={"Allgemein","SucheNachGruppe","Handel","Gilde"},
enUS={"General","LookingForGroup","Trade","Guild"}}
CA.TemplateIni={deDE={
"13-18|r Ragefireabgrund",
"17-24|r Die H\195\182le des Wehklagens",
"17-26|r Todesminen",
"22-30|r Burg Shadowfang",
"24-32|r Blackfathom Tiefe",
"24-32|r Das Verlies",
"29-38|r Gnomeregan",
"29-38|r Der Kral von Razorfen",
"26-36|r Das sch. Kloster-Friedhof",
"29-39|r Das sch. Kloster-Bibiothek",
"32-42|r Das sch. Kloster-Waffenkammer",
"35-45|r Das sch. Kloster-Kathedrale",
"37-46|r Die H\195\188gel von Razorfen",
"41-51|r Uldaman",
"42-46|r Zul'Farrak",
"46-55|r Maraudon",
"50-56|r Der Tempel von Atal'Hakkar",
"52-60|r Blackrocktiefen",
"55-60|r Untere Blackrockspitze",
"55-60|r Obere Blackrockspitze",
"55-60|r D\195\188sterbruch Ost",
"55-60|r D\195\188sterbruch West",
"55-60|r D\195\188sterbruch Nord",
"58-60|r Scholomance",
"58-60|r Stratholme Living",
"58-60|r Stratholme Undead",
"Benutzerdefiniert A",
"Benutzerdefiniert B",
"Benutzerdefiniert C"
},enUS={
"13-18|r Ragefire Chasm",
"17-24|r The Wailing Caverns",
"17-26|r The Deadmines",
"22-30|r Shadowfang Keep",
"24-32|r Blackfathom Deeps",
"24-32|r The Stockade",
"29-38|r Gnomeregan",
"29-38|r Razorfen Kraul ",
"26-36|r The Scarlet Monastery-Graveyard",
"29-39|r The Scarlet Monastery-Library:",
"32-42|r The Scarlet Monastery-Armory",
"35-45|r The Scarlet Monastery-Cathedral",
"37-46|r Razorfen Downs",
"41-51|r Uldaman",
"42-46|r Zul'Farrak",
"46-55|r Maraudon",
"50-56|r The Temple of Atal'Hakkar",
"52-60|r Blackrocktiefen",
"55-60|r The Lower Blackrock Spire",
"55-60|r The Upper Blackrock Spire",
"55-60|r Dire Maul East",
"55-60|r Dire Maul West",
"55-60|r Dire Maul North",
"58-60|r Scholomance",
"58-60|r Stratholme Living",
"58-60|r Stratholme Undead",
"custom A",
"custom B",
"custom C"
}

};
CA.TemplateWords={
deDE={
		{"lfg+rf","lfm+rf","suche+rage","rf","Ragefire"},
		{"lfg+hdw","lfm+hdw","suche+hdw","H\195\182le","HDW"},
		{"lfg+dm","lfm+dm","suche+minen","dm","Todesminen"},
		{"lfg+bsf","lfm+bs","suche+burg","bsf","Burg Schattenfang"},
		{"lfg+bfd","lfm+bfd","Blackfathom","BFD","BFD"},
		{"lfg+verlies","lfm+verlies","verlies","","Verlies"},
		{"lfg+gnom","lfm+gnom","suche+gnom","gnom","Gnomeregan"},
		{"lfg+kral","lfm+kral","suche+kral","kfr","Kral von R."},
		{"lfg+fh","lfm+fh","fh","friedhof","Kloster/Friedhof"},
		{"lfg+bibi","lfm+bibi","","","Kloster/Bibi"},
		{"lfg+wk","lfm+wk","suche+kammer","Waffenkammer","Kloster/Waffenkammer"},
		{"lfg+kathe","lfm+kathe","suche+kathe","kathe","Kloster/Kathe"},
		{"lfg+h\195\188gel","lfm+h\195\188gel","hdk","h\195\188gel","H\195\188gel"},
		{"lfg+ulda","lfm+ulda","suche+ulda","uldaman","Uldaman"},
		{"lfg+zf","lfg+zul","lfm+zul","lfm+zf","Zul'Farrak"},
		{"Lfg+marau","lfm+marau","suche+maraudon","marau","Maraudon"},
		{"lfg+tempel","lfm+tempel","suche+tempel","tempel","Tempel-Atal'Hakkar"},
		{"lfg+brd","lfm+brd","suche+black","brd","BRD"},
		{"lfg+lbrs","lfm+lbrs","lbrs","","LBRS"},
		{"lfg+ubrs","lfm+ubrs","ubrs","","UBRS"},
		{"lfg+dm","d\195\188sterbruch+ost","dm+ost","DM","DM Ost"},
		{"lfg+dm","d\195\188sterbruch+west","dm+west","DM","DM West"},
		{"lfg+dm","d\195\188sterbruch+nord","dm+nord","DM","DM Nord"},
		{"lfg+scholo","lfm+scholo","suche+scholo","scholo","Scholomance"},
		{"lfg+strat","lfm+strat+living","strat","sh","Strat living"},
		{"lfg+strat","lfm+strat+undead","strat","sh","Strat undead"},
		{"","","","","Benutzerdefiniert A",""},
		{"","","","","Benutzerdefiniert B",""},
		{"","","","","Benutzerdefiniert C",""}
	},
enUS={
		{"lfg+rf","lfm+rf","ragefire","rf","RF"},
		{"lfg+hdw","lfm+hdw","hdw","","WC"},
		{"lfg+dm","lfm+dm","dm","","DM"},
		{"lfg+sfk","lfm+sfk","sfk","","SFK"},
		{"lfg+bfd","lfm+bfd","Blackfathom","BFD","BFD"},
		{"lfg+Stocks","lfm+Stocks","Stocks","","Stocks"},
		{"lfg+gnom","lfm+gnom","suche+gnom","gnom","Gnomeregan"},
		{"lfg+rfk","lfm+rfk","suche+rfk","RFK","RFK"},
		{"lfg+fh","lfm+fh","fh","friedhof","SM-GY"},
		{"lfg+lib","lfm+lib","SM+Lib","","SM-Lib"},
		{"lfg+Arm","lfm+Arm","sm+Arm","SM","SM-Arm"},
		{"lfg+Cath","lfm+Cath","sm+Cath","Cath","SM-Cath"},
		{"lfg+rfd","lfm+rfd","rfd","","RFD"},
		{"lfg+ulda","lfm+ulda","ulda","","Ulda"},
		{"lfg+zf","lfg+zul","lfm+zul","lfm+zf","Zul'Farrak"},
		{"Lfg+mara","lfm+mara","maraudon","Mara","Maraudon"},
		{"lfg+ST","lfm+ST","search+ST","tempel","ST"},
		{"lfg+brd","lfm+brd","brd","","BRD"},
		{"lfg+lbrs","lfm+lbrs","lbrs","","LBRS"},
		{"lfg+ubrs","lfm+ubrs","ubrs","","UBRS"},
		{"lfg+dm","Dire Maul","dm+e","DM","DM Eeast"},
		{"lfg+dm","Dire Maul","dm+w","DM","DM West"},
		{"lfg+dm","Dire Maul","dm+n","DM","DM North"},
		{"lfg+scholo","lfm+scholo","scholo","","Scholo"},
		{"lfg+strat","lfm+strat+living","strat","sh","Strat living"},
		{"lfg+strat","lfm+strat+undead","strat","sh","Strat undead"},
		{"","","","","custom A",""},
		{"","","","","custom B",""},
		{"","","","","custom C",""}
	}
}
CA.tooltips = {
deDE={
chkBtnSearchLFG = {"Suche nach Gruppe","LFG"},
chkBtnSearchLFM  = {"Gruppe sucht nach Spielern","LFM"},
chkBtnSearchTank  = {"Wenn LFG eingestellt ist, \ndann Deine Ausrichtung waehlen,\nandernfalls das was gesucht wird.","Tank"},
chkBtnSearchDD = {"Wenn LFG eingestellt ist, \ndann Deine Ausrichtung waehlen,\nandernfalls das was gesucht wird.","DD"},
chkBtnSearchHeal  = {"Wenn LFG eingestellt ist, \n dann Deine Ausrichtung waehlen\nandernfalls das was gesucht wird.","Heal"},
chkBtnLFG = {"Zeigt den Post in dem \"Suche nach Gruppe Channel\" an. \nIhr solltet den Kanal mit /join beigetreten sein.","SuchenNachGruppe"},
chkBtnGeneral = {"Zeigt den Post im Allgemein Channel an.\nIhr solltet den Kanal mit /join beigetreten sein.","Allgemein"},
chkBtnTrade = {"Zeigt den Post im Handels Channel an.\nIhr solltet den Kanal mit /join beigetreten sein. Nur in den Staeten","Handel"},
chkBtnPostGuild = {"Zeigt den Post im Gilden Chat an.","Gilde"},
chkBtnAutoPost = {"Automatisches Erinnerung fuer das erneute Posten.","Erinnerung"},
chkBtnActive= {"Wortsuche im oeffentlichen Channel aktivieren.","Aktiv"},
chkBtnSound= {"Pip Ton an/aus","Ton"},
chkBtnWithPlayer= {"Seine eigenen Suchposts werden nicht farblich angezeigt.","mein Post ignorieren"}, 
chkBtnGuild = {"Der Gildenchat soll mit durchsucht werden.","Gildenchat"},
chkBtnTooltip = {"Diese Hilfeanzeige abschalten.","Tooltip"},
chkBtnPlayerColor = {"Zeigt die Namen der Spieler im Chat \nfarblich nach ihrer Klasse an.","Klassen Farbe"},
chkBtnAntiSpam={"Erst nach 5 Mitspielerpost kann erneut gepostet werden.","Anti Spam"},
DDBoxDelay= {"Verzoegerung bis zum erneuten Erinnerung fuer das Posten in Sekunden."},
DDBoxTemplateSearch= {"Auswahl der Instanzen, dadurch wird das \nSuchwort fuer Dein Post und die Suchwoerter \nfuer den Chatfilter definiert (Optionen)."},
txtChat1={"Hier werden die Suchw\195\182rter eingetragen \ndie im einen Chatpost gesucht werden sollen.\nSie koennen mit + verknuepft werden\nz.B.: lfg+maraudon+dd "},
txtChat2={"Hier werden die Suchw\195\182rter eingetragen \ndie im einen Chatpost gesucht werden sollen.\nSie koennen mit + verknuepft werden\nz.B.: lfg+maraudon+dd "},
txtChat3={"Hier werden die Suchw\195\182rter eingetragen \ndie im einen Chatpost gesucht werden sollen.\nSie koennen mit + verknuepft werden\nz.B.: lfg+maraudon+dd "},
txtChat4={"Die vier Suchfelder koennen auch leer gelassen werden."},
txtAutoChat={"Hier sollte der Post stehen. \nWird nur bei Benutzerdefiniert gespeichert.\nNicht vergessen speichern zu druecken"},
btnSave={"Hier werden die Suchwoerter fuer die\nausgewaehlte Instanz (links oben) gespeichert.\nBei Benutzerdefiniert auch der Post.","Speichern"},
btnColor={"Hier wird die Farbe eingestellt,\nwomit das Suchwort eingefaerbt werden soll.","Farbe 1"},
btnColor2={"Hier wird die Farbe eingestellt,\nwomit der gesamte Post eingefaerbt werden soll.","Farbe 2"},
btnReset={"Wenn Fehler auftreten, dann bitte hier druecken","Reset wenn Fehler auftreten sollten."},
btnPostItNow={"Sofort Posten.",""},
btnClose={"\195\150ffne NaxxChatAlarm Einstellungen",""},
txtINI={"Der (INI)Name der beil LFG oder LFM eingefuegt wird. \nBei den benutzerdefinierten Datensaetzen wird der \nListenname geaendert."},
txtMerge1={"LFM Post Text der zusammengebaut wird.\nDer Platzhalter <ini> wird mit dem ausgewaehlten INI Name ersetzt.\nDer Platzhalter <player> wird mit den gesuchten Spielerrollen ersetzt."},
txtMerge2={"LFG Post Text der zusammengebaut wird.\nDer Platzhalter <ini> wird mit dem ausgewaehlten INI Name ersetzt.\nDer Platzhalter <player> wird mit Deiner Spielerrolle(n) ersetzt."},
txtSeperate={"Aendert das Trennzeichen,\nwomit Tank dd und Heal getrennt werden."},
lblLFMVari={"","LFM Vorlage. Platzhalter sind <ini> und <player>"},
lblLFGVari={"","LFG Vorlage. Platzhalter sind <ini> und <player>"},
lblSeperate={"","Trenner dd/heal/tank"},
lblPost={"","Dungeon Abk."},
lblColor1={"","Suchwort Farbe"},
lblColor2={"","Text Farbe"},
lblSec={"","Sek."},
lblDelay={"","Verz\195\182."},
lblSearch={"","Suchworte f\195\188r "}
},
enUS={
chkBtnSearchLFG = {"Search by group","LFG"},
chkBtnSearchLFM = {"Group searches for players","LFM"},
chkBtnSearchTank = {"If LFG is set, \nthen choose your alignment, \notherwise what will be searched.","Tank"},
chkBtnSearchDD = {"If LFG is set, \nthen choose your alignment, \notherwise what will be searched.","DD"},
chkBtnSearchHeal = {"If LFG is set, \nthen choose your alignment \notherwise what you are looking for.","Heal"},
chkBtnLFG = {"Displays the post in \"Looking for Group Channel\". \nYou should have joined the channel with /join.","LookingForGroup"},
chkBtnGeneral = {"Displays the post in the General Channel. \nYou should have joined the channel with /join.","General"},
chkBtnTrade = {"Displays the post in the trading channel. \nYou should have joined the channel with /join, only in the citys","Trade"},
chkBtnPostGuild = {"Displays the post in Guild Chat.","Guild"},
chkBtnAutoPost = {"With a sound reminder to post.","Remember/post"},
chkBtnActive = {"Enable word search in the public channel.","Active"},
chkBtnSound = {"Pip sound on / off","Sound"},
chkBtnWithPlayer = {"His own search posts are not displayed in color.","Ignore self"},
chkBtnGuild = {"The guild chat should be searched.","Guild"},
chkBtnTooltip = {"Display Tooltip.","Tooltip"},
chkBtnPlayerColor = {"Displays the names of the players in the chat by their class.","Class color"},
chkBtnAntiSpam= {"Every 5 lines of new mail is possible","Anti spam"},
DDBoxDelay = {"Delay to remember for new post in seconds."},
DDBoxTemplateSearch = {"Select instances, this will define the \nsearch for your post and the search words \nfor the chat filter (options)."},
txtChat1 = {"This is where the search words are to be entered \nto be searched in a chat post. \nYou can be linked with + \nz.B .: lfg+maraudon+dd"},
txtChat2 = {"This is where the search words are to be entered \nto be searched in a chat post. \nYou can be linked with + \nz.B .: lfg+maraudon+dd"},
txtChat3 = {"This is where the search words are to be entered \nto be searched in a chat post. \nYou can be linked with + \nz.B .: lfg+maraudon+dd"},
txtChat4 = {"The four search fields can also be left blank."},
txtAutoChat = {"This should be the post. \nIt will only be saved at Custom. \nNot forget to press save"},
btnSave = {"Here the search words for the selected instance (top left) are saved. \nIn custom also the post.","Save"},
btnColor={"Here the color is adjusted, \nwith which the search word should be colored.","Color 1"},
btnColor2={"Here, the color is set \nwith which the entire post should be inked.","Color 2"},
btnReset={"If errors occur, please press here","Reset by problems."},
btnPostItNow={"Post it now",""},
btnClose={"Open NaxxChatAlarm Options",""},
txtINI = {"The (INI) name that will be inserted with the LFG or LFM. \nIn the custom data sets, the \nListName will be changed."},
txtMerge1 = {"LFM Post text being assembled. \nThe placeholder <ini> will be replaced with the selected INI name. \nThe placeholder <player> will be replaced with the requested player roles."},
txtMerge2 = {"LFG post text being assembled. \nThe placeholder <ini> will be replaced with the selected INI name. \nThe placeholder <player> will be replaced with your player role (s)."},
txtSeperate={"Change the separator separating tank dd and heal."},
lblLFMVari={"","LFM Template <ini> and <player> are placeholder"},
lblLFGVari={"","LFG Template <ini> and <player> are placeholder"},
lblSeperate={"","Seperate dd/tank/heal"},
lblPost={"","Dungeon abbr."},
lblColor1={"","Searchword color"},
lblColor2={"","Text color"},
lblSec={"","Sec."},
lblDelay={"","Delay"},
lblSearch={"","Searchwords for "}
}}

function NcaFrame_OnEvent(self, event, msg, autor, ...)

	if (event=="ADDON_LOADED" ) then
		NcaFrame:RegisterEvent("GROUP_ROSTER_UPDATE");
		if (locale~="deDE") then locale="enUS"; end
		--locale="enUS";
		UIDropDownMenu_SetText(DDBoxTemplateSearch,CA.TemplateIni[locale][1]);
		if ChatAlarm.TemplateWords==nil then
			CA.reset();
		end
		if ( ChatAlarm.ver==nil or ChatAlarm.ver < 1.32) then
			CA.reset();
		end 
		ChatAlarm.ver=1.331;

		-- Spache umstellen 	
		local unpack = unpack;
		local pairs = pairs;

		local f;


		for k,v in pairs(CA.tooltips[locale]) do
			 f = _G[k]
-- ############################################## tooltip init
			 if not (string.find(k,"lbl")) then
			 _G[k]:SetScript("OnEnter", function()
							showToolTipp()
						end
						)
						_G[k]:SetScript("OnLeave", function()
							MyScanningTooltip:Hide();
						end
						)
			end
-- ############################################### chkbutton set text

			 if (string.find(k,"chkB")) then
				if f then
					_G[f:GetName().."Text"]:SetText (unpack(v,2))
					
				f = nil
				end
			 end
-- ############################################### btn und lbl set text
			 if (string.find(k,"btn")or string.find(k,"lbl")) then
				if f then
					f:SetText(unpack(v,2));
					if (string.find(k,"btn")) then
					
					end

				f = nil
				end
			 end
		end
-- 
		UIDropDownMenu_SetWidth(DDBoxDelay, 50);
		UIDropDownMenu_SetWidth(DDBoxTemplateSearch, 205);
		CA.color1=rgbToHex(ChatAlarm.r[1],ChatAlarm.g[1],ChatAlarm.b[1]);
		CA.color2=rgbToHex(ChatAlarm.r[2],ChatAlarm.g[2],ChatAlarm.b[2]);

		lblColor1:SetTextColor(ChatAlarm.r[1],ChatAlarm.g[1],ChatAlarm.b[1],1);
		lblColor2:SetTextColor(ChatAlarm.r[2],ChatAlarm.g[2],ChatAlarm.b[2],1);
-- ############################################### varible read
		for k,v in pairs(ChatAlarm) do
		f = _G[k]
			if (string.find(k,"chkB")) then
				f:SetChecked(v);
					
			end
			if (string.find(k,"txt")) then
				f:SetText(v);
			end
		end
		CA:DDBoxTemplateSearchRefresh()
		TimeDropDownOnSelect({value=ChatAlarm.DDBoxDelay},...);
		TemplateDropDownOnSelect({value=ChatAlarm.DDBoxTemplateSearch},...);
		txtMerge1:SetText(ChatAlarm.Merge[1]);
		txtMerge2:SetText(ChatAlarm.Merge[2]);
		if ChatAlarm.txtAutoChat~="" then
			txtAutoChat:SetText(ChatAlarm.txtAutoChat);
		end

	end
end

function CA:DDBoxTemplateSearchRefresh()
	for i=27,29 do
			CA.TemplateIni[locale][i]=ChatAlarm.TemplateWords[i][5];
	end
end

-- Daten zurücksetzten
function CA:reset()
			ChatAlarm={
			r={1,0},g={0,1},b={0,0},
			chkBtnActive=true,chkBtnSound=true,chkBtnWithPlayer=false,chkBtnGuild=false,
			chkBtnLFG=true,chkBtnGeneral=false,chkBtnTrade=false,chkBtnPostGuild=false,
			chkBtnSearchLFG=true,chkBtnSearchLFM=false,chkBtnSearchTank=false,chkBtnSearchHeal=false,chkBtnSearchDD=true,
			DDBoxTemplateSearch=1,DDBoxDelay=1,chkBtnTooltip=true,chkBtnPlayerColor=true,chkBtnAntiSpam=true,txtAutoChat="",txtSeperate="/"}
			ChatAlarm.TemplateWords=CA.TemplateWords[locale];
			ChatAlarm.Merge=CA.merge[locale];
end

