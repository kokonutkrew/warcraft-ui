local MODULE_NAME = "VGT-Reminder"
local REMINDERFRAME = CreateFrame("Frame");

local MIN_DUNGEON_LEVEL = 15
local MAX_DUNGEON_KILL = 5
local MIN_RAID_LEVEL = 60
local MAX_RAID_KILL = 1

local function pluralize(count, single, plural)
  if (count == 1) then
    return single
  else
    return plural
  end
end

local function isDungeonEligible(level, killCount)
  if (level >= MIN_DUNGEON_LEVEL and killCount < MAX_DUNGEON_KILL) then
    return true
  end
  return false
end

local function isRaidEligible(level, raidKillCount)
  if (level >= MIN_RAID_LEVEL and raidKillCount < MAX_RAID_KILL) then
    return true
  end
  return false
end

local function onEvent(_, event, arg1, arg2)
  if (event == "ADDON_LOADED") then
    -- if (not VGT_REMINDERS[name][2] and (not VGT_REMINDERS[name][1] or not VGT.withinDays(VGT_REMINDERS[name][1], 1))) then
    --   local level = rosterInfo[2][1]
    --   local killCount = (VGT.getBossCountForPlayer(VGT.GetMyGuildName(), name, false) or 0)
    --   local isDungeonEligible = isDungeonEligible(level, killCount)
    --   local raidKillCount = (VGT.getBossCountForPlayer(VGT.GetMyGuildName(), name, true) or 0)
    --   local isRaidEligible = isRaidEligible(level, raidKillCount)
    --   if (rosterInfo[5][1] and rosterInfo[5][2] == 0) then
    --     if (isDungeonEligible or isRaidEligible) then
    --       local message = "(AUTOMATED) Hello "..name..", this is a daily reminder that you can still "
    --       if (isDungeonEligible) then
    --         VGT_REMINDERS[name][1] = GetServerTime()
    --         message = message.."kill "..MAX_DUNGEON_KILL - killCount.." more dungeon bosses "
    --       end
    --       if (isDungeonEligible and isRaidEligible) then
    --         message = message.."and "
    --       end
    --       if (isRaidEligible) then
    --         VGT_REMINDERS[name][1] = GetServerTime()
    --         message = message.."kill "..MAX_RAID_KILL - raidKillCount.." more 20-man raid bosses "
    --       end
    --       message = message.."with guild-members for bonus EP this week. Have a nice day!"
    --       message = message.."Respond with 'stop' to never see this message again."
    --       SendChatMessage(message, "WHISPER", nil, name)
    --     end
    --   end
    -- end
  end
end

REMINDERFRAME:RegisterEvent("ADDON_LOADED")
REMINDERFRAME:SetScript("OnEvent", onEvent)
GuildRoster()
