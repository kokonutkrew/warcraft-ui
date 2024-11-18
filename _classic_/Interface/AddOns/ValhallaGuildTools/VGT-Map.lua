local MODULE_NAME = "VGT-Map"

local bufferSize = 0
local bufferPins = {}
local players = {}

local FRAME_TYPE = "Frame"
local PLAYER = "player"
local COMM_CHANNEL = "GUILD"
local WHISPER_CHANNEL = "WHISPER"
local COMM_PRIORITY = "NORMAL"
local PERCENT = "%"
local NEW_LINE = "\n"
local DELIMITER = ":"
local NAME_SEPERATOR = "-"
local HP_SEPERATOR = " - "
local BACKGROUND = "BACKGROUND"
local SCRIPT_ENTER = "OnEnter"
local SCRIPT_LEAVE = "OnLeave"
local PIN_TEXTURE = "Interface\\MINIMAP\\ObjectIcons.blp"
local REQUEST_LOCATION_MESSAGE = "RL"

local PIN_SIZE = 10

local blizzardPins
local originalPinsHidden = false
local originalPartyAppearanceData
local originalRaidAppearanceData
local hiddenAppearanceData = {
  size = 0,
  sublevel = UNIT_POSITION_FRAME_DEFAULT_SUBLEVEL,
  texture = UNIT_POSITION_FRAME_DEFAULT_TEXTURE,
  shouldShow = false,
  useClassColor = false,
  showRotation = false
}

-- ############################################################
-- ##### LOCAL FUNCTIONS ######################################
-- ############################################################

local colorString = function(colorHex, str)
  return "|c"..colorHex..str.."|r"
end

local getClass = function(name, guildIndex)
  if (guildIndex ~= nil) then
    return select(11, GetGuildRosterInfo(guildIndex));
  end

  if (UnitPlayerOrPetInParty(name)) then
    for i = 1, 5 do
      local unitId = "party"..i
      if (UnitName(unitId) == name) then
        local class = select(2, UnitClass(unitId))
        if class then return class end
      end
    end
  end
  if (UnitPlayerOrPetInRaid(name)) then
    for i = 1, 40 do
      local unitId = "raid"..i
      if (UnitName(unitId) == name) then
        local class = select(2, UnitClass(unitId))
        if class then return class end
      end
    end
  end
  local numTotalMembers = GetNumGuildMembers()
  for i = 1, numTotalMembers do
    local fullname, _, _, _, _, _, _, _, _, _, class = GetGuildRosterInfo(i)
    if (fullname ~= nil) then
      local memberName = strsplit(NAME_SEPERATOR, fullname)
      if (memberName == name) then return class end
    end
  end
end

local formatPlayerTooltip = function(player, class)
  if (not class) then
    class = getClass(player.Name, player.GuildNumber)
  end

  local text = colorString(select(4, GetClassColor(class)), player.Name)

  if (player.HP ~= nil) then
    return text..HP_SEPERATOR..colorString("ff"..VGT.RGBToHex(VGT.ColorGradient(tonumber(player.HP), 1, 0, 0, 1, 1, 0, 0, 1, 0)), VGT.Round(player.HP * 100, 0)..PERCENT)
  end
end

local getGuildNumber = function(name)
  local numTotalMembers = GetNumGuildMembers();
  for i = 1, numTotalMembers do
    local fullname = select(1, GetGuildRosterInfo(i));
    if (fullname ~= nil) then
      local memberName = strsplit(NAME_SEPERATOR, fullname);
      if (name == memberName) then
        return i;
      end
    end
  end
  return nil;
end

local formatTooltip = function(player, distance)
  local text = "";
  local class;
  local zone;

  if (not player.NotInGuild and player.GuildNumber == nil) then
    player.GuildNumber = getGuildNumber(player.Name);
    if (player.GuildNumber == nil) then
      player.NotInGuild = true;
    end
  end

  if (player.GuildNumber ~= nil) then
    _, _, _, _, _, zone, _, _, _, _, class = GetGuildRosterInfo(player.GuildNumber);
    player.Class = class;
    if(zone ~= nil) then
      text = zone..NEW_LINE
    end
  elseif (player.Zone ~= nil) then
    text = player.Zone..NEW_LINE
  end

  text = text..formatPlayerTooltip(player, class)

  for _, otherPlayer in pairs(players) do
    if (otherPlayer ~= player and otherPlayer.X ~= nil and otherPlayer.Y ~= nil and player.X ~= nil and player.Y ~= nil and (abs(player.X - otherPlayer.X) + abs(player.Y - otherPlayer.Y) < distance)) then
      text = text..NEW_LINE..formatPlayerTooltip(otherPlayer, otherPlayer.Class)
    end
  end

  return text
end

local onLeavePin = function(self)
  GameTooltip:Hide()
end

local createNewPin = function()
  local pin = CreateFrame(FRAME_TYPE, nil, WorldFrame)
  pin:SetWidth(PIN_SIZE)
  pin:SetHeight(PIN_SIZE)
  local texture = pin:CreateTexture(nil, BACKGROUND)
  texture:SetTexCoord(0.51, 0.76, 0.00, 0.26) -- Green
  texture:SetAllPoints()
  pin:EnableMouse(true)
  pin.Texture = texture
  return pin
end

local takeFromBufferPool = function()
  if (bufferSize == 0) then
    return createNewPin()
  end
  local pin = bufferPins[bufferSize]
  bufferSize = bufferSize - 1
  return pin
end

local returnToBufferPool = function(pin)
  bufferSize = bufferSize + 1
  bufferPins[bufferSize] = pin
end

local createWorldmapPin = function(player)
  local onEnterPin = function(self)
    GameTooltip:SetOwner(self, "ANCHOR_CURSOR")
    local distance = 50
    local mapId = VGT.LIBS.HBDP.worldmapProvider:GetMap():GetMapID()
    if (mapId) then
      local mapData = VGT.LIBS.HBD.mapData[mapId]
      if (mapData and mapData.mapType) then
        --todo: these are just my best guesses of distances. Probably should be tweaked.
        if (mapData.mapType == 1) then --world
          distance = 300
        end
        if (mapData.mapType == 2) then --continent
          distance = 100
        end
        if (mapData.mapType == 3) then --zone or city
          distance = 25
        end
      end
    end
    GameTooltip:SetText(formatTooltip(self.Player, distance))
    GameTooltip:Show()
  end
  local pin = takeFromBufferPool()
  pin:SetScript(SCRIPT_ENTER, onEnterPin)
  pin:SetScript(SCRIPT_LEAVE, onLeavePin)
  pin.Texture:SetTexture(PIN_TEXTURE)
  pin.Player = player
  player.WorldmapPin = pin
  player.WorldmapTexture = pin.Texture
end

local createMinimapPin = function(player)
  local onEnterPin = function(self)
    GameTooltip:SetOwner(self, "ANCHOR_CURSOR")
    local distance = 15
    --todo set distance for minimap based on zoom level
    GameTooltip:SetText(formatTooltip(self.Player, distance))
    GameTooltip:Show()
  end
  local pin = takeFromBufferPool()
  pin:SetScript(SCRIPT_ENTER, onEnterPin)
  pin:SetScript(SCRIPT_LEAVE, onLeavePin)
  pin.Texture:SetTexture(PIN_TEXTURE)
  pin.Player = player
  player.MinimapPin = pin
  player.MinimapTexture = pin.Texture
end

local isDungeonCoords = function(x, y, instanceMapId, decimals)
  for key, value in pairs(VGT.raids) do
    if (value and not tonumber(value) and x == VGT.Round(value[2], decimals or 0) and y == VGT.Round(value[3], decimals or 0) and instanceMapId == value[4]) then
      return true
    end
  end
  for key, value in pairs(VGT.dungeons) do
    if (value and not tonumber(value) and x == VGT.Round(value[2], decimals or 0) and y == VGT.Round(value[3], decimals or 0) and instanceMapId == value[4]) then
      return true
    end
  end
  return false
end

local addOrUpdatePlayer = function(name, x, y, continentId, hp, fromCommMessage, zone)
  local player = players[name]
  if (not player) then
    player = {}
    createMinimapPin(player)
    createWorldmapPin(player)
    player.X = 0
    player.Y = 0
    player.ContinentId = nil
    player.Name = name
    player.HasCommMessages = false
    player.LastCommReceived = 0
    if (UnitName("target") == name) then
      player.Targeted = true
    end
    players[name] = player
  end

  if (fromCommMessage) then
    player.HasCommMessages = true
    player.LastCommReceived = GetTime()
  end

  player.HP = hp
  player.Zone = zone
  player.PendingLocationChange = (x ~= player.X or y ~= player.Y or continentId ~= player.ContinentId)
  player.X = x
  player.Y = y
  player.ContinentId = continentId
end

local destroyPlayer = function(name)
  local player = players[name]
  if (player ~= nil) then
    players[name] = nil
    VGT.LIBS.HBDP:RemoveWorldMapIcon(MODULE_NAME, player.WorldmapPin)
    VGT.LIBS.HBDP:RemoveMinimapIcon(MODULE_NAME, player.MinimapPin)
    returnToBufferPool(player.WorldmapPin)
    returnToBufferPool(player.MinimapPin)
  end
end

local worldPosition = function(decimals)
  local x, y, instanceMapId = VGT.LIBS.HBD:GetPlayerWorldPosition()
  local dungeon = (VGT.dungeons[instanceMapId] or VGT.raids[instanceMapId])
  if (dungeon ~= nil and dungeon[2] ~= nil and dungeon[3] ~= nil and dungeon[4] ~= nil) then
    x = dungeon[2]
    y = dungeon[3]
  end
  return VGT.Round(x, decimals or 0), VGT.Round(y, decimals or 0), instanceMapId
end

local sendMyLocation = function(target)
  if (IsInGuild() and VGT.OPTIONS.MAP.sendMyLocation) then
    local x, y, instanceMapId = worldPosition()
    local hp = UnitHealth(PLAYER) / UnitHealthMax(PLAYER)
    if (instanceMapId ~= nil and x ~= nil and y ~= nil and hp ~= nil) then
      local data = instanceMapId..DELIMITER..x..DELIMITER..y..DELIMITER..hp
      if (target ~= nil) then
        VGT.LIBS:SendCommMessage(MODULE_NAME, data, WHISPER_CHANNEL, target, COMM_PRIORITY)
      else
        if (IsInGuild()) then
          VGT.LIBS:SendCommMessage(MODULE_NAME, data, COMM_CHANNEL, nil, COMM_PRIORITY)
        end
      end
    end
  end
end

local updatePinColors = function(name, player)
  if (player.Targeted) then
    player.MinimapTexture:SetTexCoord(0.26, 0.51, 0.00, 0.26) -- Red
    player.WorldmapTexture:SetTexCoord(0.26, 0.51, 0.00, 0.26) -- Red
  elseif (UnitInParty(name)) then
    player.MinimapTexture:SetTexCoord(0.00, 0.26, 0.26, 0.51) -- Blue
    player.WorldmapTexture:SetTexCoord(0.00, 0.26, 0.26, 0.51) -- Blue
  else
    player.MinimapTexture:SetTexCoord(0.51, 0.76, 0.00, 0.26) -- Green
    player.WorldmapTexture:SetTexCoord(0.51, 0.76, 0.00, 0.26) -- Green
  end
end

local toggleBlizzardPins = function(show)
  if (not blizzardPins) then
    for bpin in VGT.LIBS.HBDP.worldmapProvider:GetMap():EnumeratePinsByTemplate("GroupMembersPinTemplate") do
      blizzardPins = bpin;
      if (not originalRaidAppearanceData) then
        originalPartyAppearanceData = bpin.unitAppearanceData["raid"]
      end
      if (not originalPartyAppearanceData) then
        originalRaidAppearanceData = bpin.unitAppearanceData["party"]
      end
      originalPinsHidden = false
    end
  end
  if (show) then
    if (originalPinsHidden) then
      blizzardPins.unitAppearanceData["raid"] = originalRaidAppearanceData
      blizzardPins.unitAppearanceData["party"] = originalPartyAppearanceData
      originalPinsHidden = false
    end
  else
    if (not originalPinsHidden) then
      blizzardPins.unitAppearanceData["raid"] = hiddenAppearanceData
      blizzardPins.unitAppearanceData["party"] = hiddenAppearanceData
      originalPinsHidden = true
    end
  end
end

local updatePins = function()
  for name, player in pairs(players) do
    if (player.PendingLocationChange) then
      --VGT.LIBS.HBDP:RemoveWorldMapIcon(MODULE_NAME, player.WorldmapPin)
      --VGT.LIBS.HBDP:RemoveMinimapIcon(MODULE_NAME, player.MinimapPin)
      updatePinColors(name, player);
      if (player.ContinentId ~= nil and player.X ~= nil and player.Y ~= nil) then
        if (VGT.OPTIONS.MAP.mode ~= "minimap") then
          VGT.LIBS.HBDP:AddWorldMapIconWorld(MODULE_NAME, player.WorldmapPin, player.ContinentId, player.X, player.Y, 3, "PIN_FRAME_LEVEL_GROUP_MEMBER")
        end
        if (VGT.OPTIONS.MAP.mode ~= "map" and not UnitIsUnit(name, "player")) then
          VGT.LIBS.HBDP:AddMinimapIconWorld(MODULE_NAME, player.MinimapPin, player.ContinentId, player.X, player.Y, VGT.OPTIONS.MAP.showMinimapOutOfBounds and UnitInParty(name))
        end
      end
      player.PendingLocationChange = false
    end
  end
  VGT.LIBS.HBDP.worldmapProvider:RefreshAllData()
end

local addOrUpdatePartyMember = function(unit)
  local name = UnitName(unit)
  if (name ~= nil) then
    local x, y, continentOrInstanceId = VGT.LIBS.HBD:GetUnitWorldPosition(name)

    if (x == nil or y == nil) then
      local dungeon = (VGT.dungeons[continentOrInstanceId] or VGT.raids[continentOrInstanceId])
      if (dungeon ~= nil and dungeon[2] ~= nil and dungeon[3] ~= nil and dungeon[4] ~= nil) then
        addOrUpdatePlayer(name, dungeon[2], dungeon[3], dungeon[4], UnitHealth(unit) / UnitHealthMax(unit), false, dungeon[1])
        return
      else
        --destroyPlayer(name) -- Unit is in an unknown instance. Don't show a pin.
      end
    end

    local zone
    local mapId = C_Map.GetBestMapForUnit(unit)
    if (mapId) then
      local mapInfo = C_Map.GetMapInfo(mapId)
      if (mapInfo) then
        zone = mapInfo.name
      end
    end

    addOrUpdatePlayer(name, x, y, continentOrInstanceId, UnitHealth(unit) / UnitHealthMax(unit), false, zone)
  end
end

local updatePartyMembers = function()
  if (VGT.OPTIONS.MAP.showMe) then
    addOrUpdatePartyMember("player")
  else
    destroyPlayer(UnitName(PLAYER))
  end
  if (UnitPlayerOrPetInRaid("player")) then
    for i = 1, 40 do
      addOrUpdatePartyMember("raid"..i)
    end
  else
    if (UnitPlayerOrPetInParty("player")) then
      for i = 1, 5 do
        addOrUpdatePartyMember("party"..i)
      end
    end
  end
end

local parseMessage = function(message)
  local continentIdString, xString, yString, hpString = strsplit(DELIMITER, message)
  return tonumber(continentIdString), tonumber(xString), tonumber(yString), tonumber(hpString)
end

local handleMapMessageReceivedEvent = function(prefix, message, distribution, sender)
  if (prefix ~= MODULE_NAME) then
    return
  end

  if (message == REQUEST_LOCATION_MESSAGE) then
    sendMyLocation(sender);
  else
    local continentId, x, y, hp = parseMessage(message)

    if (continentId ~= nil and x ~= nil and y ~= nil and not UnitIsUnit(sender, PLAYER) and not UnitInParty(sender)) then
      addOrUpdatePlayer(sender, x, y, continentId, hp, true)
    end
  end
end

local onEvent = function(_, event)
  if (event == "GUILD_ROSTER_UPDATE") then
    for name, player in pairs(players) do
      player.GuildNumber = nil;
    end
  elseif (event == "PLAYER_TARGET_CHANGED") then
    local targetName = UnitName("target"); -- UnitIsUnit does not work for non-grouped units.
    for name, player in pairs(players) do
      if (name == targetName) then
        player.Targeted = true;
        updatePinColors(name, player);
      elseif (player.Targeted) then
        player.Targeted = false;
        updatePinColors(name, player);
      end
    end
  end
end

local cleanUnusedPins = function()
  for name, player in pairs(players) do
    if (not VGT.OPTIONS.MAP.enabled or -- remove all pins if the addon is disabled.
      (not UnitInParty(name) and not player.HasCommMessages and not UnitIsUnit(name, PLAYER)) or -- remove non-party members that aren't sending comm messages
    (player.HasCommMessages and player.LastCommReceived and (GetTime() - player.LastCommReceived) > 180)) then -- remove pins that haven't had a new comm message in 3 minutes. (happens if a user disables reporting, or if the addon crashes)
      destroyPlayer(name)
    elseif (VGT.OPTIONS.MAP.mode == "minimap") then -- remove the worldmap pin if the user changed to minimap only.
      VGT.LIBS.HBDP:RemoveWorldMapIcon(MODULE_NAME, player.WorldmapPin)
    elseif (VGT.OPTIONS.MAP.mode == "map") then -- remove the minimap pin if the user changed to worldmap only.
      VGT.LIBS.HBDP:RemoveMinimapIcon(MODULE_NAME, player.MinimapPin)
    end
  end
end

local lastUpdate = GetTime()
local main = function()
  if (VGT.OPTIONS.MAP.enabled) then
    local now = GetTime()
    local delay = 3
    if (UnitAffectingCombat(PLAYER)) then
      delay = 6
    end
    if (select(1, IsInInstance())) then
      delay = 60
    end
    if (UnitIsAFK(PLAYER)) then
      delay = 120
    end

    updatePartyMembers()
    cleanUnusedPins()
    toggleBlizzardPins(VGT.OPTIONS.MAP.mode == "minimap" or C_PvP.IsPVPMap())
    updatePins()

    if (now - lastUpdate >= delay) then
      sendMyLocation()
      lastUpdate = now
    end
  else
    cleanUnusedPins()
    toggleBlizzardPins(true)
  end
end

-- ############################################################
-- ##### GLOBAL FUNCTIONS #####################################
-- ############################################################

function VGT.Map_Initialize()
  if (VGT.OPTIONS.MAP.enabled) then
    if (not VGT.MapInitialized) then
      VGT.MapInitialized = true
      VGT.LIBS:RegisterComm(MODULE_NAME, handleMapMessageReceivedEvent)
      if (IsInGuild()) then
        VGT.LIBS:SendCommMessage(MODULE_NAME, REQUEST_LOCATION_MESSAGE, COMM_CHANNEL, nil, COMM_PRIORITY)
      end
      local FRAME = CreateFrame("Frame")
      FRAME:RegisterEvent("GUILD_ROSTER_UPDATE")
      FRAME:RegisterEvent("PLAYER_TARGET_CHANGED")
      FRAME:SetScript("OnEvent", onEvent)
      FRAME:SetScript("OnUpdate", main)
    end
  end
end
