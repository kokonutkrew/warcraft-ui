--------------------------------------------------------------------------------
-- Module Declaration
--

local mod, CL = BigWigs:NewBoss("Voidstone Monstrosity", 2648, 2568)
if not mod then return end
mod:RegisterEnableMob(207207) -- Voidstone Monstrosity
mod:SetEncounterID(2836)
mod:SetRespawnTime(30)

--------------------------------------------------------------------------------
-- Locals
--

local voidShellCount = 1
local nextNullUpheaval = 0
local nextUnleashCorruption = 0
local nextOblivionWave = 0

--------------------------------------------------------------------------------
-- Initialization
--

function mod:GetOptions()
	return {
		-- Voidstone Monstrosity
		423305, -- Null Upheaval
		445262, -- Void Shell
		{429493, "SAY"}, -- Unleash Corruption
		433067, -- Seeping Corruption (Mythic)
		445457, -- Oblivion Wave
		423393, -- Entropy
		-- Stormrider Vokmar
		{458082, "SAY", "SAY_COUNTDOWN"}, -- Stormrider's Charge
		424371, -- Storm's Vengeance
	}, {
		[458082] = -27791, -- Stormrider Vokmar
	}
end

function mod:OnBossEnable()
	self:Log("SPELL_CAST_START", "NullUpheaval", 423305)
	self:Log("SPELL_CAST_SUCCESS", "VoidShell", 445262)
	self:Log("SPELL_AURA_REMOVED", "VoidShellRemoved", 445262)
	self:Log("SPELL_CAST_SUCCESS", "UnleashCorruption", 429487)
	self:Log("SPELL_AURA_APPLIED", "UnleashCorruptionApplied", 429493)
	self:Log("SPELL_PERIODIC_DAMAGE", "SeepingCorruptionDamage", 433067)
	self:Log("SPELL_PERIODIC_MISSED", "SeepingCorruptionDamage", 433067)
	self:Log("SPELL_CAST_START", "OblivionWave", 445457)
	self:Log("SPELL_CAST_SUCCESS", "Entropy", 423393)

	-- Stormrider Vokmar
	self:Log("SPELL_CAST_SUCCESS", "StormridersCharge", 458082)
	self:Log("SPELL_AURA_APPLIED", "StormridersChargeApplied", 458082)
	self:Log("SPELL_CAST_SUCCESS", "StormsVengeance", 423839)
end

function mod:OnEngage()
	local t = GetTime()
	voidShellCount = 1
	-- Void Shell is cast immediately on pull
	nextOblivionWave = t + 5.8
	self:CDBar(445457, 5.8) -- Oblivion Wave
	nextUnleashCorruption = t + 12.7
	self:CDBar(429493, 12.7) -- Unleash Corruption
	nextNullUpheaval = t + 16.7
	self:CDBar(423305, 16.7) -- Null Upheaval
	self:CDBar(458082, 19.8) -- Stormrider's Charge
end

--------------------------------------------------------------------------------
-- Event Handlers
--

function mod:NullUpheaval(args)
	-- cast at 100 energy, 30s energy gain
	nextNullUpheaval = GetTime() + 32.8
	self:Message(args.spellId, "orange")
	self:CDBar(args.spellId, 32.8)
	self:PlaySound(args.spellId, "alarm")
end

function mod:VoidShell(args)
	self:Message(args.spellId, "cyan", CL.count:format(args.spellName, voidShellCount))
	voidShellCount = voidShellCount + 1
	self:PlaySound(args.spellId, "long")
end

function mod:VoidShellRemoved(args)
	self:Message(args.spellId, "green", CL.removed:format(args.spellName))
end

do
	local playerList = {}

	function mod:UnleashCorruption(args)
		nextUnleashCorruption = GetTime() + 17.0
		playerList = {}
		self:CDBar(429493, 17.0)
	end

	function mod:UnleashCorruptionApplied(args)
		playerList[#playerList + 1] = args.destName
		self:TargetsMessage(args.spellId, "red", playerList, 2)
		if self:Me(args.destGUID) then
			self:Say(args.spellId, nil, nil, "Unleash Corruption")
		end
		self:PlaySound(args.spellId, "alert", nil, playerList)
	end
end

do
	local prev = 0
	function mod:SeepingCorruptionDamage(args)
		if self:Me(args.destGUID) and args.time - prev > 1.5 then
			prev = args.time
			self:PersonalMessage(args.spellId, "underyou")
			self:PlaySound(args.spellId, "underyou")
		end
	end
end

function mod:OblivionWave(args)
	nextOblivionWave = GetTime() + 13.3
	self:Message(args.spellId, "purple")
	self:CDBar(args.spellId, 13.3)
	self:PlaySound(args.spellId, "alarm")
end

function mod:Entropy(args)
	-- only cast when no one is in melee range
	self:Message(args.spellId, "purple")
	if self:Tank() then
		self:PlaySound(args.spellId, "warning")
	end
end

-- Stormrider Vokmar

do
	local playerList = {}

	function mod:StormridersCharge(args)
		playerList = {}
		-- this happens 3s after Null Upheaval
		self:CDBar(args.spellId, 32.8)
	end

	function mod:StormridersChargeApplied(args)
		playerList[#playerList + 1] = args.destName
		self:TargetsMessage(args.spellId, "green", playerList, 4)
		if self:Me(args.destGUID) then
			self:Say(args.spellId, nil, nil, "Stormrider's Charge")
			self:SayCountdown(args.spellId, 12)
		end
		self:PlaySound(args.spellId, "info", nil, playerList)
	end
end

function mod:StormsVengeance(args)
	local t = GetTime()
	self:Message(424371, "green", CL.count:format(args.spellName, voidShellCount - 1))
	self:Bar(424371, 20, CL.onboss:format(args.spellName))
	-- Storm's Vengeance being applied to the boss adds 21.8s to Null Upheaval and Stormrider's Charge and
	-- 20s to all other timers, but there's a 0.3s minimum delay after Storm's Vengeance ends.
	local nullUpheavalTimeLeft = nextNullUpheaval - t
	if nullUpheavalTimeLeft > 0.3 then
		nextNullUpheaval = nextNullUpheaval + 21.8
		self:CDBar(423305, {nullUpheavalTimeLeft + 21.8, 58.3}) -- Null Upheaval
	else
		nextNullUpheaval = t + 21.8
		self:CDBar(423305, {21.8, 58.3}) -- Null Upheaval
	end
	local unleashCorruptionTimeLeft = nextUnleashCorruption - t
	if unleashCorruptionTimeLeft > 0.3 then
		nextUnleashCorruption = nextUnleashCorruption + 20
		self:CDBar(429493, {unleashCorruptionTimeLeft + 20, 37.0}) -- Unleash Corruption
	else
		nextUnleashCorruption = t + 20.3
		self:CDBar(429493, {20.3, 37.0}) -- Unleash Corruption
	end
	local oblivionWaveTimeLeft = nextOblivionWave - t
	if oblivionWaveTimeLeft > 0.3 then
		nextOblivionWave = nextOblivionWave + 20
		self:CDBar(445457, {oblivionWaveTimeLeft + 20, 33.3}) -- Oblivion Wave
	else
		nextOblivionWave = t + 20.3
		self:CDBar(445457, {20.3, 33.3}) -- Oblivion Wave
	end
	-- Stormrider's Charge is based on Null Upheaval's timer
	local stormridersChargeTimeLeft = nullUpheavalTimeLeft + 3
	if stormridersChargeTimeLeft > 0.3 then
		self:CDBar(458082, {stormridersChargeTimeLeft + 21.8, 61.3}) -- Stormrider's Charge
	else
		self:CDBar(458082, {21.8, 61.3}) -- Stormrider's Charge
	end
	self:PlaySound(424371, "info")
end
