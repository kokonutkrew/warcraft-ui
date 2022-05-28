

function GRA_OnLoad(self)
	GRAWatchForMailInboxUpdate = 0;
	-- Note: need to add guild joining/leaving 
	-- money making events
	self:RegisterEvent("CHAT_MSG_MONEY");
	self:RegisterEvent("CHAT_MSG_SYSTEM");
	self:RegisterEvent("MERCHANT_SHOW");
	self:RegisterEvent("MERCHANT_CLOSED");
	-- Tax notification events
	self:RegisterEvent("PLAYER_ENTERING_WORLD");
	self:RegisterEvent("GUILD_ROSTER_UPDATE");
	self:RegisterEvent("GUILD_MOTD");
	self:RegisterEvent("CHAT_MSG_GUILD");
	self:RegisterEvent("CHAT_MSG_WHISPER");
	-- Mail -- tax auction money
	-- Guild bank access
	self:RegisterEvent("GUILDBANKBAGSLOTS_CHANGED");
	-- other required events
	self:RegisterEvent("ADDON_LOADED");
	-- slash command
	SLASH_GRA1 = "/gra";
	SlashCmdList["GRA"] = function(msg, editBox)
		if msg == "reset" then
			print("|cFF8040FFGRA|r: Tax due reset!");
			GRATaxDue = 0;
		elseif msg == "quiet" then
			GRAQuietMode = 1;
			print("|cFF8040FFGRA|r: Quiet mode enabled.");
		elseif msg == "verbose" then
			GRAQuietMode = 0;
			print("|cFF8040FFGRA|r: Verbose mode enabled.");
		elseif msg == "help" then
			print("|cFF8040FFGRA|r: Version: "..GetAddOnMetadata("GRA","Version")); 
			print("To use, all guild members that will be taxed must have the add-on installed.");
			print("Set the tax rate by including in the Guild Info text a string in the format |cFF00FFFFtax = 10%|r (or whetever percentage you want)");
			print("Tax rates can be overriden for individual members by including a tax = xx% in the officer notes for the guild member (where xx is the tax percentage)");
			print("Tax rate defaults to 10% if not specified in the guild info/officer notes.");
			print("Income from loot, quest rewards & auction house will be taxed. Individual player transactions are not taxed. Any tax due will be automatically deposited (assuming the member has funds) next time the member opens the guild bank.");
			print("Slash commands usable by members:");
			print("|cFF8040FF/gra help|r -- prints this message");
			print("|cFF8040FF/gra reset|r -- reset tax due");
			print("|cFF8040FF/gra quiet|r -- turn on quiet(ish) mode, user won't get notified when amounts are taxed");
			print("|cFF8040FF/gra verbose|r -- turn on verbose mode (default), user will be notified of amounts taxed");
			print("|cFF8040FF/gra|r -- display version, current tax due and total tax paid");
			print("Officer commands:");
			print("Officers can type the commands below in the guild chat or in a private tell to a guild member. The addon on each member's computer will reply automatically.");
			print("|cFF8040FF!graaudit|r -- audit the installation of GRA. If GRA is installed, each player will automatically whisper back with a message confirming the addon is installed, the current tax due and tax paid to date.");
			print("|cFF8040FF!graguild|r -- like !graaudit, but replies will be sent to guild chat instead of being whispered back privately.");
			print("|cFF8040FF!graupdate|r -- after updating the tax rate in the Guild Info/Officer Notes, force the addon to load the new tax rate.");
			print("The addon will ignore !gra*** messages unless the player who sent the message is rank 5 or higher in the guild hierarchy (typically an officer).");
		else
			print("|cFF8040FFGRA|r: Version: "..GetAddOnMetadata("GRA","Version")); 
			print(format("|cFF8040FFGRA|r: Current Tax Rate: %d%%", GRATaxPercentage)); 
			print("|cFF8040FFGRA|r: Current Tax Due: "..GetCoinText(GRATaxDue)); 
			print("|cFF8040FFGRA|r: Total Tax Paid: "..GetCoinText(GRATaxToDate));
		end
	end
	local origTakeInboxMoney = TakeInboxMoney;
	TakeInboxMoney = function(...)
		local index = ...;
		local invoiceType, itemName, playerName, bid, buyout, deposit, consignment = GetInboxInvoiceInfo(index);
		if invoiceType == "seller" then
			local packageIcon, stationeryIcon, sender, subject, money, CODAmount, daysLeft, hasItem, wasRead, wasReturned, 
				textCreated, canReply, isGM = GetInboxHeaderInfo(index);
			if money > 0 then
				local taxMoney = money*GRATaxPercentage/100;
				if taxMoney > 0 then
					if GRAQuietMode == 0 then
						print(format("|cFF8040FFGRA|r: Taxed auction house revenue: %s", GetCoinText(taxMoney)));
					end
					GRATaxDue = GRATaxDue + taxMoney;
				end
			end
		end
		origTakeInboxMoney(...);
	end
end

local function GRA_UpdateTaxAfterTransaction()
	local newMoney = GetMoney();
	if newMoney > GRACurrentMoney then
		local taxMoney = (newMoney - GRACurrentMoney)*GRATaxPercentage/100;
		GRATaxDue = GRATaxDue + taxMoney;
		if taxMoney>0 then
			if GRAQuietMode == 0 then
				print(format("|cFF8040FFGRA|r: Taxed sales: %s", GetCoinText(taxMoney)));
			end
		end
		-- prevent double taxation in case events fire twice
		GRACurrentMoney = newMoney;
	end
end

local function GRA_UpdateTaxAfterQuestOrLoot(chatmsg)
	-- parse the message
	local gold = tonumber(chatmsg:match("(%d+)%s" .. GRAGoldStr)) or 0;
	local silver = tonumber(chatmsg:match("(%d+)%s" .. GRASilverStr)) or 0;
	local copper = tonumber(chatmsg:match("(%d+)%s" .. GRACopperStr)) or 0;
	local newMoney = gold * COPPER_PER_GOLD + silver * COPPER_PER_SILVER + copper;
	local taxMoney = newMoney*GRATaxPercentage/100;
	if taxMoney > 0 then
		if GRAQuietMode == 0 then
			print(format("|cFF8040FFGRA|r: Taxed loot/quest: %s", GetCoinText(taxMoney)));
		end
		GRATaxDue = GRATaxDue + taxMoney;
	end
end

local function GRA_UpdateTaxRate()
	local guildInfo = GetGuildInfoText();
	if guildInfo == nil or guildInfo == "" then
		return;
	end
	local newRateText = "nothing";
	local newRate;
	-- first check officer's note for player
	local whoami = UnitName("player");
	local i;
	for i=1, GetNumGuildMembers() do
		local playerName,_,_,_,_,_,_,officerNote = GetGuildRosterInfo(i);
		if playerName == whoami or playerName == whoami.."-"..GetRealmName() then
			if officerNote ~= nil then
				newRateText = officerNote:lower();
			end
			break;
		end
	end
	newRate = newRateText:match("tax%s*[:=]?%s*(%d+)%%");
	if newRate == nil then
		-- not found in officer's note, search GuildInfoText
		newRateText = GetGuildInfoText();
		if newRateText ~= nil then
			newRate = newRateText:lower():match("tax%s*[:=]?%s*(%d+)%%");
		end
	end
	if newRate == nil then
		newRate = 10;
	else
		newRate = tonumber(newRate);
		if newRate > 100 or newRate < 0 then 
			newRate = 10;
		end
	end
	if newRate ~= GRATaxPercentage then
		GRATaxPercentage = newRate;
		print(format("|cFF8040FFGRA|r: Tax Rate: %d%%", GRATaxPercentage));
	end
end

local function GRA_AuditCommand(command, sender)
	if command:find("!gra") ~= nil then
		-- only rank 5 or higher should be able to issue that command
		local i;
		local found = 0;
		for i=1, GetNumGuildMembers() do
			local playerName,_,playerRank = GetGuildRosterInfo(i);
			-- player name may be in format name-server
			if playerName == sender or playerName == sender.."-"..GetRealmName() then
				-- this can be optimized to check for specific permissions
				-- of the rank and cache the minimum level at load time
				-- instead of hardcoding rank 5
				found = 1;
				if playerRank < 5 then
					if command == "!graaudit" then
						SendChatMessage("GRA Active, Rate: "..GRATaxPercentage.."%, Tax due: "..GetCoinText(GRATaxDue)..", Paid to date: "..GetCoinText(GRATaxToDate),
							"WHISPER", nil, sender);
					elseif command == "!graguild" then
						SendChatMessage("GRA Active, Rate: "..GRATaxPercentage.."%, Tax due: "..GetCoinText(GRATaxDue)..", Paid to date: "..GetCoinText(GRATaxToDate),
							"GUILD", nil, nil);
					elseif command == "!graupdate" then
						GRA_UpdateTaxRate();
					end
					break;
				else
				end
			end
		end
	end
end

local function GRA_PayTax()
	local toPay;
	-- can we even pay the whole amount of the tax?
	if GetMoney() > GRATaxDue then
		toPay = GRATaxDue;
	else
		toPay = GetMoney();
	end
	-- anything to pay?
	if toPay > 0 then
		-- calculate how much money we need to have after depositing
		DepositGuildBankMoney(toPay);
		--SendChatMessage("Guild Tax deposited: "..GetCoinText(toPay), "GUILD");
		GRATaxDue = GRATaxDue - toPay;
		GRATaxToDate = GRATaxToDate + toPay;
	end
end

function GRA_OnEvent(self, event, ...)
	local arg1, arg2 = ...;
	if event == "ADDON_LOADED" then
		if arg1 == "GRA" then
			-- first time we load the addon, GRATaxDue/GRATaxPercentage will be nil
			if GRATaxDue == nil then
				GRATaxDue = 0;
			end
			if GRATaxToDate == nil then
				GRATaxToDate = 0;
			end
			if GRATaxPercentage == nil then
				GRATaxPercentage = 0;
			end
			if GRAQuietMode == nil then
				GRAQuietMode = 1;
			end
			GRACurrentMoney = GetMoney();
			-- Figure out what GOLD, SILVER, and COPPER are in the client language 
			GRAGoldStr = strmatch(format(GOLD_AMOUNT, 20), "%d+%s(.+)") -- This will return what's in the brackets, which on enUS would be "Gold"
			GRASilverStr = strmatch(format(SILVER_AMOUNT, 20), "%d+%s(.+)")
			GRACopperStr = strmatch(format(COPPER_AMOUNT, 20), "%d+%s(.+)")
			-- print welcome message
			print("|cFF8040FFGuild Revenue Agent|r version "..GetAddOnMetadata("GRA","Version")..". Type |cFF8040FF/gra help|r for help."); 
		end
	elseif event == "PLAYER_ENTERING_WORLD" then
		GRA_UpdateTaxRate();	-- pull guild info on entering world
	elseif event == "GUILD_ROSTER_UPDATE" then
		GRA_UpdateTaxRate();
	elseif event == "CHAT_MSG_GUILD" or event == "CHAT_MSG_WHISPER" then
		GRA_AuditCommand(arg1, arg2);
	elseif event == "MERCHANT_SHOW" then
		GRACurrentMoney = GetMoney();
	elseif event == "MERCHANT_CLOSED" then
		GRA_UpdateTaxAfterTransaction();
	elseif event == "CHAT_MSG_MONEY" or event == "CHAT_MSG_SYSTEM" then
		GRA_UpdateTaxAfterQuestOrLoot(arg1);
	elseif event == "GUILDBANKBAGSLOTS_CHANGED" then
		GRA_PayTax();
	end
end
