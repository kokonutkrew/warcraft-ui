
AdiBagsDB = {
	["char"] = {
		["Samoansage - Grobbulus"] = {
			["collapsedSections"] = {
				["Bag #2#Bag #2"] = true,
				["Bag #4#Bag #4"] = true,
				["Bag #3#Bag #3"] = true,
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
		["Samoanlegend - Grobbulus"] = {
			["collapsedSections"] = {
				["Bag #1#Bag #1"] = true,
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
						[8391] = "Trade Goods#Trade Goods",
						[6218] = "Trade Goods#Parts",
						[11754] = "Reagent#Reagent",
						[5956] = "Trade Goods#Parts",
						[4398] = "Consumable#Consumable",
						[8392] = "Trade Goods#Trade Goods",
						[9173] = "Trade Goods#Parts",
						[20560] = "Quest#Quest",
						[21324] = "Equipment#Miscellaneous",
						[13180] = "Consumable#Consumable",
						[12451] = "Consumable#Consumable",
						[12460] = "Consumable#Consumable",
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
		["AdiBags_TooltipInfo"] = {
		},
		["ItemRackSets"] = {
			["profiles"] = {
				["KokonutKrew"] = {
					["singleGroup"] = true,
				},
			},
		},
		["DataSource"] = {
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
		["MoneyFrame"] = {
		},
	},
	["profileKeys"] = {
		["Samoanlegend - Grobbulus"] = "Default",
		["Samoanslayer - Grobbulus"] = "KokonutKrew",
		["Samoanbeast - Grobbulus"] = "Default",
		["Ss - Grobbulus"] = "Default",
		["Samoansavage - Grobbulus"] = "Default",
		["Dd - Grobbulus"] = "Default",
		["Samoanraja - Grobbulus"] = "Default",
		["Samoanranger - Defias Pillager"] = "Default",
		["Samoanmystic - Grobbulus"] = "KokonutKrew",
		["Samoanbank - Whitemane"] = "Default",
		["Bannhammer - Skull Rock"] = "Default",
		["Kk - Grobbulus"] = "Default",
		["Goldenshots - Defias Pillager"] = "Default",
		["Øø - Skull Rock"] = "Default",
		["Samoansage - Grobbulus"] = "Default",
		["Cupcakeheals - Skull Rock"] = "Default",
		["Samoanranger - Grobbulus"] = "Default",
		["Samoanrelic - Grobbulus"] = "Default",
		["Samoanbeast - Skull Rock"] = "Default",
	},
	["profiles"] = {
		["Default"] = {
			["experiments"] = {
				["Bag Lag Fix"] = {
					["Enabled"] = false,
					["Name"] = "Bag Lag Fix",
					["Description"] = "This experiment will fix the lag when opening bags via per-item change draws instead of full redraws.",
					["Percent"] = 1,
				},
			},
			["positions"] = {
				["anchor"] = {
					["xOffset"] = -278.517211914063,
					["yOffset"] = 218.962936401367,
				},
			},
		},
		["KokonutKrew"] = {
			["sortingOrder"] = "byQualityAndLevel",
			["positions"] = {
				["anchor"] = {
					["xOffset"] = -100.739868164063,
					["yOffset"] = 124.147300720215,
				},
				["Backpack"] = {
					["xOffset"] = -86.5185333711124,
					["yOffset"] = 150.222328898643,
				},
				["Bank"] = {
					["xOffset"] = 355.619658619458,
					["yOffset"] = -205.844301875099,
				},
			},
			["positionMode"] = "manual",
		},
	},
}
