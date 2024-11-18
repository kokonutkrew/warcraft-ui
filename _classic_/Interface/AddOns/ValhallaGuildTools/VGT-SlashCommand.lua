
function VGT.PrintPR(player)
  if (player == nil) then
    player = UnitName("player");
  end
  player = player:gsub("^%l", string.upper);

  local memberCount = GetNumGuildMembers();
  for i = 1, memberCount do
    local fullName, _, _, _, _, _, _, officerNote = GetGuildRosterInfo(i);
    if (select(1, strsplit("-", fullName)) == player) then
      local ep, gp = strsplit(",", officerNote);

      ep = tonumber(ep);
      gp = tonumber(gp);

      if (ep and gp) then
        VGT.Log(VGT.LOG_LEVEL.SYSTEM, "PR for %s is %.2f (%d ep / %d gp)", player, ep / gp, ep, gp);
      else
        VGT.Log(VGT.LOG_LEVEL.SYSTEM, "Could not read EP/GP data from guild roster.");
      end
      return;
    end
  end

  VGT.Log(VGT.LOG_LEVEL.SYSTEM, "No guild member named "..player.." was found.");
end

function VGT.PrintUserCount(by)
  VGT.EnumerateUsers(function(users)
    if (by == "version") then
    local versions = {};

    for player, version in pairs(users) do
      local versionPlayers = versions[version];
      if (not versionPlayers) then
        versionPlayers = {};
        versions[version] = versionPlayers;
      end
      versionPlayers[#versionPlayers + 1] = player;
    end

    table.sort(versions);

    for version, versionUsers in pairs(versions) do
      table.sort(versionUsers);

      local report = string.format("Version %s: ", version);

      for i, player in ipairs(versionUsers) do
        if (i > 1) then
          report = string.format("%s, %s", report, player);
        else
          report = report..player;
        end
      end

      VGT.Log(VGT.LOG_LEVEL.SYSTEM, report);
    end
  elseif (by == "name") then
    local players = {};

    for player, _ in pairs(users) do
      players[#players + 1] = player;
    end

    table.sort(players);
    local report = "Players using VGT: ";
    local separator = false;

    for i, player in ipairs(players) do
      if (i > 1) then
        report = string.format("%s, %s", report, player);
      else
        report = report..player;
      end
    end

    VGT.Log(VGT.LOG_LEVEL.SYSTEM, report);
  else
    local usersCount = 0;
    local usingThisVersionCount = 0;

    for key, value in pairs(users) do
      usersCount = usersCount + 1;

      if (value == VGT.VERSION) then
        usingThisVersionCount = usingThisVersionCount + 1;
      end
    end
    VGT.Log(VGT.LOG_LEVEL.SYSTEM, "%d players are using the addon, and %d are using the same version as you.", usersCount, usingThisVersionCount);
  end
end);
end

function VGT.PrintAbout()
VGT.Log(VGT.LOG_LEVEL.SYSTEM, "installed version: %s", VGT.VERSION)
end

function VGT.PrintHelp()
VGT.Log(VGT.LOG_LEVEL.SYSTEM, "Command List:")
VGT.Log(VGT.LOG_LEVEL.SYSTEM, "/vgt about - version information")
--TODO: Re-enable hints for dungeon commands
--VGT.Log(VGT.LOG_LEVEL.SYSTEM, "/vgt dungeon list players [timeframeInDays:7] - list of players that killed a dungeon boss within the timeframe")
--VGT.Log(VGT.LOG_LEVEL.SYSTEM, "/vgt dungeon stats [player] - Shows the dungeon statistics of the player. If no player is specified, shows your statistics")
--VGT.Log(VGT.LOG_LEVEL.SYSTEM, "/vgt dungeon leaderboard - Shows the dungeon leaderboard")
VGT.Log(VGT.LOG_LEVEL.SYSTEM, "/vgt pr [player] - Calculates the PR of the player. If no player is specified, calculates your PR.")
end

-- ############################################################
-- ##### SLASH COMMANDS #######################################
-- ############################################################

SlashCmdList["VGT"] = function(message)
local command, arg1, arg2, arg3 = strsplit(" ", message:lower())
if (command == "") then
  InterfaceOptionsFrame_OpenToCategory(VGT.menu)
  InterfaceOptionsFrame_OpenToCategory(VGT.menu)
elseif (command == "help") then
  VGT.PrintHelp()
elseif (command == "about") then
  VGT.PrintAbout()
elseif (command == "dungeon") then
  print("these commands are temporarily disabled")
  -- if (arg1 == "list" and arg2 == "players") then
  --   VGT.PrintDungeonList(tonumber(arg3), false)
  -- elseif (arg1 == "stats") then
  --   VGT.PrintPlayerStatistics(arg2)
  -- elseif (arg1 == "leaderboard") then
  --   VGT.PrintDungeonLeaderboard()
  -- else
  --   VGT.Log(VGT.LOG_LEVEL.ERROR, "invalid command - type `/vgt help` for a list of commands")
  -- end
elseif (command == "pr") then
  VGT.PrintPR(arg1)
elseif (command == "users") then
  if (arg1 == "by") then
    VGT.PrintUserCount(arg2)
  else
    VGT.PrintUserCount()
  end
else
  VGT.Log(VGT.LOG_LEVEL.ERROR, "invalid command - type `/vgt help` for a list of commands")
end
end
