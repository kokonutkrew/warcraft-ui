
local addon, ns = ...;
local L = ns.L;
local _SetSuperTrackedQuestID = SetSuperTrackedQuestID;
local playerDot_textures = {
	["blizz"]         = L["Blizzards player arrow"],
	["blizz-smaller"] = L["Blizzards player arrow (smaller)"],
	["gold"]          = L["Golden player dot"],
	["white"]         = L["White player dot"],
	["black"]         = L["Black player dot"],
	["hide"]          = L["Hide player arrow"],
};
local AreaBorderValues = {
	["true"] = SHOW,
	["false"] = HIDE,
	["blizz"] = L["AreaBorderByClient"]
};

local dbDefaults = {
	hud_scale=1.4, text_scale=1.4, hud_size=1,
	gathercircle_show=true,gathercircle_color={0,1,0,0.5},
	cardinalpoints_show=true,cardinalpoints_color1={1,0.82,0,0.7},cardinalpoints_color2={1,0.82,0,0.7},cardinalpoints_radius=0.47,
	coords_show=true,coords_bottom=false,coords_color={1,0.82,0,0.7},coords_radius=0.51,
	buttons_show=false,buttons_buttom=false,buttons_alpha=0.6,buttons_radius=0.56,
	time_show=true, time_server=true, time_radius = 0.48, time_bottom=false, time_color={1,0.82,0,0.7},
	mouseoverinfo_color={1,0.82,0,0.7},
	areaborder_arch_show="blizz",areaborder_arch_texture=false,areaborder_arch_alpha=1,
	areaborder_quest_show="blizz",areaborder_quest_texture=false,areaborder_quest_alpha=1,
	areaborder_tasks_show="blizz",areaborder_task_texture=false,areaborder_task_alpha=1,
	player_dot="blizz", background_alpha=0, holdKeyForMouseOn = "_none",
	rotation=true, SuperTrackedQuest = true, showDummy = true, showDummyBg = true
}

local function opt(info,value,...)
	local key,reset = info[#info],info[#info]:gsub("reset","");
	if key~=reset then
		if dbDefaults[reset]~=nil then
			FarmHudDB[reset] = type(dbDefaults[reset])=="table" and CopyTable(dbDefaults[reset]) or dbDefaults[reset];
			FarmHud:UpdateOptions(reset);
		end
		return;
	elseif value~=nil then
		if key=="MinimapIcon" then
			FarmHudDB[key].hide = not value;
			LibStub("LibDBIcon-1.0", true):Refresh(addon);
		else
			if (...) then
				value = {value,...}; -- color table
			end
			FarmHudDB[key] = value;
			if FarmHud:IsVisible() then
				if key=="rotation" then
					if ns.rotation=="0" then
						SetCVar("rotateMinimap", value and "1" or "0", "ROTATE_MINIMAP");
					end
				elseif key=="SuperTrackedQuest" then
					if value and ns.SuperTrackedQuestID~=0 then
						_SetSuperTrackedQuestID(ns.SuperTrackedQuestID);
					elseif not value then
						ns.SuperTrackedQuestID = GetSuperTrackedQuestID() or 0;
						_SetSuperTrackedQuestID(0);
					end
				elseif key=="hud_size" then
					FarmHud:SetScales();
				end
			end
		end
		FarmHud:UpdateOptions(key);
		return;
	elseif key=="MinimapIcon" then
		return not FarmHudDB[key].hide;
	elseif type(FarmHudDB[key])=="table" then
		return unpack(FarmHudDB[key]); -- color table
	end
	return FarmHudDB[key];
end

local function optKeyBind(info,value)
	local key = info[#info];
	if value~=nil then
		local valueB = GetBindingKey(key);
		if valueB then
			SetBinding(valueB);
		end
		if value~="" then
			SetBinding(value, key);
		end
		SaveBindings(GetCurrentBindingSet());
	end
	return GetBindingKey(key);
end

local options = {
	type = "group",
	name = addon,
	childGroups = "tree",
	get = opt,
	set = opt,
	func = opt,
	args = {
		general = {
			type = "group", order = 0,
			name = COMPACT_UNIT_FRAME_PROFILE_SUBTYPE_ALL,
			args = {
				MinimapIcon = {
					type = "toggle", order = 1,
					name = L.MinimapIcon, desc = L.MinimapIconDesc
				},
				AddOnLoaded = {
					type = "toggle", order = 2,
					name = L.AddOnLoaded, desc = L.AddOnLoadedDesc
				},
				rotation = {
					type = "toggle", order = 3,
					name = L.Rotation, desc = L.RotationDesc
				},
				SuperTrackedQuest = { -- quest_arrow
					type = "toggle", order = 4,
					name = L.QuestArrow, desc = L.QuestArrowDesc
				},
				hud_scale = {
					type = "range", order = 11,
					name = L.HudSymbolScale, desc = L.HudSymbolScaleDesc,
					min = 1, max = 2.5, step = 0.1, isPercent = true
				},
				hud_size = {
					type = "range", order = 12,
					name = L.HudSize, desc = L.HudSizeDesc,
					min = 0.4, max = 1, step = 0.1, isPercent = true
				},
				text_scale = {
					type = "range", order = 13,
					name = L.TextScale, desc = L.TextScaleDesc,
					min = 1, max = 2.5, step = 0.1, isPercent = true
				},
				background_alpha = {
					type = "range", order = 14,
					name = L.BgTransparency, --desc = L.BgTransparencyDesc
					min = 0.0, max = 1, step = 0.1, isPercent = true
				},
				player_dot = {
					type = "select", order = 15,
					name = L.PlayerDot, desc = L.PlayerDotDesc,
					values = playerDot_textures
				},
				placeholder = {
					type = "group", order = 19, inline = true,
					name = L.Placeholder,
					args = {
						desc = {
							type = "description", order = 0, fontSize = "medium",
							name = L.PlaceholderDesc
						},
						showDummy = {
							type = "toggle", order = 1,
							name = L.ShowPlaceholder, desc = L.ShowPlaceholderDesc
						},
						showDummyBg = {
							type = "toggle", order = 2,
							name = L.ShowPlaceholderBg, desc = L.ShowPlaceholderBgDesc
						}
					}
				},
				mouseover = {
					type = "group", order = 20, inline=true,
					name = L.MouseOver,
					args = {
						holdKeyForMouseOn = {
							type = "select", order = 3, width="double";
							name = L.MouseOverOnHold,
							desc = L.MouseOverOnHoldDesc,
							values = {
								["_NONE"] = NONE.."/"..ADDON_DISABLED,
								A  = ALT_KEY,
								AL = LALT_KEY_TEXT,
								AR = RALT_KEY_TEXT,
								C  = CTRL_KEY,
								CL = LCTRL_KEY_TEXT,
								CR = RCTRL_KEY_TEXT,
								S  = SHIFT_KEY,
								SL = LSHIFT_KEY_TEXT,
								SR = RSHIFT_KEY_TEXT,
							}
						},
						mouseoverinfo_color = {
							type = "color", order = 1,
							name = COLOR, desc = L.MouseOverInfoColorDesc,
							hasAlpha = true
						},
						mouseoverinfo_resetcolor = {
							type = "execute", order = 2,
							name = L.ResetColor, --desc = L.ResetColorDesc
						},
					}
				}
			}
		},
		----------------------------------------------
		gathercircle = {
			type = "group", order = 1,
			name = L.GartherCircle,
			args = {
				gathercircle_desc = {
					type = "description", order = 0, fontSize = "medium",
					name = L.GatherCircleDesc
				},
				gathercircle_show = {
					type = "toggle", order = 1, width = "double",
					name = L.GatherCircleShow, desc = L.GatherCircleShowDesc
				},
				gathercircle_color = {
					type = "color", order = 2,
					name = COLOR, desc = L.GatherCircleColorDesc,
					hasAlpha = true
				},
				gathercircle_resetcolor = {
					type = "execute", order = 3,
					name = L.ResetColor, --desc = L.ResetColorDesc
				}
			}
		},
		cardinalpoints = {
			type = "group", order = 2,
			name = L.CardinalPoints,
			args = {
				cardinalpoints_show = {
					type = "toggle", order = 1, width = "double",
					name = L.CardinalPointsShow, desc = L.CardinalPointsShowDesc,
				},
				cardinalpoints_radius = {
					type = "range", order = 2,
					name = L.ChangeRadius, desc = L.ChangeRadiusDesc,
					min = 0.1, max = 0.9, step=0.005, isPercent=true
				},
				cardinalpoints_header1 = {
					type = "header", order = 3,
					name = L.CardinalPointsGroup1
				},
				cardinalpoints_color1 = {
					type = "color", order = 4, hasAlpha = true,
					name = COLOR, desc = L.CardinalPointsColorDesc:format(L.CardinalPointsGroup1)
				},
				cardinalpoints_resetcolor1 = {
					type = "execute", order = 5,
					name = L.ResetColor, desc = L.CardinalPointsColorResetDesc:format(L.CardinalPointsGroup1)
				},
				cardinalpoints_header2 = {
					type = "header", order = 6,
					name = L.CardinalPointsGroup2
				},
				cardinalpoints_color2 = {
					type = "color", order = 7, hasAlpha = true,
					name = COLOR, desc = L.CardinalPointsColorDesc:format(L.CardinalPointsGroup2)
				},
				cardinalpoints_resetcolor2 = {
					type = "execute", order = 8,
					name = L.ResetColor, desc = L.CardinalPointsColorResetDesc:format(L.CardinalPointsGroup2)
				}
			}
		},
		coords = {
			type = "group", order = 3,
			name = L.Coords,
			args = {
				coords_show = {
					type = "toggle", order = 1,
					name = L.CoordsShow, desc = L.CoordsShowDesc
				},
				coords_radius = {
					type = "range", order = 2,
					name = L.ChangeRadius, desc = L.ChangeRadiusDesc,
					min = 0.1, max = 0.9, step=0.005, isPercent=true
				},
				coords_bottom = {
					type = "toggle", order = 3, width = "double",
					name = L.CoordsBottom, desc = L.CoordsBottomDesc
				},
				coords_color = {
					type = "color", order = 4, hasAlpha = true,
					name = COLOR, desc = L.CoordsColorDesc
				},
				coords_resetcolor = {
					type = "execute", order = 5,
					name = L.ResetColor, desc = L.CoordsColorResetDesc
				}
			}
		},
		time = {
			type = "group", order = 4,
			name = L.Time,
			args = {
				time_show = {
					type = "toggle", order = 1,
					name = L.TimeShow, desc = L.TimeShowDesc
				},
				time_server = {
					type = "toggle", order = 2,
					name = L.TimeServer, desc = L.TimeServerDesc
				},
				time_radius = {
					type = "range", order = 3,
					name = L.ChangeRadius, desc = L.ChangeRadiusDesc,
					min = 0.1, max = 0.9, step=0.005, isPercent=true
				},
				time_bottom = {
					type = "toggle", order = 4, width = "double",
					name = L.TimeBottom, desc = L.TimeBottomDesc
				},
				time_color = {
					type = "color", order = 5, hasAlpha = true,
					name = COLOR, desc = L.TimeColorDesc
				},
				time_resetcolor = {
					type = "execute", order = 6,
					name = L.ResetColor, desc = L.TimeColorResetDesc
				},
			}
		},
		onscreenbuttons = {
			type = "group", order = 5,
			name = L.OnScreen,
			args = {
				buttons_show = {
					type = "toggle", order = 1, width = "double",
					name = L.OnScreenShow, desc = L.OnScreenShowDesc
				},
				buttons_bottom = {
					type = "toggle", order = 2, width = "double",
					name = L.OnScreenBottom, desc = L.OnScreenBottomDesc,
				},
				buttons_radius = {
					type = "range", order = 3,
					name = L.ChangeRadius, desc = L.ChangeRadiusDesc,
					min = 0.1, max = 0.9, step=0.005, isPercent=true
				},
				buttons_alpha = {
					type = "range", order = 4,
					name = OPACITY, desc = L.OnScreenAlphaDesc,
					min = 0, max = 1, step = 0.1, isPercent = true
				}
			}
		},
		areaborder = {
			type = "group", order = 6,
			name = L.AreaBorder,
			args = {
				areaborder_arch_header = {
					type = "header", order = 10,
					name = TRACKING.." > "..MINIMAP_TRACKING_DIGSITES,
				},
				areaborder_arch_show = {
					type = "select", order = 11, width = "double",
					name = L.AreaBorderOnHUD:format(PROFESSIONS_ARCHAEOLOGY),
					values = AreaBorderValues
				},
				areaborder_quest_header = {
					type = "header", order = 20,
					name = TRACKING.." > "..MINIMAP_TRACKING_QUEST_POIS,
				},
				areaborder_quest_show = {
					type = "select", order = 21, width = "double",
					name = L.AreaBorderOnHUD:format(LOOT_JOURNAL_LEGENDARIES_SOURCE_QUEST),
					values = AreaBorderValues
				},
			}
		},
		keybindings = {
			type = "group", order = 7,
			name = KEY_BINDINGS,
			get = optKeyBind,
			set = optKeyBind,
			args = {
				TOGGLEFARMHUD = {
					type = "keybinding", order = 1, width = "double",
					name = L.KeyBindToggle, desc = L.KeyBindToggleDesc
				},
				TOGGLEFARMHUDMOUSE = {
					type = "keybinding", order = 2, width = "double",
					name = L.KeyBindMouse, desc = L.KeyBindMouseDesc
				},
				TOGGLEFARMHUDBACKGROUND = {
					type = "keybinding", order = 3, width = "double",
					name = L.KeyBindBackground, desc = L.KeyBindBackgroundDesc
				},
			}
		},
	}
};

function ns.RegisterOptions()
	if (FarmHudDB==nil) then
		FarmHudDB={};
	end

	if (FarmHudDB.MinimapIcon==nil) then
		FarmHudDB.MinimapIcon = {
			hide = false,
			minimapPos = 220,
			radius = 80
		};
	end

	for k,v in pairs(dbDefaults)do
		if (FarmHudDB[k]==nil) then
			FarmHudDB[k]=v;
		end
	end

	if FarmHudDB.hud_size==0 then
		FarmHudDB.hud_size=1;
	end

	if FarmHudDB.MinimapIcon.show~=nil then
		FarmHudDB.MinimapIcon.hide = not FarmHudDB.MinimapIcon.show;
		FarmHudDB.MinimapIcon.show = nil;
	end

	LibStub("AceConfig-3.0"):RegisterOptionsTable(addon, options);
	LibStub("AceConfigDialog-3.0"):AddToBlizOptions(addon);
end