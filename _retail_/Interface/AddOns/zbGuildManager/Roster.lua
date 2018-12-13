-- Author: jtrack3d
-- Last Updated: @file-dateiso@

local _, ZbGm = ...

-- Convert date to string
local function _StringFromDate(dateValue)
    if dateValue ~= nil and type(dateValue) == "number" and dateValue ~= 0 then
	    return date("%m-%d-%y", dateValue, dateValue, dateValue)
    else
        return "   NA"
    end
end

-------------------------------------------------------------------------------------
-- INTERNAL ROSTER MEMORY OBJECT
-------------------------------------------------------------------------------------
ZbGm.ZRoster = {
    -- Has table of all characters
	--    Character (name, server, rank, class, lastlog, joindate)
	--       parent
	--       child ->nextChild

    players = {},  			-- structure containing core player data and list of characters array.
    playerIndex = {},		-- filtered index into the players array for what is showing on main display.

	IndexMaxLen = 29,       -- should be 29, max length + 2parens = 31 character note.

    -- See Reconstruct, it counts them.
    ActiveCount = 0,        -- Number of active players
    SemiActiveCount = 0,    -- Number of semi-active players
    InactiveCount = 0,      -- Number of Inactive players
    AbsentCount = 0,        -- Number of rarely-active players.

	-- These functions are used by Table.Sort to sort by various columns.
	sortByFunctions = {
		["Name"] = function(a,b) return a < b end,
		["NameDesc"] = function(a,b) return a > b end,
		["Log"] = function(a,b) return ZbGm.ZRoster:GetLastLogin(ZbGm.ZRoster.players[a]) <  ZbGm.ZRoster:GetLastLogin(ZbGm.ZRoster.players[b])
			end,
		["LogDesc"] = function(a,b) return ZbGm.ZRoster:GetLastLogin(ZbGm.ZRoster.players[b]) <  ZbGm.ZRoster:GetLastLogin(ZbGm.ZRoster.players[a])  end,
		["Join"] = function(a,b) return ZbGm.ZRoster:GetJoinDate(ZbGm.ZRoster.players[a]) < ZbGm.ZRoster:GetJoinDate(ZbGm.ZRoster.players[b])  end,
		["JoinDesc"] = function(a,b) return ZbGm.ZRoster:GetJoinDate(ZbGm.ZRoster.players[a]) > ZbGm.ZRoster:GetJoinDate(ZbGm.ZRoster.players[b])  end,
		["Rank"] = function(a,b)
			if ZbGm.ZRoster.players[a].rank == ZbGm.ZRoster.players[b].rank then
				-- sort by name if equal rank.
				return ZbGm.ZRoster.sortByFunctions["Name"](a,b);
			else
				return ZbGm.ZRoster.players[a].rank < ZbGm.ZRoster.players[b].rank;
			end
		end,
		["RankDesc"] = function(a,b)
			if ZbGm.ZRoster.players[a].rank == ZbGm.ZRoster.players[b].rank then
				-- sort by name if equal rank.
				return ZbGm.ZRoster.sortByFunctions["Name"](a,b);
			else
				return ZbGm.ZRoster.players[a].rank > ZbGm.ZRoster.players[b].rank;
			end
		end,
		["Alts"] = function(a,b) return ZbGm.ZRoster:GetNumAlts(ZbGm.ZRoster.players[a]) < ZbGm.ZRoster:GetNumAlts(ZbGm.ZRoster.players[b])  end,
		["AltsDesc"] = function(a,b) return ZbGm.ZRoster:GetNumAlts(ZbGm.ZRoster.players[a]) > ZbGm.ZRoster:GetNumAlts(ZbGm.ZRoster.players[b]) end,
		["Realm"] = function(a,b) return ZbGm.ZRoster.players[a].server < ZbGm.ZRoster.players[b].server end,
		["RealmDesc"] = function(a,b) return ZbGm.ZRoster.players[a].server > ZbGm.ZRoster.players[b].server end,
	},

	sortIndexBy = "Name",   -- "Name", "Rank", "Joined", "Log", "Alts"
}

local ZR = ZbGm.ZRoster;

function ZR.AddCharacter(self, parentIndex, name, server, rank, class, note, officernote, login, join)
    local full = string.format("%s-%s", name, server);
    local myIndex = full:sub(1, self.IndexMaxLen);
    if parentIndex then
        parentIndex = parentIndex:sub(1, self.IndexMaxLen)
    end

    if self.players[myIndex] == nil then
        -- Add Root Record
        self.players[myIndex] = {name=name, server=server, full=full, rank=rank, class=class, note=note, onote=officernote, lastlogin=login, joindate=join, parentIndex=parentIndex, parentNode=nil, childNode=nil, nextChild = nil};
    else
        -- All other fields don't change
        local toon = self.players[myIndex];
        toon.rank = rank;
        toon.lastlogin = login;
        toon.joindate = join;
        toon.note = note;
        toon.childCount = 0;
        toon.onote = officernote;
        toon.parentIndex = parentIndex;
        toon.childNode = nil;  -- reset lineage
        toon.parentNode = nil; -- reset lineage
        toon.nextChild = nil;
    end
end

-- Builds an array of "indexes" to display in the main display.
-- searchfor allows searching main or alt names.
function ZR.BuildFilteredIndex(self, searchfor, mains)
    searchfor = searchfor:lower();
    local newMainList = {};

    --mains = true

    for idx in pairs(self.players) do

        if string.len(searchfor) == 0 then
            if not mains or (mains and self.players[idx].parentNode == nil) then
                table.insert(newMainList, idx)
            end
        else
            if string.find(idx:lower(), searchfor) then
                table.insert(newMainList, idx)
            end
        end
    end

    ZbGm.ZRoster.playerIndex = newMainList

    --print ZbGm.ZRoster.playerIndex[1]
    self.SortIndex(self)
end

function ZR.BuildUnassociatedList(self)
    local unassoc = nil;
    for idx in pairs(self.players) do
        local itm = self.players[idx];
        if type(itm)=="table" then
            if not itm.parentNode and itm.joindate == 0 and itm.full:sub(1,self.IndexMaxLen) == idx then
                if not unassoc then unassoc = {} end
                table.insert(unassoc, idx)
            end
        end
    end
    return unassoc;
end

function ZR.DumpPlayer(self, mainIndex)
  -- Get a node.
  local node = self.players[mainIndex:sub(1,self.IndexMaxLen)];

  if node == nil then
    print("Dump: " .. mainIndex .. " not found.");
    return;
  end

  local parentNodeName = nil;
  if node.parentNode == nil then
      parentNodeName = "nil";
  else
      parentNodeName = node.parentNode.full;
  end
  print (string.format("Main %s (parent %s)",node.name, parentNodeName));
  local child = node.childNode;

  while child do
    local tparent = "nil";
    local tchild = "nil";
    local tsib = "nil";

    if child.parentNode then tparent = child.parentNode.full end;
    if child.childNode then tchild = child.childNode.full end;
    if child.nextChild then tsib = child.nextChild.full end;

    print (string.format("   %s (parent=%s, nextsib=%s, child=%s)", child.name, tparent, tsib, tchild));
    child = child.nextChild;
  end
end

function ZR.ExportCSV(self)
    local exportData = {};
    for idx in pairs(self.players) do
        local itm = self.players[idx];

        if itm.parentNode == nil then
            exportData[#exportData+1] = string.format("\"%s\",\"%s\",\"%s\",\"%s\",\"%s\"", itm.full, itm.server, itm.rank, _StringFromDate(itm.joindate), _StringFromDate(itm.lastlogin));
        end
    end
    return table.concat(exportData, "\n");
end

function ZR.GetCharacter(self, charIndex)
    if charIndex == nil then return nil; end
    return ZbGm.ZRoster.players[charIndex:sub(1, self.IndexMaxLen)];
end

-- Fills up an array with character data.
function ZR.GetCharacterIndices(self, character, charTable)

    if character.parentNode then
        character = character.parentNode;
    end

    if character and charTable then
        local i = 1;
        local ptr = character.childNode;

        charTable[i] = character.full;

        while ptr and i < 30 do
            i = i + 1;
            charTable[i] = ptr.full;
            --print (i .. " " .. ptr.full);
            ptr = ptr.nextChild;
        end
        return i;
    end

    return 0;
end

-- Returns a player's main character record.  If the player's main character
-- is missing, returns the first available character of the player.
function ZR.GetFilteredCharacter(self, index)
    return ZbGm.ZRoster.players[ZbGm.ZRoster.playerIndex[index]];
end

function ZR.GetFilteredIndexCount(self)
    return #(self.playerIndex)
end

function ZR.GetJoinDate(self, node)
    if node.parentNode then
        return node.parentNode.joindate;
    else
        return node.joindate;
    end
end

function ZR.GetLastLogin(self, node)
    if node then
        if node.parentNode then
            return node.parentNode.lastlogin;
        else
            return node.lastlogin;
        end
    else
        return 0;
    end
end

function ZR.GetNumAlts(self, node)
    local parentNode = node;
    if node.parentNode then
        parentNode = node.parentNode;
    end

    -- see if already counted;
    if parentNode.childCount and parentNode.childCount > 0 then
        return parentNode.childCount + 1;
    end


    -- unknown figure it out.
    local count = 0;
    local ptr = nil;
    if node.parentNode then
        ptr = node.parentNode.childNode;
    else
        ptr = node.childNode;
    end

    while ptr and count < 100 do
        count = count + 1;
        ptr = ptr.nextChild;
    end

    parentNode.childCount = count;
    return count + 1
end

function ZR.HasUnassociated(self)
    for idx in pairs(self.players) do
        if type(self.players[idx])=="table" then
            if not self.players[idx].parentNode and self.players[idx].joindate == 0 then
                return true;
            end
        end
    end
    return false;
end

function ZR.InsertChildNode(self, node, parentNode)
    if node.full == parentNode.full then
        return;
    end

    -- Link child to it's parent.
    node.parentNode = parentNode;
    node.childNode = nil;
    node.nextChild = nil;

    -- First child
    if parentNode.childNode == nil then
        parentNode.childNode = node
    else
        -- Initialize location in parent's children list.
        local curNode = parentNode.childNode;

        -- Insert at head of list.
        if node.full < parentNode.childNode.full then
            node.nextChild = parentNode.childNode;
            parentNode.childNode = node;
        else
            local circular = false;
            local saveStart = curNode;
            while (curNode.nextChild) and node.full > curNode.nextChild.full do
                curNode = curNode.nextChild

                if saveStart == curNode then
                    circular = true;
                    break;
                end
            end

            node.nextChild = curNode.nextChild
            curNode.nextChild = node
        end
    end

    if parentNode.childCount then
        parentNode.childCount = 0;
    end
end

-- Determins if the player by index name is a main.
function ZR.IsMain(self, mainIndex)
    local node = self.players[mainIndex:sub(1,self.IndexMaxLen)];

    if node == nil then
        return false;
    end

    if node.parentIndex == nil and node.joindate ~= 0 then
        return true;
    end

    return false;
end

function ZR.ReconstructLists(self, savedDatesDB)
    local fixNotesList = nil;
    local nilOut = nil;

    -- Pass 1 - link parent to children.
    -- Pass 2 - clean-up, deal with missing data, call back for updates.
    --print("pass 1");


    for idx in pairs(self.players) do
        -- Must deal with missing parent.
        -- Must delete missing node

        -- Get a node.
        local node = self.players[idx];

        -- If it has a parent (it isn't a parent).
        if node.parentIndex then

            -- Find the node specified as parent.
            local parentNode = self.players[node.parentIndex];

            -- If parent node is missing, link to this node as the parent.
            if parentNode == nil then

                -- Create a reference by the old parent name to this node as the parent...
                -- i.e. a false miss-match.  ["jack"] = "harry".
                -- This allows all future missing-parent nodes to find "jack" and creates "harry" as the new parent.
                -- Problem is, the child will still think it's parent is "jack".  This will have to be resolved.
                self.players[node.parentIndex] = node;

                -- This is essentially making first found the new main.  So, set this as main.
                if savedDatesDB[node.parentIndex] then

                    if savedDatesDB[node.parentIndex].join > 0 then
                        node.joindate = savedDatesDB[node.parentIndex].join;
                        print("zbGuildManager: Recovered missing main join date for " .. node.parentIndex .. " as " .. node.joindate);
                        node.parentIndex = nil;

                        if not fixNotesList then fixNotesList = {} end
                        table.insert(fixNotesList, idx);
                    end
                end

                -- Add a new name to the nil them out list.
                if not nilOut then nilOut = {} end;
                table.insert(nilOut, node.parentIndex);
                --print("nil out - " .. node.parentIndex);
                --print(savedDatesDB[node.parentIndex].join);
            else
                self:InsertChildNode(node, parentNode);
            end
        end

        if node.parentNode then
            node.parentNode.lastlogin = math.max(node.parentNode.lastlogin, node.lastlogin);
        end

    end

    -- Blank out the orphaned parents.
    if nilOut then
        for i=1,#nilOut do
            self.players[nilOut[i]] = nil;
        end
    end

    -- Count members in time range.
    self.ActiveCount = 0;
    self.SemiActiveCount = 0;
    self.InactiveCount = 0;
    self.AbsentCount = 0;

    for idx in pairs(self.players) do
        if self.players[idx].parentNode == nil then
            local deltaLog = (time() - self.players[idx].lastlogin) / (86400*7)
            --print (deltaLog)
            if deltaLog <= 2 then   	-- Green
                self.ActiveCount = self.ActiveCount + 1;
            elseif deltaLog <= 4 then  	-- Yellow
                self.SemiActiveCount = self.SemiActiveCount + 1;
            elseif deltaLog < 19 then  	-- Orange
                self.InactiveCount = self.InactiveCount + 1;
            else						-- Red
                self.AbsentCount = self.AbsentCount + 1;
            end
        end
    end

    --print ("Active = " .. ZRoster.ActiveCount);

    return fixNotesList;
end

function ZR.RemoveCharacter(self, indexName)
    -- Locate the character
    local toon = self.players[indexName];
    local parentNode = nil;

    if toon then
        parentNode = toon.parentNode;

        -- If child character, just fix linked list.
        if parentNode then

            -- Toon is first child.
            if toon.parentNode.childNode == toon then
                -- removed!
                toon.parentNode.childNode = toon.nextChild;
            else
                -- Find node before this node.
                local ptr = toon.parentNode.childNode;

                while ptr do
                    if ptr.nextChild == toon then
                        -- removed!
                        ptr.nextChild = toon.nextChild;
                        break;
                    end
                    ptr = ptr.nextChild;
                end
            end
        else
            -- IT IS THE PARENT.
            --print ("MAIN REMOVE")
            parentNode = toon.childNode;

            if parentNode then
                -- Make child make it's next a child.
                parentNode.childNode = parentNode.nextChild;
                parentNode.nextChild = nil; -- no longer child list.
                parentNode.parentNode = nil; -- no longer a child.

                parentNode.joindate = toon.joindate;  -- save the join date.

                local ptr = parentNode.childNode;
                while ptr do
                    ptr.parentNode = parentNode;
                    ptr = ptr.nextChild;
                end

                --print ("new parent " .. parentNode.full)
                --print ("next child " .. parentNode.childNode.full)
            end
        end
    end

    -- Delete the reference to the node.
    self.players[indexName] = nil;

    return parentNode;
end

function ZR.RemoveChildNode(self, node)
    local parentNode = node.parentNode;

    if parentNode then
        --print("remove child node");
        if node.parentNode.childNode == node then
            -- removed!
            node.parentNode.childNode = node.nextChild;
            node.parentNode = nil;
        else
            -- Find node before this node.
            local ptr = node.parentNode.childNode;

            while ptr do
                if ptr.nextChild == node then
                    -- removed!
                    ptr.nextChild = node.nextChild;
                    break;
                end
                ptr = ptr.nextChild;
            end
        end
    end

    if parentNode.childCount then
        parentNode.childCount = 0;
    end
end

-- Changes structure where this node is a child of the parent.
function ZR.SetMain(self, childIndex, parentIndex)
    local childNode = self.players[childIndex:sub(1, self.IndexMaxLen)];
    local parentNode = self.players[parentIndex:sub(1, self.IndexMaxLen)];

    if childNode and parentNode then
        self:InsertChildNode(childNode, parentNode);
        childNode.parentIndex = parentIndex:sub(1, self.IndexMaxLen);
    end

    if parentNode.childCount then
        parentNode.childCount = 0;
    end
end

function ZR.SetRank(self, index, rank)
    self.players[index].rank = rank;
end

-- Sorts the player index based on the selected sort choice.
function ZR.SortIndex(self)
    table.sort(self.playerIndex, self.sortByFunctions[self.sortIndexBy])
end

-- Alters structure to swap which character is considered the main.
function ZR.SwapMain(self, indexOldMain, indexNewMain)
    local oldMain = self.players[indexOldMain:sub(1,self.IndexMaxLen)];
    local newMain = self.players[indexNewMain:sub(1,self.IndexMaxLen)];

    if oldMain.childNode == nil then
        -- Not a main to swap.
        print ("ZbGm: Not a main to swap.");
        return;
    end

    -- Remove newMain from parent.
    self:RemoveChildNode(newMain);

    --print ("old after removed child");
    --self:DumpPlayer(oldMain.full);

    -- Swap header node.
    local joindate = oldMain.joindate;
    oldMain.joindate = 0;
    newMain.joindate = joindate;
    newMain.parentNode = nil;
    oldMain.childCount = nil;
    newMain.nextChild = nil;

    newMain.childNode = oldMain.childNode;
    self:InsertChildNode(oldMain, newMain);

    local ptr = newMain.childNode;
    local loopCheck = 0;

    -- Fix parent references.
    -- Loop check prevent infinite loop caused by externally caused broken structure.
    while ptr and loopCheck < 50 do
        --print ("    fix parent " .. ptr.full);
        ptr.parentNode = newMain;
        loopCheck = loopCheck + 1;
        ptr = ptr.nextChild;
    end

    --print ("New Main after child added.");
    --self:DumpPlayer(newMain.full);
end

-- Updates the provided lua variable containing the member database
-- to savedvariables.  It contains all mains / join dates.
function ZR.UpdateHistorySave(self, memberDB)
    if not memberDB then memberDB = {} end

    local now = time();
    for idx in pairs(self.players) do
        if self.players[idx].parentNode == nil then
            if memberDB[idx] then
                memberDB[idx].join=self.players[idx].joindate;
                memberDB[idx].update = now;
            else
                memberDB[idx] = {join=self.players[idx].joindate, update=now};
            end
        end
    end

    -- remove data over 60 days.
    for idx in pairs(memberDB) do
        if (now - memberDB[idx].update) > 86400*30*2 then
            memberDB[idx] = nil;
        end
    end
end

--[===[@debug@
ZRoster = ZbGm.ZRoster
--@end-debug@]===]
