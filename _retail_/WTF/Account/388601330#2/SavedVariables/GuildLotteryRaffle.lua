
glrHistory = {
	["TransferData"] = {
	},
	["MultiGuildStatus"] = {
		["Kkimport-EmeraldDream"] = false,
	},
	["GuildStatus"] = {
		["Horde"] = {
		},
		["Alliance"] = {
		},
	},
	["CrossFaction"] = {
		["Kkimport-EmeraldDream"] = false,
	},
	["Names"] = {
		"Kkimport-EmeraldDream", -- [1]
	},
	["Updated"] = 1624237878,
	["BulkDebug"] = {
		["Kkimport-EmeraldDream"] = {
		},
	},
	["Settings"] = {
		["Lottery"] = {
			["Mail"] = {
				"Lottery", -- [1]
				"Guild Lottery", -- [2]
			},
			["Commands"] = {
				"lottery", -- [1]
			},
		},
		["LastDebugUpdate"] = {
			["Kkimport-EmeraldDream"] = "06/20/2021 - 19:13.14",
		},
		["Raffle"] = {
			["Mail"] = {
				"Raffle", -- [1]
				"Guild Raffle", -- [2]
			},
			["Commands"] = {
				"raffle", -- [1]
			},
		},
	},
	["PlayerFaction"] = {
		["Kkimport-EmeraldDream"] = "Alliance",
	},
	["GuildFaction"] = {
		["Horde"] = {
		},
		["Alliance"] = {
		},
	},
	["Debug"] = {
		["Kkimport-EmeraldDream"] = {
			"06/20/2021 - 19:11.07 - RETAIL - -------------------------------------------------------------------------------------", -- [1]
			"06/20/2021 - 19:11.07 - RETAIL - OnInitialize() - Beginning Initialization of Version: 3.1.25", -- [2]
			"06/20/2021 - 19:11.07 - RETAIL - UpdateMinimapIcon() - Initialized Minimap Coords To: (-75, -50)", -- [3]
			"06/20/2021 - 19:11.37 - RETAIL - PLAYER_LOGIN() - Login Function Complete", -- [4]
			"06/20/2021 - 19:11.37 - RETAIL - Initialize() - Preforming Initialize Function", -- [5]
			"06/20/2021 - 19:11.37 - RETAIL - UpdateRosterTable() - Updated glrRoster Table", -- [6]
			"06/20/2021 - 19:11.37 - RETAIL - UpdateInfo() - Preforming Initial Update of Display Info", -- [7]
			"06/20/2021 - 19:11.37 - RETAIL - UpdateMultiGuildTable() - Updated glrHistory.GuildRoster Table", -- [8]
			"06/20/2021 - 19:11.37 - RETAIL - UpdateMultiGuildTable() - Initialized PopulateMultiGuildTable Table", -- [9]
			"06/20/2021 - 19:11.37 - RETAIL - UpdateInfo() - Initial Update of Display Info Completed", -- [10]
			"06/20/2021 - 19:11.59 - RETAIL - CheckForNonexistingPlayersBuffer() - Beginning Check for Non-Existing Player Entries.", -- [11]
			"06/20/2021 - 19:12.07 - RETAIL - Initialization() - Initialization Function Complete. Time To Completion: 11 Seconds.", -- [12]
			"06/20/2021 - 19:13.14 - RETAIL - PLAYER_LOGOUT() - Preforming Logout Function", -- [13]
			"06/20/2021 - 19:13.14 - RETAIL - PLAYER_LOGOUT() - Logout Function Complete", -- [14]
		},
	},
	["GuildRoster"] = {
		["Horde"] = {
		},
		["Alliance"] = {
		},
	},
	["TransferAvailable"] = {
		["Raffle"] = {
			["Kkimport-EmeraldDream"] = false,
		},
		["Lottery"] = {
			["Kkimport-EmeraldDream"] = false,
		},
	},
	["DrawState"] = {
		["Horde"] = {
		},
		["Alliance"] = {
			["Kkimport-EmeraldDream"] = false,
		},
	},
	["ActiveEvents"] = {
		["Kkimport-EmeraldDream"] = false,
	},
	["GuildRanks"] = {
		["Horde"] = {
		},
		["Alliance"] = {
		},
	},
	["Profile"] = {
		["Lottery"] = {
			["Kkimport-EmeraldDream"] = {
				["GuildCut"] = "0",
				["Guaranteed"] = false,
				["TicketPrice"] = "0",
				["MaxTickets"] = "0",
				["SecondPlace"] = "0",
				["StartingGold"] = "0",
			},
		},
		["Messages"] = {
			["Lottery"] = {
				["Kkimport-EmeraldDream"] = {
					"Guild Lottery & Raffles v%version", -- [1]
					"A Lottery is scheduled for: %lottery_date", -- [2]
					"Lottery Event Name: %lottery_name", -- [3]
					"Tickets are %lottery_price each.", -- [4]
					"A maximum of %lottery_max tickets can be bought per person.", -- [5]
					"The Jackpot is currently: %lottery_winamount", -- [6]
					"Whisper '!lottery' for more details.", -- [7]
					false, -- [8]
				},
			},
			["Both"] = {
				["Kkimport-EmeraldDream"] = {
					"Guild Lottery & Raffles v%version", -- [1]
					"A Lottery and Raffle are scheduled for:", -- [2]
					"Lottery: %lottery_date, Raffle: %raffle_date", -- [3]
					"Lottery Event Name: %lottery_name, Raffle Event Name: %raffle_name.", -- [4]
					"Lottery: Tickets are %lottery_price each.", -- [5]
					"Lottery: A maximum of %lottery_max tickets can be bought per person.", -- [6]
					"Lottery: The Jackpot is currently %lottery_winamount", -- [7]
					"Raffle: Tickets are %raffle_price each.", -- [8]
					"Raffle: A maximum of %raffle_max tickets can be bought per person.", -- [9]
					"Raffle: %raffle_tickets Raffle Tickets have been bought.", -- [10]
					"Whisper '!lottery' for more Lottery details. Whisper '!raffle' for more Raffle details.", -- [11]
					false, -- [12]
				},
			},
			["Raffle"] = {
				["Kkimport-EmeraldDream"] = {
					"Guild Lottery & Raffles v%version", -- [1]
					"A Raffle is scheduled for: %raffle_date", -- [2]
					"Raffle Event Name: %raffle_name", -- [3]
					"Tickets are %raffle_price each.", -- [4]
					"A maximum of %raffle_max tickets can be bought per person.", -- [5]
					"%raffle_tickets Raffle Tickets have been bought.", -- [6]
					"GLR: Raffle Prize(s): %raffle_prizes", -- [7]
					"Whisper '!raffle' for more details.", -- [8]
					false, -- [9]
				},
			},
		},
		["Raffle"] = {
			["Kkimport-EmeraldDream"] = {
				["InvalidItems"] = false,
				["MaxTickets"] = "0",
				["TicketPrice"] = "0",
			},
		},
	},
	["CharacterGuilds"] = {
	},
	["LastUpdated"] = {
		["Horde"] = {
		},
		["Alliance"] = {
		},
	},
	["Whispers"] = {
		["Kkimport-EmeraldDream"] = {
			false, -- [1]
			false, -- [2]
			{
				"Default messages via Whisper are always sent. Any message typed here is sent after.\n\nSimply press ENTER to perform a line break, starting a new message. Multiple line breaks will not result in blank messages.", -- [1]
				"Default messages via Whisper are always sent. Any message typed here is sent after.\n\nSimply press ENTER to perform a line break, starting a new message. Multiple line breaks will not result in blank messages.", -- [2]
			}, -- [3]
		},
	},
	["PlayerClass"] = {
		["Horde"] = {
		},
		["Alliance"] = {
			["Kkimport-EmeraldDream"] = "WARLOCK",
		},
	},
	["Version"] = "3.1.25",
	["lang"] = "enUS",
	["TransferStatus"] = {
		["Raffle"] = {
			["Kkimport-EmeraldDream"] = false,
		},
		["Lottery"] = {
			["Kkimport-EmeraldDream"] = false,
		},
	},
}
guildData = {
}
