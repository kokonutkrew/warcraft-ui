
glrCharacter = {
	["Updated"] = 1618546927,
	["Raffle"] = {
		["MessageStatus"] = {
		},
		["Entries"] = {
			["TicketRange"] = {
			},
			["TicketNumbers"] = {
			},
			["Tickets"] = {
			},
			["Names"] = {
			},
		},
		["TicketPool"] = {
		},
	},
	["PreviousEvent"] = {
		["Raffle"] = {
			["Settings"] = {
			},
			["Data"] = {
			},
			["Available"] = false,
		},
		["Lottery"] = {
			["Settings"] = {
				["NoGuildCut"] = false,
				["RoundValue"] = 1,
				["WonType"] = {
					true, -- [1]
					false, -- [2]
				},
			},
			["Data"] = {
			},
			["Available"] = false,
		},
	},
	["Lottery"] = {
		["MessageStatus"] = {
		},
		["Entries"] = {
			["TicketRange"] = {
			},
			["TicketNumbers"] = {
			},
			["Tickets"] = {
			},
			["Names"] = {
			},
		},
		["TicketPool"] = {
		},
	},
	["Data"] = {
		["Defaults"] = {
			["LotteryJackpot"] = "0",
			["LotteryDate"] = "Apr 15th, 2021",
			["LotteryMaxTickets"] = "0",
			["RaffleName"] = "No Raffle Active",
			["GuildCut"] = "0",
			["LotteryName"] = "No Lottery Active",
			["TicketPrice"] = "0",
			["RaffleMaxTickets"] = "0",
			["StartingGold"] = "0",
			["SecondCut"] = "0",
		},
		["Version"] = "3.1.25",
		["Raffle"] = {
			["SecondPrizeData"] = {
				["ItemLink"] = {
				},
				["ItemName"] = {
				},
			},
			["ThirdPrizeData"] = {
				["ItemLink"] = {
				},
				["ItemName"] = {
				},
			},
			["FirstPrizeData"] = {
				["ItemLink"] = {
				},
				["ItemName"] = {
				},
			},
		},
		["Settings"] = {
			["CurrentlyActiveLottery"] = false,
			["General"] = {
				["LastAlert"] = 0,
				["DisableLoginMessages"] = false,
				["ExportHeader"] = true,
				["ExportTypeKey"] = 1,
				["ExportFormatKey"] = 1,
				["AnnounceAutoAbort"] = false,
				["RaffleSeries"] = 1000,
				["ReplyToSender"] = false,
				["Status"] = "Lottery",
				["MinimapEdge"] = true,
				["TicketSeries"] = 1000,
				["MinimapXOffset"] = -75,
				["enabled"] = true,
				["TimeFormatKey"] = 1,
				["CreateCalendarEvents"] = false,
				["SendLargeInfo"] = false,
				["mini_map"] = true,
				["CrossFactionEvents"] = false,
				["LastDebugUpdate"] = "04/15/2021 - 22:28.01",
				["MultiGuild"] = false,
				["UserName"] = "Urorincar-EmeraldDream",
				["AdvancedTicketDraw"] = false,
				["DateFormatKey"] = 1,
				["TimeBetweenAlerts"] = 60,
				["ToggleChatInfo"] = false,
				["ToggleEscape"] = true,
				["MinimapYOffset"] = -50,
				["GuildName"] = "",
			},
			["Raffle"] = {
				["InverseAnnounce"] = false,
				["AllowMultipleRaffleWinners"] = false,
			},
			["Profile"] = {
				["Raffle"] = {
					["InvalidItems"] = false,
					["MaxTickets"] = "0",
					["TicketPrice"] = "0",
				},
				["Lottery"] = {
					["GuildCut"] = "0",
					["Guaranteed"] = false,
					["TicketPrice"] = "0",
					["MaxTickets"] = "0",
					["SecondPlace"] = "0",
					["StartingGold"] = "0",
				},
			},
			["Lottery"] = {
				["WinChanceKey"] = 5,
				["NoGuildCut"] = false,
				["RoundValue"] = 1,
				["RollOverCheck"] = false,
				["CarryOver"] = false,
			},
			["PreviousLottery"] = {
				["Jackpot"] = 0,
				["TicketsSold"] = 0,
				["TicketPrice"] = 0,
			},
			["CurrentlyActiveRaffle"] = false,
		},
		["Messages"] = {
			["GuildAlerts"] = {
				["Lottery"] = {
					"Guild Lottery & Raffles v%version", -- [1]
					"A Lottery is scheduled for: %lottery_date", -- [2]
					"Lottery Event Name: %lottery_name", -- [3]
					"Tickets are %lottery_price each.", -- [4]
					"A maximum of %lottery_max tickets can be bought per person.", -- [5]
					"The Jackpot is currently: %lottery_winamount", -- [6]
					"Whisper '!lottery' for more details.", -- [7]
					false, -- [8]
				},
				["Both"] = {
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
				["Raffle"] = {
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
		["RollOver"] = {
			["Raffle"] = {
			},
			["Lottery"] = {
				["Check"] = {
				},
				["Names"] = {
				},
			},
		},
		["OtherStatus"] = {
			["Raffle"] = {
			},
			["Lottery"] = {
			},
		},
	},
	["Event"] = {
		["Raffle"] = {
		},
		["Lottery"] = {
		},
	},
}
