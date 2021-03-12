
AdiBagsDB = {
	["char"] = {
		["Samoanlegend - Grobbulus"] = {
			["collapsedSections"] = {
				["Bag #3#Bag #3"] = true,
				["Bag #2#Bag #2"] = true,
				["Bag #4#Bag #4"] = true,
				["Bag #1#Bag #1"] = true,
			},
		},
		["Samoanmystic - Grobbulus"] = {
			["collapsedSections"] = {
				["Bag #4#Bag #4"] = true,
				["Bag #3#Bag #3"] = true,
				["Bag #1#Bag #1"] = true,
				["Bag #2#Bag #2"] = true,
				["Bank bag #1#Bank bag #1"] = true,
				["Bank bag #2#Bank bag #2"] = true,
			},
		},
		["Samoanranger - Grobbulus"] = {
			["collapsedSections"] = {
				["Bag #4#Bag #4"] = true,
				["Bag #1#Bag #1"] = true,
				["Bag #3#Bag #3"] = true,
				["Bag #2#Bag #2"] = true,
				["Bank bag #1#Bank bag #1"] = true,
				["Bank bag #2#Bank bag #2"] = true,
			},
		},
		["Samoansage - Grobbulus"] = {
			["collapsedSections"] = {
				["Bag #2#Bag #2"] = true,
				["Bag #4#Bag #4"] = true,
				["Bag #3#Bag #3"] = true,
			},
		},
	},
	["namespaces"] = {
		["ItemLevel"] = {
		},
		["FilterOverride"] = {
			["profiles"] = {
				["Default"] = {
					["version"] = 3,
				},
				["KokonutKrew"] = {
					["version"] = 3,
					["overrides"] = {
						[20742] = "Quest#Quest",
						[11130] = "Trade Goods#Parts",
						[20558] = "Quest#Quest",
						[20559] = "Quest#Quest",
						[6339] = "Trade Goods#Parts",
						[8393] = "Trade Goods#Trade Goods",
						[8394] = "Trade Goods#Trade Goods",
						[21323] = "Equipment#Miscellaneous",
						[8396] = "Trade Goods#Trade Goods",
						[19120] = "Equipment#Jewelry",
						[5665] = "Equipment#Miscellaneous",
						[19440] = "Consumable#Consumable",
						[4390] = "Consumable#Consumable",
						[22722] = "Miscellaneous#Miscellaneous",
						[16309] = "Quest#Quest",
						[12404] = "Consumable#Consumable",
						[6219] = "Trade Goods#Parts",
						[11145] = "Trade Goods#Parts",
						[21218] = "Equipment#Miscellaneous",
						[20402] = "Quest#Quest",
						[18262] = "Consumable#Consumable",
						[18641] = "Consumable#Consumable",
						[6948] = "Equipment#Miscellaneous",
						[9327] = "Quest#Quest",
						[12460] = "Consumable#Consumable",
						[6218] = "Trade Goods#Parts",
						[11754] = "Reagent#Reagent",
						[13180] = "Consumable#Consumable",
						[4398] = "Consumable#Consumable",
						[21324] = "Equipment#Miscellaneous",
						[9173] = "Trade Goods#Parts",
						[20560] = "Quest#Quest",
						[8392] = "Trade Goods#Trade Goods",
						[5956] = "Trade Goods#Parts",
						[12451] = "Consumable#Consumable",
						[8391] = "Trade Goods#Trade Goods",
					},
				},
			},
		},
		["ItemCategory"] = {
			["profiles"] = {
				["KokonutKrew"] = {
					["splitBySubclass"] = {
						["Recipe"] = true,
						["Consumable"] = true,
						["Trade Goods"] = true,
						["Miscellaneous"] = true,
					},
				},
			},
		},
		["NewItem"] = {
		},
		["Equipment"] = {
		},
		["ClassicItemLevel"] = {
		},
		["MoneyFrame"] = {
		},
		["Junk"] = {
			["profiles"] = {
				["KokonutKrew"] = {
					["exclude"] = {
						[20742] = true,
					},
				},
			},
		},
		["DataSource"] = {
		},
		["ItemRackSets"] = {
			["profiles"] = {
				["KokonutKrew"] = {
					["singleGroup"] = true,
				},
			},
		},
		["AdiBags_TooltipInfo"] = {
		},
	},
	["profileKeys"] = {
		["Samoanraja - Grobbulus"] = "Default",
		["Samoanmystic - Grobbulus"] = "KokonutKrew",
		["Samoanslayer - Grobbulus"] = "KokonutKrew",
		["Samoanlegend - Grobbulus"] = "Default",
		["Kk - Grobbulus"] = "Default",
		["Samoanbeast - Grobbulus"] = "Default",
		["Ss - Grobbulus"] = "Default",
		["Samoansage - Grobbulus"] = "Default",
		["Samoansavage - Grobbulus"] = "Default",
		["Samoanranger - Grobbulus"] = "Default",
		["Samoanrelic - Grobbulus"] = "Default",
		["Dd - Grobbulus"] = "Default",
	},
	["profiles"] = {
		["Default"] = {
			["positions"] = {
				["anchor"] = {
					["xOffset"] = -278.517211914063,
					["yOffset"] = 218.962936401367,
				},
			},
		},
		["KokonutKrew"] = {
			["positions"] = {
				["anchor"] = {
					["xOffset"] = -100.739868164063,
					["yOffset"] = 124.147300720215,
				},
				["Bank"] = {
					["xOffset"] = 355.619658619458,
					["yOffset"] = -205.844301875099,
				},
				["Backpack"] = {
					["xOffset"] = -86.5185333711124,
					["yOffset"] = 150.222328898643,
				},
			},
			["sortingOrder"] = "byQualityAndLevel",
			["positionMode"] = "manual",
		},
	},
}
