local LookingForGroup = LibStub("AceAddon-3.0"):GetAddon("LookingForGroup")
local LookingForGroup_Options = LibStub("AceAddon-3.0"):GetAddon("LookingForGroup_Options")
local LookingForGroup_RaiderIO = LookingForGroup:NewModule("RaiderIO","AceEvent-3.0")
local L = LibStub("AceLocale-3.0"):GetLocale("LookingForGroup_RaiderIO")

LookingForGroup_RaiderIO.CurrentRaidGroupID = 135 -- Uldir

local function GetScore(...)
	local m = RaiderIO.GetPlayerProfile(0,...)
	if m then
		local m1 = m[1]
		if m1 then
			return m1.profile
		end
	end
end

local find_a_group =
{
	name = "Raider.IO",
	type = "group",
	args =
	{
		disable =
		{
			name = DISABLE,
			type = "toggle",
			get = function()
				return LookingForGroup_Options.db.profile.a.disable_raiderio
			end,
			set = function(info,val)
				if val then
					LookingForGroup_Options.db.profile.a.disable_raiderio = val
				else
					LookingForGroup_Options.db.profile.a.disable_raiderio = nil
				end
			end,
			width ="full"
		},
		mini =
		{
			name = MINIMUM,
			order = 1,
			type = "input",
			get = function()
				local raider_io_find_a_group_min_score = LookingForGroup_Options.db.profile.a.raider_io_find_a_group_min_score
				if raider_io_find_a_group_min_score then
					return tostring(raider_io_find_a_group_min_score)
				end
			end,
			set = function(info,val)
				if val == "" then
					LookingForGroup_Options.db.profile.a.raider_io_find_a_group_min_score = nil
				else
					LookingForGroup_Options.db.profile.a.raider_io_find_a_group_min_score = tonumber(val)
				end
			end,
			pattern = "^[0-9]*$"
		},
		maxi =
		{
			name = MAXIMUM,
			order = 2,
			type = "input",
			get = function()
				local raider_io_find_a_group_max_score = LookingForGroup_Options.db.profile.a.raider_io_find_a_group_max_score
				if raider_io_find_a_group_max_score then
					return tostring(raider_io_find_a_group_max_score)
				end
			end,
			set = function(info,val)
				if val == "" then
					LookingForGroup_Options.db.profile.a.raider_io_find_a_group_max_score = nil
				else
					LookingForGroup_Options.db.profile.a.raider_io_find_a_group_max_score = tonumber(val)
				end
			end,
			pattern = "^[0-9]*$"
		},
		elitism =
		{
			name = L.Elitism,
			type = "toggle",
			get = function()
				return LookingForGroup_Options.db.profile.a.raider_io_find_a_group_elitism
			end,
			set = function(info,val)
				if val then
					LookingForGroup_Options.db.profile.a.raider_io_find_a_group_elitism = true
				else
					LookingForGroup_Options.db.profile.a.raider_io_find_a_group_elitism = nil
				end
			end,
			pattern = "^[0-9]*$"
		},
	}
}

local start_a_group =
{
	name = "Raider.IO",
	type = "group",
	args =
	{
		mini =
		{
			name = MINIMUM,
			type = "input",
			get = function()
				local raider_io_start_a_group_min_score = LookingForGroup_Options.db.profile.raider_io_start_a_group_min_score
				if raider_io_start_a_group_min_score then
					return tostring(raider_io_start_a_group_min_score)
				end
			end,
			set = function(info,val)
				if val == "" then
					LookingForGroup_Options.db.profile.raider_io_start_a_group_min_score = nil
				else
					LookingForGroup_Options.db.profile.raider_io_start_a_group_min_score = tonumber(val)
				end
			end,
			pattern = "^[0-9]*$"
		},
		elitist =
		{
			name = L["Elitist M+ Level"],
			desc = L.elitist_group_desc,
			type = "input",
			get = function()
				local raider_io_start_a_group_elitist = LookingForGroup_Options.db.profile.raider_io_start_a_group_elitist
				if raider_io_start_a_group_elitist then
					return tostring(raider_io_start_a_group_elitist)
				end
			end,
			set = function(info,val)
				if val == "" then
					LookingForGroup_Options.db.profile.raider_io_start_a_group_elitist = nil
				else
					LookingForGroup_Options.db.profile.raider_io_start_a_group_elitist = tonumber(val)
				end
			end,
			pattern = "^[0-9]*$"
		},
	}
}

LookingForGroup_Options.RegisterMessage({},"LFG_OPT_CATEGORY",function(message,option_table,category)
	if category == 2 then
		option_table.f.args["raider.io"]=find_a_group
		option_table.s.args["raider.io"]=start_a_group
	else
		option_table.f.args["raider.io"]=nil
		option_table.s.args["raider.io"]=nil
	end
	if category == 2 or category == 3 then
		option_table.f.args.opt.args.elitism = find_a_group.args.elitism
		option_table.s.args.raiderio = 
		{
			name = "Raider.IO",
			type = "group",
			args =
			{
				elitism = find_a_group.args.elitism
			}
		}
	else
		option_table.f.args.opt.args.elitism = nil
		option_table.s.args.raiderio = nil
	end
end)


local dungeons =
{
	[140] = 1,
	[137] = 2,
	[142] = 3,
	[144] = 4,
	[146] = 5,
	[138] = 6,
	[145] = 7,
	[143] = 8,
	[141] = 9,
	[139] = 10
}
local tb = {}

local function showplayertooltip(name,groupID)
	local profile = LookingForGroup_Options.db.profile
	if profile.raider_io_disable then
		return
	end
	local pprf = RaiderIO.GetPlayerProfile(0,name)
	if pprf then
		local m = pprf[1]
		local GameTooltip = GameTooltip
		if m then
			local info = m.profile
			local allScore = info.allScore
			local GetScoreColor = RaiderIO.GetScoreColor
			local r,g,b = GetScoreColor(allScore)
			GameTooltip:AddDoubleLine("Raider.IO",allScore,nil,nil,nil,r,g,b)
			local main_score = info.mainScore
			if main_score and 0 < main_score then
				GameTooltip:AddDoubleLine("Main",
											main_score,nil,nil,nil,GetScoreColor(main_score))
			end
			local legion_score = info.legionScore
			if legion_score and 0 < legion_score then
				GameTooltip:AddDoubleLine("Legion",
											legion_score,nil,nil,nil,GetScoreColor(legion_score))
			end
			local legion_main_score = info.legionMainScore
			if legion_main_score and 0 < legion_main_score then
				GameTooltip:AddDoubleLine("Legion Main",
											legion_main_score,nil,nil,nil,GetScoreColor(legion_main_score))
			end
			local maxDungeonLevel = info.maxDungeonLevel
			if maxDungeonLevel == 0 then
				GameTooltip:AddDoubleLine(BEST,NONE,nil,nil,nil,r,g,b)
			else
				wipe(tb)
				tb[1] = maxDungeonLevel
				tb[2] = " "
				tb[3] = info.maxDungeonNameLocale
				GameTooltip:AddDoubleLine(BEST,table.concat(tb),nil,nil,nil,r,g,b)
			end
			if not groupID then
				local _, activityID = C_LFGList.GetActiveEntryInfo()
				if activityID then
					_,_,_,groupID = C_LFGList.GetActivityInfo(activityID)
				end
			end
			if groupID then
				local dungeon_id = dungeons[groupID]
				if dungeon_id then
					GameTooltip:AddDoubleLine("BFD",info.dungeons[dungeon_id],nil,nil,nil,r,g,b)
				end
			end
			GameTooltip:AddDoubleLine("5-9",info.keystoneFivePlus,nil,nil,nil,r,g,b)
			GameTooltip:AddDoubleLine("10-14",info.keystoneTenPlus,nil,nil,nil,r,g,b)
			GameTooltip:AddDoubleLine("15+",info.keystoneFifteenPlus,nil,nil,nil,r,g,b)

			if info.isTank then
				local tank_score = info.tankScore
				GameTooltip:AddDoubleLine("|TInterface\\LFGFrame\\UI-LFG-ICON-PORTRAITROLES:16:16:0:0:64:64:0:19:22:41|t",
											tank_score,nil,nil,nil,GetScoreColor(tank_score))
			end
			if info.isHealer then
				local heal_score = info.healScore
				GameTooltip:AddDoubleLine("|TInterface\\LFGFrame\\UI-LFG-ICON-PORTRAITROLES:16:16:0:0:64:64:20:39:1:20|t",
											heal_score,nil,nil,nil,GetScoreColor(heal_score))
			end
			if info.isDPS then
				local dps_score = info.dpsScore
				GameTooltip:AddDoubleLine("|TInterface\\LFGFrame\\UI-LFG-ICON-PORTRAITROLES:16:16:0:0:64:64:20:39:22:41|t",
											dps_score,nil,nil,nil,GetScoreColor(dps_score))
			end
		end
		m = pprf[2]
		if m then
			local info = m.profile
			local currentRaid = info.currentRaid
			GameTooltip:AddDoubleLine(currentRaid.name,nil,nil,nil,0,255,0)
			local function generate_progress(progress)
				for i=1,#progress do
					local ele = progress[i]
					local difficulty = ele.difficulty
					if difficulty == 1 then
						difficulty = PLAYER_DIFFICULTY1
					elseif difficulty == 2 then
						difficulty = PLAYER_DIFFICULTY2
					elseif difficulty == 3 then
						difficulty = PLAYER_DIFFICULTY6
					end
					local progressCount = ele.progressCount
					local bossCount = currentRaid.bossCount
					wipe(tb)
					tb[#tb+1] = progressCount
					tb[#tb+1] = "/"
					tb[#tb+1] = bossCount
					if bossCount == progressCount then
						GameTooltip:AddDoubleLine(difficulty,table.concat(tb))
					else
						GameTooltip:AddDoubleLine(difficulty,table.concat(tb),nil,nil,nil,255,0,0)
					end
					local killsPerBoss = ele.killsPerBoss
					if killsPerBoss then
						wipe(tb)
						for i=1,#killsPerBoss do
							local k = killsPerBoss[i]
							if k == 0 then
								tb[#tb+1]="|c00FF00000|r"
							elseif 19 < k then
								tb[#tb+1]="|c00FF00FF*|r"
							elseif 9 < k then
								tb[#tb+1]="|c0000FF00+|r"
							else
								tb[#tb+1]=k
							end
						end
						GameTooltip:AddLine(table.concat(tb))
					end
				end
			end
			generate_progress(info.progress)
			local mainProgress = info.mainProgress
			if mainProgress then
				GameTooltip:AddLine()
				GameTooltip:AddLine("Main")
				generate_progress(info.mainProgress)
			end
		end
	end
end
if LookingForGroup.lfgscores then
	LookingForGroup.lfgscores[#LookingForGroup.lfgscores+1] = showplayertooltip
else
	LookingForGroup.lfgscores = {showplayertooltip}
end


local maps_to_activity_id =
{
	[244] = 502,
	[245] = 518,
	[249] = 514,
	[252] = 522,
	[353] = 534,
	[250] = 504,
	[247] = 510,
	[251] = 507,
	[246] = 526,
	[248] = 530
}

LookingForGroup_Options.RegisterSimpleFilterExpensive("find",function(resultID,profile,player_info)
	local id, activityID, name, comment, voiceChat, iLvl, honorLevel,
		age, numBNetFriends, numCharFriends, numGuildMates,
		isDelisted, leaderName, numMembers = C_LFGList.GetSearchResultInfo(resultID)
	local fullName, shortName, categoryID, groupID = C_LFGList.GetActivityInfo(activityID)
	local did = dungeons[groupID]
	if not did then
		return 1
	end
	local t = player_info.dungeons[did] or 0
	local info = GetScore(leaderName)
	local tl = info and info.dungeons[did] or 0
	if t1 + 3 < t then
		return 1
	end
end,function(profile)
	local a = profile.a
	if a.category == 2 and not a.disable_raiderio and a.raider_io_find_a_group_elitism then
		return GetScore("player")
	end
end)

LookingForGroup_Options.RegisterSimpleFilterExpensive("find",function(resultID,profile)
	local minimum_score = profile.a.raider_io_find_a_group_min_score
	local maximum_score = profile.a.raider_io_find_a_group_max_score
	local id, activityID, name, comment, voiceChat, iLvl, honorLevel,
		age, numBNetFriends, numCharFriends, numGuildMates,
		isDelisted, leaderName, numMembers = C_LFGList.GetSearchResultInfo(resultID)
	local info = GetScore(leaderName)
	if info then
		local score = info.allScore
		if (not minimum_score or minimum_score <= score) and (not maximum_score or score <=maximum_score) then
			return 0
		end
	end
	return 1
end,function(profile)
	local a = profile.a
	if a.category == 2 and not a.disable_raiderio and (a.raider_io_find_a_group_min_score or a.raider_io_find_a_group_max_score) then
		return true
	end
end)

LookingForGroup_Options.RegisterSimpleApplicantFilter("s",function(applicantid,index,profile,score)
	local name = C_LFGList.GetApplicantMemberInfo(applicantid,index)
	local info = GetScore(name)
	if not info then
		return 1
	end
	if info.allScore < score then
		return 1
	end
end,function(profile)
	if not profile.raider_io_disable then
		local active, activityID, iLevel, name, comment, voiceChat, expiration, autoAccept = C_LFGList.GetActiveEntryInfo()
		if active then
			local fullName, shortName, categoryID, groupID = C_LFGList.GetActivityInfo(activityID)
			if categoryID == 2 then
				return profile.raider_io_start_a_group_min_score
			end
		end
	end
end)

LookingForGroup_Options.RegisterSimpleApplicantFilter("s",function(applicantid,index,profile,groupID)
	local name = C_LFGList.GetApplicantMemberInfo(applicantid,index)
	local info = GetScore(name)
	if not info then
		return 1
	end
	local did = dungeons[groupID]
	if did then
		local ifd = info.dungeons[did]
		local elitist = profile.raider_io_start_a_group_elitist
		if ifd < elitist or (ifd == elitist and info.dungeonUpgrades[did] == 0) then
			return 1
		end
	end
end,function(profile)
	if not profile.raider_io_disable then
		local active, activityID, iLevel, name, comment, voiceChat, expiration, autoAccept = C_LFGList.GetActiveEntryInfo()
		if active then
			local fullName, shortName, categoryID, groupID = C_LFGList.GetActivityInfo(activityID)
			if categoryID == 2 and profile.raider_io_start_a_group_elitist then
				return groupID
			end
		end
	end
end)

--[[
meaning of return value for player_has_finished()
-1 potentially buy carry we need report him
0 not finished
1 finished
]]

local function player_has_finished(unit,shortName)
	local pprf = RaiderIO.GetPlayerProfile(0,unit)
	if pprf then
		local raid = pprf[2]
		if raid then
			local info = raid.info
			local currentRaid = info.currentRaid
			local progress = info.progress
			local bossCount = currentRaid.bossCount
			local maxdifficulty = 0
			for i=1,#progress do
				local ele = progress[i]
				local difficulty = ele.difficulty
				local progressCount = ele.progressCount
				if bossCount == progressCount and maxdifficulty < difficulty then
					maxdifficulty = difficulty
				end
			end
			if shortName == PLAYER_DIFFICULTY1 then
				if 0 < maxdifficulty then
					return 1
				end
			elseif shortName == PLAYER_DIFFICULTY2 then
				if 1 < maxdifficulty then
					return 1
				end
			elseif shortName == PLAYER_DIFFICULTY6 then
				if 2 < maxdifficulty then
					return 1
				end
			end
		end
	end
	return 0
end

LookingForGroup_Options.RegisterSimpleApplicantFilter("s",function(applicantid,index,profile,player_states)
	if player_has_finished(C_LFGList.GetApplicantMemberInfo(applicantid,index),player_states[2]) ~= player_states[1] then
		return 1
	end
end,function(profile)
	if not profile.raider_io_disable then
		local active, activityID, iLevel, name, comment, voiceChat, expiration, autoAccept = C_LFGList.GetActiveEntryInfo()
		if active then
			local fullName, shortName, categoryID, groupID = C_LFGList.GetActivityInfo(activityID)
			if groupID == LookingForGroup_RaiderIO.CurrentRaidGroupID and profile.a.raider_io_find_a_group_elitism then
				return {player_has_finished(unit,shortName),shortName}
			end
		end
	end
end)

LookingForGroup_Options.RegisterSimpleFilterExpensive("find",function(resultID,profile)
	local id, activityID, name, comment, voiceChat, iLvl, honorLevel,
		age, numBNetFriends, numCharFriends, numGuildMates,
		isDelisted, leaderName, numMembers = C_LFGList.GetSearchResultInfo(resultID)
	local fullName, shortName, categoryID, groupID = C_LFGList.GetActivityInfo(activityID)
	if groupID == LookingForGroup_RaiderIO.CurrentRaidGroupID and player_has_finished("player",shortName) ~= player_has_finished(leaderName,shortName) then
		return 1
	end
end,function(profile)
	return not profile.raider_io_disable and profile.a.raider_io_find_a_group_elitism
end)

if LookingForGroup_Options.lfgscoresbrief == nil then
	LookingForGroup_Options.lfgscoresbrief = {}
end

LookingForGroup_Options.lfgscoresbrief[#LookingForGroup_Options.lfgscoresbrief+1] = function(applicantid,index,name)
	if name then
		local info = GetScore(name)
		if info then
			local allScore = info.allScore
			local r,g,b = RaiderIO.GetScoreColor(allScore)
			return format("|cFF%02x%02x%02xRaider.IO:%d|r",math.ceil(r*255),math.ceil(g*255),math.ceil(b*255),info.allScore)
		end
	end
end

if LookingForGroup_Options.lfg_applicant_scores == nil then
	LookingForGroup_Options.lfg_applicant_scores = {}
end

local CLASS_COLORS = CUSTOM_CLASS_COLORS or RAID_CLASS_COLORS

LookingForGroup_Options.lfg_applicant_scores[#LookingForGroup_Options.lfg_applicant_scores+1] = function(applicantID)
	local id, status, pendingStatus, numMembers, isNew, comment = C_LFGList.GetApplicantInfo(applicantID)
	for i=1,numMembers do
		local name, class, localizedClass, level, itemLevel, honorLevel, tank, healer, damage, assignedRole, relationship = C_LFGList.GetApplicantMemberInfo(id,i)
		if name then
			local class_color = CLASS_COLORS[class]
			GameTooltip:AddDoubleLine(name,math.floor(itemLevel),class_color.r,class_color.g,class_color.b,0.5,0.5,0.8)
			showplayertooltip(name)
		end
	end
	return true
end

local restb = {}

local function generate_raider_io_info(unit)
	local name,server = UnitName(unit)
	wipe(tb)
	local class = select(2,UnitClass(unit))
	if class then
		local class_color = CLASS_COLORS[class].colorStr
		tb[#tb+1] = "|c"
		tb[#tb+1] = CLASS_COLORS[class].colorStr
	end
	tb[#tb+1] = name or unit
	if server and server ~= "" then
		tb[#tb+1] = "-"
		tb[#tb+1] = server
	end
	if class then
		tb[#tb+1] = "|r"
	end
	local pprf = RaiderIO.GetPlayerProfile(0,unit)
	if pprf then
		local m = pprf[1]
		if m then
			local info = m.profile
			local allScore = info.allScore
			local GetScoreColor = RaiderIO.GetScoreColor
			local r,g,b = GetScoreColor(allScore)
			tb[#tb+1] = "\n\n"
			tb[#tb+1] = string.format("|cFF%02x%02x%02x",r*255,g*255,b*255)
			tb[#tb+1] = allScore
			tb[#tb+1] = "|r\n"
			if info.isTank then
				local score = info.tankScore
				tb[#tb+1]="|TInterface\\LFGFrame\\UI-LFG-ICON-PORTRAITROLES:16:16:0:0:64:64:0:19:22:41|t "
				local r,g,b = GetScoreColor(score)
				tb[#tb+1]=string.format("|cFF%02x%02x%02x",r*255,g*255,b*255)
				tb[#tb+1]=score
				tb[#tb+1]="|r\n"
			end
			if info.isHealer then
				local score = info.healScore
				tb[#tb+1]="|TInterface\\LFGFrame\\UI-LFG-ICON-PORTRAITROLES:16:16:0:0:64:64:20:39:1:20|t "
				local r,g,b = GetScoreColor(score)
				tb[#tb+1]=string.format("|cFF%02x%02x%02x",r*255,g*255,b*255)
				tb[#tb+1]=score
				tb[#tb+1]="|r\n"
			end
			if info.isDPS then
				local score = info.dpsScore
				tb[#tb+1]="|TInterface\\LFGFrame\\UI-LFG-ICON-PORTRAITROLES:16:16:0:0:64:64:20:39:22:41|t "
				local r,g,b = GetScoreColor(score)
				tb[#tb+1]=string.format("|cFF%02x%02x%02x",r*255,g*255,b*255)
				tb[#tb+1]=score
				tb[#tb+1]="|r\n"
			end
			local main_score = info.mainScore
			if main_score and 0 < main_score then
				tb[#tb+1]="Main "
				local r,g,b = GetScoreColor(main_score)
				tb[#tb+1]=string.format("|cFF%02x%02x%02x",r*255,g*255,b*255)
				tb[#tb+1]=main_score
				tb[#tb+1]="|r\n"
			end
			local legion_score = info.legionScore
			if legion_score and 0 < legion_score then
				tb[#tb+1]="Main "
				local r,g,b = GetScoreColor(legion_score)
				tb[#tb+1]=string.format("|cFF%02x%02x%02x",r*255,g*255,b*255)
				tb[#tb+1]=legion_score
				tb[#tb+1]="|r\n"
			end
			local legion_main_score = info.legionMainScore
			if legion_main_score and 0 < legion_main_score then
				tb[#tb+1]="Legion Main "
				local r,g,b = GetScoreColor(legion_main_score)
				tb[#tb+1]=string.format("|cFF%02x%02x%02x",r*255,g*255,b*255)
				tb[#tb+1]=legion_main_score
				tb[#tb+1]="|r\n"
			end
			local C_LFGList_GetActivityGroupInfo = C_LFGList.GetActivityGroupInfo
			local info_dungeons = info.dungeons
			local info_dungeon_upgrades = info.dungeonUpgrades
--			local info_dungeon_times = info.dungeonTimes
			wipe(restb)
			for k,v in pairs(dungeons) do
				restb[#restb+1] = {C_LFGList_GetActivityGroupInfo(k),info_dungeons[v],info_dungeon_upgrades[v]}--,info_dungeon_times[v]}
			end
			table.sort(restb,function(a,b)
				if a[2] == b[2] then
					if a[3] == b[3] then
						return a[1]<b[1]
					end
					return b[3] < a[3]
				end
				return b[2] < a[2]
			end)
			for i=1,#restb do
				local ele = restb[i]
				tb[#tb+1] = "\n|cFF8080CD"
				tb[#tb+1] = ele[1]
				tb[#tb+1] = "|r  "
				tb[#tb+1] = ele[2]
				local ele3 = ele[3]
				if ele3 then
					if ele3 == 0 then
						tb[#tb+1] = '|c00FF0000-|r'
					else
						for j=1,ele3 do
							tb[#tb+1] = '+'
						end
					end
				end
--[[				local ele4 = ele[4]
				if ele4 then
					if 1 < ele4 then
						tb[#tb+1] = ' |c00FF0000'
					else
						tb[#tb+1] = ' |c0000FF00'
					end
					tb[#tb+1] = ele4*100
					tb[#tb+1] = '%|r'
				end]]
			end

			tb[#tb+1] = "\n\n|cFFFF00FF"
			tb[#tb+1] = "5-9|r "
			tb[#tb+1] = info.keystoneFivePlus
			tb[#tb+1] = "\n|cFFFF00FF"
			tb[#tb+1] = "10-14|r "
			tb[#tb+1] = info.keystoneTenPlus
			tb[#tb+1] = "\n|cFFFF00FF"
			tb[#tb+1] = "15+|r "
			tb[#tb+1] = info.keystoneFifteenPlus

			local dte = info.date
			local dt,tm = dte:match("^(.*)%T(.*)%Z$")
			if dt then
				tb[#tb+1] = "\n\n|cFF8080CD"
				tb[#tb+1] = dt
				tb[#tb+1] = "|r  "
				tb[#tb+1] = tm
			end
		end
		m = pprf[2]
		if m then
			local info = m.profile
			local currentRaid = info.currentRaid
			tb[#tb + 1] = "\n\n|c0000FF00"
			tb[#tb + 1] = currentRaid.name
			tb[#tb + 1] = "|r"
			local function generate_progress(progress)
				for i=1,#progress do
					local ele = progress[i]
					local difficulty = ele.difficulty
					tb[#tb+1] = "\n|cFF8080CD"
					if difficulty == 1 then
						tb[#tb+1] = PLAYER_DIFFICULTY1
					elseif difficulty == 2 then
						tb[#tb+1] = PLAYER_DIFFICULTY2
					elseif difficulty == 3 then
						tb[#tb+1] = PLAYER_DIFFICULTY6
					end
					
					local progressCount = ele.progressCount
					local bossCount = currentRaid.bossCount
					if bossCount == progressCount then
						tb[#tb+1] = "|r "
					else
						tb[#tb+1] = "|r |c00FF0000"
					end
					tb[#tb+1] = progressCount
					tb[#tb+1] = "/"
					tb[#tb+1] = bossCount
					if bossCount ~= progressCount then
						tb[#tb+1] = "|r"
					end
					tb[#tb+1] = " "
					local killsPerBoss = ele.killsPerBoss
					if killsPerBoss then
						for i=1,#killsPerBoss do
							local k = killsPerBoss[i]
							if k == 0 then
								tb[#tb+1]="|c00FF00000|r"
							elseif 19 < k then
								tb[#tb+1]="|c00FF00FF*|r"
							elseif 9 < k then
								tb[#tb+1]="|c0000FF00+|r"
							else
								tb[#tb+1]=k
							end
						end
					end
				end
			end
			generate_progress(info.progress)
			local mainProgress = info.mainProgress
			if mainProgress then
				tb[#tb+1] = "\n\nMain"
				generate_progress(info.mainProgress)
			end
			local dte = info.date
			local dt,tm = dte:match("^(.*)%T(.*)%Z$")
			if dt then
				tb[#tb+1] = "\n\n|cFF8080CD"
				tb[#tb+1] = dt
				tb[#tb+1] = "|r  "
				tb[#tb+1] = tm
			end
		end
	end
	if #tb ~= 0 then
		return table.concat(tb)
	end
end

local player_info = generate_raider_io_info("player")
local player_rio_url = LookingForGroup_Options.armory["Raider.IO"](UnitName("player"))

local function unitcangenerate(unit)
	return (UnitExists(unit) and UnitIsPlayer(unit) and not UnitIsUnit(unit,"player")) and unit
end

local function generate_whose_info()
	return unitcangenerate("mouseover") or unitcangenerate("target") or unitcangenerate("focus") or LookingForGroup_Options.raider_io_name
end


LookingForGroup_Options.armory[PLAYER_OFFLINE] = function(playername)
	LookingForGroup_Options.raider_io_name = playername
	LibStub("AceConfigDialog-3.0"):SelectGroup("LookingForGroup","raider.io")
end

LookingForGroup_Options:push("raider.io",{
	name = "Raider.IO",
	type = "group",
	args =
	{
		search =
		{
			name = SEARCH,
			type = 3,
			get = function()
				return LookingForGroup_Options.raider_io_name
			end,
			set = function(_,v)
				if v=="" then
					LookingForGroup_Options.raider_io_name = nil
				else
					LookingForGroup_Options.raider_io_name = v				
				end
			end,
			type = "input",
			width = "full"
		},	
		create_elitist_activity =
		{
			name = function()
				if C_LFGList.GetActiveEntryInfo() then
					return UNLIST_MY_GROUP
				else
					return L.create_elitist
				end
			end,
			desc = L.activity_desc,
			type = "execute",
			order = 1,
			func = function()
				if C_LFGList.GetActiveEntryInfo() then
					C_LFGList.RemoveListing()
					return
				end
				for bagID = 0, 4 do
					for invID = 1, GetContainerNumSlots(bagID) do
						local itemID = GetContainerItemID(bagID, invID)
						if itemID and itemID == 158923 then
							local itemLink = GetContainerItemLink(bagID, invID)
							local item_id, map, keyLevel, l4,l7 = string.match(itemLink, 'keystone:(%d+):(%d+):(%d+):(%d+):(%d+)')
							local activity_id = maps_to_activity_id[tonumber(map)]
							if activity_id then
								LookingForGroup_Options.db.profile.raider_io_start_a_group_elitist = tonumber(keyLevel)
								local profile = LookingForGroup_Options.db.profile
								local a = profile.a
								wipe(a)
								local _,_,categoryID,groupID = C_LFGList.GetActivityInfo(activity_id)
								a.category = categoryID
								LookingForGroup_Options:SendMessage("LFG_OPT_CATEGORY",LookingForGroup_Options.option_table.args.find.args,categoryID)
								a.group = groupID
								a.activity = activity_id
								local s = profile.s
								wipe(s)
								s.minimum_item_level = math.ceil((GetAverageItemLevel()-10)/5)*5
								LibStub("AceConfigDialog-3.0"):SelectGroup("LookingForGroup","find","s","s")
							end
						end
					end
				end
			end,
			width = "full"
		},
		disable =
		{
			name = DISABLE,
			type = "toggle",
			get = function()
				return LookingForGroup_Options.db.profile.raider_io_disable
			end,
			order = 2,
			set = function(info,val)
				if val then
					LookingForGroup_Options.db.profile.raider_io_disable = val
				else
					LookingForGroup_Options.db.profile.raider_io_disable = nil
				end
			end,
			width = "full"
		},
		check_group_kills =
		{
			name = L.check_kills,
			type = "toggle",
			order = 2,
			get = function()
				return not LookingForGroup_Options.db.profile.raider_io_checkkills
			end,
			set = function(_,val)
				if val then
					LookingForGroup_Options.db.profile.raider_io_checkkills = nil
				else
					LookingForGroup_Options.db.profile.raider_io_checkkills = true
				end
			end
		},
		pf = 
		{
			order = 4,
			name = function()
				LookingForGroup_RaiderIO:RegisterEvent("UNIT_TARGET")
				LookingForGroup_RaiderIO:RegisterEvent("UPDATE_MOUSEOVER_UNIT","UNIT_TARGET")
				LookingForGroup_RaiderIO:RegisterEvent("PLAYER_FOCUS_CHANGED","UNIT_TARGET")

				local t = generate_whose_info()
				if t then
					return generate_raider_io_info(t)	
				else
					return player_info
				end
			end,
			type = "description",
			width = "full"
		},
		raider_io_url =
		{
			order = 5,
			name = "Raider.IO",
			type = "input",
			multiline = true,
			width = "full",
			set = nop,
			get = function()
				local t = generate_whose_info()
				if t then
					local name,server = UnitName(t)
					if name then
						return LookingForGroup_Options.armory["Raider.IO"](table.concat({name,server},"-"))	
					end
				else
					return player_rio_url
				end
			end,
		}
	}
})

function LookingForGroup_RaiderIO:UNIT_TARGET()
	if not LookingForGroup_Options.lfg_frame_is_open() or not LookingForGroup_Options.NotifyChangeIfSelected("raider.io") then
		LookingForGroup_RaiderIO:UnregisterEvent("UNIT_TARGET")
		LookingForGroup_RaiderIO:UnregisterEvent("UPDATE_MOUSEOVER_UNIT")
		LookingForGroup_RaiderIO:UnregisterEvent("PLAYER_FOCUS_CHANGED")
	end
end

function LookingForGroup_RaiderIO:OnInitialize()
	LookingForGroup_RaiderIO:RegisterEvent("GROUP_JOINED")
end

local function check_progress()
	local current = coroutine.running()
	local function resume(...)
		coroutine.resume(current,...)
	end
	LookingForGroup_RaiderIO:RegisterEvent("LFG_LIST_ACTIVE_ENTRY_UPDATE",resume,1)
	local ticker = C_Timer.NewTicker(10,function()
		coroutine.resume(current,2)
	end)
	LookingForGroup_RaiderIO:RegisterEvent("GROUP_LEFT",resume,0)
	LookingForGroup_RaiderIO:RegisterEvent("GROUP_ROSTER_UPDATE",resume,2)
	local tag,event,arg1,arg2,arg3 = coroutine.yield()
	local db=LookingForGroup_Options.db
	local UnitName
	local UnitIsUnit
	local UninviteUnit
	local kicks_tb = {}
	local dialog = {}
	StaticPopupDialogs.LookingForGroup_RaiderIO_Popup = dialog
	while not db.profile.raider_io_checkkills and tag~=0 do
		local active, activityID, iLevel, name, comment, voiceChat, expiration, autoAccept = C_LFGList.GetActiveEntryInfo()
		if active then
			local fullName, shortName, categoryID, groupID = C_LFGList.GetActivityInfo(activityID)
			if groupID ~= LookingForGroup_RaiderIO.CurrentRaidGroupID then
				break
			end
			local player_progress = player_has_finished("player",shortName)
			local nm = GetNumGroupMembers()
			local u = UnitInRaid("player") and "raid" or "party"
			wipe(kicks_tb)
			for i=1,nm do
				local ui = u..i
				if not UnitIsUnit(ui,"player") then
					local name,server = UnitName(ui)
					if name and player_has_finished(ui,shortName)~=player_progress then
						if server then
							kicks_tb[#kicks_tb+1] = name .. "-"..server
						else
							kicks_tb[#kicks_tb+1] = name
						end
					end
				end
			end
			if #kicks_tb ~= 0 then
				wipe(dialog)
				local text = string.format(L.bad_group_format,#kicks_tb)
				if UnitIsGroupLeader("player") or UnitIsGroupAssistant("player") then
					dialog.button1 = L.bad_group_kick
					text = text.."\n"..L.bad_group_warning_leader
				else
					dialog.button1=LEAVE_PARTY
					text = text.."\n"..L.bad_group_warning
				end
				dialog.text =text
				dialog.button2 = CANCEL
				dialog.OnAccept=function()
					coroutine.resume(current,5)
				end
				dialog.OnCancel=function()
					coroutine.resume(current,6)
				end
				StaticPopup_Show("LookingForGroup_RaiderIO_Popup")
				local tag
				repeat
					tag = coroutine.yield()
				until tag ~=5 and tag ~= 6
				if tag == 6 then
					break
				end
				if UnitIsGroupLeader("player") or UnitIsGroupAssistant("player") then
					for i=1,#kicks_tb do
						local e = kicks_tb[i]
						if not UnitIsUnit(e,"player") then
							UninviteUnit(e)
						end
					end
				else
					LeaveParty()
				end
			end
		end
		tag,event,arg1,arg2,arg3 = coroutine.yield()
	end
	ticker:Cancel()
	StaticPopupDialogs.LookingForGroup_RaiderIO_Popup = nil
	LookingForGroup_RaiderIO:UnregisterEvent("LFG_LIST_ACTIVE_ENTRY_UPDATE")
	LookingForGroup_RaiderIO:UnregisterEvent("GROUP_LEFT")
end

function LookingForGroup_RaiderIO:GROUP_JOINED()
	if not LookingForGroup_Options.db.profile.raider_io_checkkills then
		coroutine.wrap(check_progress)()
	end
end
