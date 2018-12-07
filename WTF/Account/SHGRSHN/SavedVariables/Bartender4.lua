
Bartender4DB = {
	["namespaces"] = {
		["StatusTrackingBar"] = {
			["profiles"] = {
				["KokonutKrew"] = {
					["enabled"] = true,
					["version"] = 3,
					["position"] = {
						["y"] = 52,
						["x"] = -256,
						["point"] = "BOTTOM",
						["scale"] = 0.629999995231628,
					},
					["visibility"] = {
						["custom"] = true,
						["customdata"] = "[@target,exists]show;[combat]show;[petbattle]hide;[overridebar]hide;[vehicleui]hide;fade\n",
					},
					["fadeoutalpha"] = 0.05,
				},
			},
		},
		["ActionBars"] = {
			["profiles"] = {
				["KokonutKrew"] = {
					["actionbars"] = {
						{
							["showgrid"] = true,
							["version"] = 3,
							["position"] = {
								["y"] = 41.75,
								["x"] = -253.999984741211,
								["point"] = "BOTTOM",
							},
							["fadeoutalpha"] = 0.95,
							["padding"] = 6,
							["visibility"] = {
								["custom"] = true,
								["customdata"] = "[@target,exists]show;[combat]show;[petbattle]hide;[overridebar]hide;[vehicleui]hide;fade",
							},
							["states"] = {
								["stance"] = {
									["DRUID"] = {
										["moonkin"] = 10,
									},
								},
							},
						}, -- [1]
						{
							["showgrid"] = true,
							["rows"] = 12,
							["fadeout"] = true,
							["alpha"] = 0.3,
							["version"] = 3,
							["fadeoutalpha"] = 0,
							["position"] = {
								["y"] = 70.5001220703125,
								["x"] = -123,
								["point"] = "RIGHT",
							},
							["padding"] = 5,
						}, -- [2]
						{
							["showgrid"] = true,
							["rows"] = 12,
							["version"] = 3,
							["fadeoutalpha"] = 0,
							["position"] = {
								["y"] = 610,
								["x"] = -42,
								["point"] = "BOTTOMRIGHT",
							},
							["padding"] = 5,
							["visibility"] = {
								["custom"] = true,
								["customdata"] = "[@target,exists]show;[combat]show;[petbattle]hide;[overridebar]hide;[vehicleui]hide;fade\n",
							},
						}, -- [3]
						{
							["showgrid"] = true,
							["rows"] = 12,
							["version"] = 3,
							["fadeoutalpha"] = 0,
							["position"] = {
								["y"] = 610,
								["x"] = -82,
								["point"] = "BOTTOMRIGHT",
							},
							["padding"] = 5,
							["visibility"] = {
								["custom"] = true,
								["customdata"] = "[@target,exists]show;[combat]show;[petbattle]hide;[overridebar]hide;[vehicleui]hide;fade\n",
							},
						}, -- [4]
						{
							["showgrid"] = true,
							["rows"] = 2,
							["version"] = 3,
							["fadeoutalpha"] = 0.2,
							["position"] = {
								["y"] = -2.99999785423279,
								["x"] = 344.964477539063,
								["point"] = "BOTTOM",
								["growVertical"] = "UP",
							},
							["visibility"] = {
								["custom"] = true,
								["customdata"] = "[@target,exists]fade;[combat]fade;[petbattle]fade;[overridebar]fade;[vehicleui]fade;[nocombat]hide;hide",
							},
						}, -- [5]
						{
							["showgrid"] = true,
							["fadeoutalpha"] = 0,
							["version"] = 3,
							["position"] = {
								["y"] = 91.6222686767578,
								["x"] = -253.5,
								["point"] = "BOTTOM",
							},
							["padding"] = 6,
							["visibility"] = {
								["custom"] = true,
								["customdata"] = "[@target,exists]show;[combat]show;[petbattle]hide;[overridebar]hide;[vehicleui]hide;fade\n",
							},
						}, -- [6]
						{
							["showgrid"] = true,
							["fadeout"] = true,
							["enabled"] = true,
							["alpha"] = 0.5,
							["version"] = 3,
							["fadeoutdelay"] = 0,
							["fadeoutalpha"] = 0,
							["position"] = {
								["y"] = 158.427943146919,
								["x"] = 348.544905838964,
								["point"] = "BOTTOM",
								["scale"] = 0.490000009536743,
							},
						}, -- [7]
						{
							["showgrid"] = true,
							["fadeout"] = true,
							["enabled"] = true,
							["alpha"] = 0.5,
							["fadeoutdelay"] = 0,
							["version"] = 3,
							["fadeoutalpha"] = 0,
							["position"] = {
								["y"] = 138.827957719062,
								["x"] = 348.544905838964,
								["point"] = "BOTTOM",
								["scale"] = 0.490000009536743,
							},
						}, -- [8]
						{
							["showgrid"] = true,
							["fadeout"] = true,
							["enabled"] = true,
							["alpha"] = 0.5,
							["fadeoutdelay"] = 0,
							["version"] = 3,
							["fadeoutalpha"] = 0,
							["position"] = {
								["y"] = 119.227964814399,
								["x"] = 348.544905838964,
								["point"] = "BOTTOM",
								["scale"] = 0.490000009536743,
							},
						}, -- [9]
						{
							["showgrid"] = true,
							["fadeout"] = true,
							["enabled"] = true,
							["alpha"] = 0.5,
							["fadeoutdelay"] = 0,
							["version"] = 3,
							["fadeoutalpha"] = 0,
							["position"] = {
								["y"] = 99.6279719097365,
								["x"] = 347.879290591634,
								["point"] = "BOTTOM",
								["scale"] = 0.49,
							},
						}, -- [10]
					},
				},
				["Samoansage - Tichondrius"] = {
					["actionbars"] = {
						{
							["padding"] = 6,
							["version"] = 3,
							["position"] = {
								["y"] = 41.75,
								["x"] = -510,
								["point"] = "BOTTOM",
							},
						}, -- [1]
						{
							["enabled"] = false,
							["version"] = 3,
							["position"] = {
								["y"] = -227.499847412109,
								["x"] = -231.500183105469,
								["point"] = "CENTER",
							},
						}, -- [2]
						{
							["padding"] = 5,
							["rows"] = 12,
							["version"] = 3,
							["position"] = {
								["y"] = 610,
								["x"] = -82,
								["point"] = "BOTTOMRIGHT",
							},
						}, -- [3]
						{
							["padding"] = 5,
							["rows"] = 12,
							["version"] = 3,
							["position"] = {
								["y"] = 610,
								["x"] = -42,
								["point"] = "BOTTOMRIGHT",
							},
						}, -- [4]
						{
							["padding"] = 6,
							["version"] = 3,
							["position"] = {
								["y"] = 94,
								["x"] = 3,
								["point"] = "BOTTOM",
							},
						}, -- [5]
						{
							["padding"] = 6,
							["version"] = 3,
							["position"] = {
								["y"] = 94,
								["x"] = -510,
								["point"] = "BOTTOM",
							},
						}, -- [6]
						{
						}, -- [7]
						{
						}, -- [8]
						[10] = {
						},
					},
				},
			},
		},
		["LibDualSpec-1.0"] = {
		},
		["ExtraActionBar"] = {
			["profiles"] = {
				["KokonutKrew"] = {
					["position"] = {
						["y"] = 223.000030517578,
						["x"] = -31.5000610351563,
						["point"] = "BOTTOM",
					},
					["visibility"] = {
						["custom"] = false,
						["customdata"] = "[@target,exists]show;[combat]show;[petbattle]hide;[overridebar]hide;[vehicleui]hide;fade\n",
					},
					["version"] = 3,
				},
				["Samoansage - Tichondrius"] = {
					["version"] = 3,
					["position"] = {
						["y"] = 223.000030517578,
						["x"] = -31.5000610351563,
						["point"] = "BOTTOM",
					},
				},
			},
		},
		["MicroMenu"] = {
			["profiles"] = {
				["KokonutKrew"] = {
					["position"] = {
						["y"] = 31.6000035226346,
						["x"] = -225.199974745512,
						["point"] = "BOTTOMRIGHT",
						["scale"] = 0.800000011920929,
					},
					["version"] = 3,
					["fadeout"] = true,
					["fadeoutalpha"] = 0,
				},
				["Samoansage - Tichondrius"] = {
					["padding"] = -2,
					["version"] = 3,
					["position"] = {
						["scale"] = 1,
						["x"] = 37.5,
						["point"] = "BOTTOM",
						["y"] = 41.75,
					},
				},
			},
		},
		["BagBar"] = {
			["profiles"] = {
				["KokonutKrew"] = {
					["fadeoutalpha"] = 0,
					["position"] = {
						["y"] = 65.3525772094727,
						["x"] = -163.999877929688,
						["point"] = "BOTTOMRIGHT",
					},
					["fadeout"] = true,
					["visibility"] = {
						["custom"] = false,
						["customdata"] = "",
					},
					["version"] = 3,
				},
				["Samoansage - Tichondrius"] = {
					["version"] = 3,
					["position"] = {
						["y"] = 38.5,
						["x"] = 345,
						["point"] = "BOTTOM",
					},
				},
			},
		},
		["BlizzardArt"] = {
			["profiles"] = {
				["KokonutKrew"] = {
					["enabled"] = true,
					["artLayout"] = "ONEBAR",
					["version"] = 3,
					["position"] = {
						["y"] = 47,
						["x"] = -256,
						["point"] = "BOTTOM",
					},
					["visibility"] = {
						["custom"] = true,
						["customdata"] = "[@target,exists]show;[combat]show;[petbattle]hide;[overridebar]hide;[vehicleui]hide;fade\n",
					},
					["fadeoutalpha"] = 0.95,
				},
				["Samoansage - Tichondrius"] = {
					["enabled"] = true,
					["version"] = 3,
					["position"] = {
						["y"] = 47,
						["x"] = -512,
						["point"] = "BOTTOM",
					},
				},
			},
		},
		["Vehicle"] = {
			["profiles"] = {
				["KokonutKrew"] = {
					["version"] = 3,
					["position"] = {
						["y"] = 132.073837280273,
						["x"] = -310.677581787109,
						["point"] = "BOTTOM",
					},
				},
				["Samoansage - Tichondrius"] = {
					["version"] = 3,
					["position"] = {
						["y"] = 47.5000305175781,
						["x"] = 99.5,
						["point"] = "CENTER",
					},
				},
			},
		},
		["StanceBar"] = {
			["profiles"] = {
				["KokonutKrew"] = {
					["enabled"] = false,
					["position"] = {
						["y"] = -14.9999618530273,
						["x"] = -82.5,
						["point"] = "CENTER",
					},
					["version"] = 3,
				},
				["Samoansage - Tichondrius"] = {
					["version"] = 3,
					["position"] = {
						["scale"] = 1,
						["x"] = -460,
						["point"] = "BOTTOM",
						["y"] = 127,
					},
				},
			},
		},
		["PetBar"] = {
			["profiles"] = {
				["KokonutKrew"] = {
					["fadeoutalpha"] = 0,
					["position"] = {
						["y"] = 164,
						["x"] = -164,
						["point"] = "BOTTOM",
					},
					["visibility"] = {
						["custom"] = true,
						["customdata"] = "[@target,exists]show;[combat]show;[petbattle]hide;[overridebar]hide;[vehicleui]hide;fade\n",
					},
					["version"] = 3,
				},
				["Samoansage - Tichondrius"] = {
					["version"] = 3,
					["position"] = {
						["y"] = 127,
						["x"] = -120,
						["point"] = "BOTTOM",
					},
				},
			},
		},
		["ZoneAbilityBar"] = {
			["profiles"] = {
				["KokonutKrew"] = {
					["position"] = {
						["y"] = 223.000045776367,
						["x"] = -31.5000610351563,
						["point"] = "BOTTOM",
					},
					["version"] = 3,
				},
				["Samoansage - Tichondrius"] = {
					["version"] = 3,
					["position"] = {
						["y"] = 223.000045776367,
						["x"] = -31.5000610351563,
						["point"] = "BOTTOM",
					},
				},
			},
		},
	},
	["profileKeys"] = {
		["Samoanstrap - Tichondrius"] = "KokonutKrew",
		["Samoantitan - Stormrage"] = "KokonutKrew",
		["Samoansage - Tichondrius"] = "KokonutKrew",
	},
	["profiles"] = {
		["KokonutKrew"] = {
			["minimapIcon"] = {
				["minimapPos"] = 144.039375851653,
				["hide"] = false,
			},
			["focuscastmodifier"] = false,
			["outofrange"] = "hotkey",
		},
		["Samoansage - Tichondrius"] = {
			["focuscastmodifier"] = false,
			["minimapIcon"] = {
				["minimapPos"] = 95.7102913240071,
			},
			["blizzardVehicle"] = true,
			["outofrange"] = "hotkey",
		},
	},
}
