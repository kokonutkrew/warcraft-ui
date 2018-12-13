var cSeparatorCharacter = '|'

// Used to figure out unit types and affiliations, e.g., friendly vs. hostile, player vs. pet, etc.
var COMBATLOG_OBJECT_AFFILIATION_MINE = 0x00000001;
var COMBATLOG_OBJECT_AFFILIATION_PARTY = 0x00000002;
var COMBATLOG_OBJECT_AFFILIATION_RAID = 0x00000004;
var COMBATLOG_OBJECT_AFFILIATION_OUTSIDER = 0x00000008;

var COMBATLOG_OBJECT_REACTION_FRIENDLY = 0x00000010;
var COMBATLOG_OBJECT_REACTION_NEUTRAL = 0x00000020;
var COMBATLOG_OBJECT_REACTION_HOSTILE = 0x00000040;
var COMBATLOG_OBJECT_REACTION_MASK = 0x000000F0;

var COMBATLOG_OBJECT_CONTROL_PLAYER = 0x00000100;
var COMBATLOG_OBJECT_CONTROL_NPC = 0x00000200;

var COMBATLOG_OBJECT_TYPE_PLAYER = 0x00000400;
var COMBATLOG_OBJECT_TYPE_NPC = 0x00000800;
var COMBATLOG_OBJECT_TYPE_PET = 0x00001000;
var COMBATLOG_OBJECT_TYPE_GUARDIAN = 0x00002000;
var COMBATLOG_OBJECT_TYPE_OBJECT = 0x00004000;
var COMBATLOG_OBJECT_TYPE_MASK = 0x0000FC00;

var COMBATLOG_OBJECT_RAIDTARGET_MASK = 0x000000FF;
var COMBATLOG_OBJECT_RAIDTARGET1 = 0x00000001;
var COMBATLOG_OBJECT_RAIDTARGET2 = 0x00000002;
var COMBATLOG_OBJECT_RAIDTARGET3 = 0x00000004;
var COMBATLOG_OBJECT_RAIDTARGET4 = 0x00000008;
var COMBATLOG_OBJECT_RAIDTARGET5 = 0x00000010;
var COMBATLOG_OBJECT_RAIDTARGET6 = 0x00000020;
var COMBATLOG_OBJECT_RAIDTARGET7 = 0x00000040;
var COMBATLOG_OBJECT_RAIDTARGET8 = 0x00000080;

var cStaggerAbilityID = 115069
var cGuardAbilityID = 115295

// We are recording the following CombatEvent types so far.
var cNoEventType = 0
var cDamageEventType = 1
var cDamageTickEventType = 2
var cHealingEventType = 3
var cHealingTickEventType = 4
var cApplyBuffEventType = 5
var cApplyBuffStackEventType = 6
var cRemoveBuffEventType = 7
var cRemoveBuffStackEventType = 8
var cRefreshBuffEventType = 9
var cApplyDebuffEventType = 10
var cApplyDebuffStackEventType = 11
var cRemoveDebuffEventType = 12
var cRemoveDebuffStackEventType = 13
var cRefreshDebuffEventType = 14
var cAbilityBeginUseEventType = 15
var cAbilityUseEventType = 16
var cAbilityFailedActivationEventType = 17
var cSummonEventType = 18
var cDeathEventType = 19
var cCreateEventType = 20
var cDestroyedEventType = 21
var cResurrectEventType = 22
var cInstakillEventType = 23
var cDrainEventType = 24
var cLeechEventType = 25
var cEnergizeEventType = 26
var cInterruptEventType = 27
var cDispelEventType = 28
var cStealEventType = 29
var cAuraBrokenEventType = 30
var cExtraAttacksEventType = 31
var cEncounterStartEventType = 32
var cEncounterEndEventType = 33
var cApplyAbsorbEventType = 34
var cRemoveAbsorbEventType = 35
var cApplyCCEventType = 36
var cRemoveCCEventType = 37
var cAbsorbedEventType = 38
var cChallengeModeStartEventType = 39
var cChallengeModeEndEventType = 40
var cZoneChangeEventType = 41
var cSimulatedDamageTickEventType = 42
var cSimulatedHealingTickEventType = 43
var cCombatantInfoEventType = 44
var cPhaseStartEventType = 45
var cPhaseEndEventType = 46
var cDamageSupportEventType = 47
var cHealAbsorbedEventType = 48
var cWorldMarkerPlacedEventType = 49
var cWorldMarkerRemovedEventType = 50

var cVersionEventType = 500

var cNoMobType = 0
var cPlayerMobType = 1
var cNPCMobType = 2
var cPetMobType = 3

var cNoAbilityType = 0
var cPhysicalAbilityType = 1
var cFireAbilityType = 4
var cNatureAbilityType = 8

var cMissDamageEventType = 0
var cHitDamageEventType = 1
var cCritDamageEventType = 2
var cAbsorbDamageEventType = 3
var cBlockDamageEventType = 4
var cBlockCritDamageEventType = 5
var cGlancingDamageEventType = 6
var cDodgeDamageEventType = 7
var cParryDamageEventType = 8
var cDeflectDamageEventType = 9
var cImmuneDamageEventType = 10
var cMisfireDamageEventType = 11
var cReflectDamageEventType = 12
var cEvadeDamageEventType = 13
var cResistDamageEventType = 14

var cDrowningDamageEventType = 2
var cFallingDamageEventType = 3
var cFatigueDamageEventType = 4
var cFireDamageEventType = 5
var cLavaDamageEventType = 6
var cSlimeDamageEventType = 7

var cNoHealingEventType = 0
var cNormalHealingEventType = 1
var cCritHealingEventType = 2

var year = 0
var yearSet = false
var startTimeSet = false
var startTime
var endTime

var actorsGUIDMap = new Array()
var actorsIDMap = new Array()

var lastAssignedActorID = 0

var temporaryPetToActorMap = new Array() // Map of complete NPC GUID -> player ID. Lets us determine the guid to use for the npcGuidMap.
var petsTable = new Array() // Map of pet ID -> player ID
var petsIDMap = new Array()

var tupleIDMap = new Array()
var lastAssignedTupleID = 0

var abilityIDMap = new Array()
var lastAssignedAbilityID = 0

var lastAssignedPetID = 0

var lastAssignedEventID = 0

var currentEventAbilityID = 0
var currentEventAbilityName = ''
var currentEventAbilityType = cNoAbilityType
var currentEventIsMiss = false
var currentEventIsTick = false
var currentEventHasAbility = false
var currentEventIsMelee = false
var currentEventIsEnvironmental = false
var currentEventAuraStack = 1

var currentResourceActor
var currentPetOwner
var currentHitPoints = 0
var currentMaxHitPoints = 0
var currentAttackPower = 0
var currentSpellPower = 0
var currentResolve = 0
var currentArmor = 0
var currentResourceType = ''
var currentResourceAmount = ''
var currentMaxResourceAmount = ''
var currentResourceCost = ''
var currentXPosition = 0
var currentYPosition = 0
var currentMapID = 0
var currentFacing = 0
var currentItemLevel = 0

var damageOrHealingEvents = 0

var indexWithinLine = 0

var npcHitPointTable = new Array()

var absorbsTracking = new Array()

var overkillTable = new Array()

var currentEventIndex = 0

var inCombat = false
var advancedCombatLogging = false
var badEventCount = 0
var advancedCombatLogWarningShowing = false
var startCombatEventTime = 0
var endCombatEventTime = 0
var previousTime = 0
var daylightSavingsShift = 0

var inChallengeMode = false
var inSynthesizedEncounter = false
var inactivityThreshold = 10000

var instanceIDTable = new Array()
var instanceGUIDTable = new Array()

var encounterStack = 0
var lastEncounterEndTime = 0

var numResourceArgs = 6

var meleeSchoolTable = new Array()

var supportAbilityTable = new Array()

var unmitigatedDamageMultipliers = new Array()
var guardTracking = new Array()
var rendAndTearTracking = new Array()

function clearParserState()
{
	// Reset our log version.
	logVersion = 1
	
	// Reset our knowledge of mythic.
	mythic = 0

	// Clear all of our arrays
	actorsGUIDMap = new Array()
	actorsIDMap = new Array()
	npcHitPointTable = new Array()
	temporaryPetToActorMap = new Array()
	petsTable = new Array()
	petsIDMap = new Array()
	tupleIDMap = new Array()
	abilityIDMap = new Array()
	
	lastAssignedActorID = 0
	lastAssignedAbilityID = 0
	lastAssignedTupleID = 0
	lastAssignedPetID = 0
	lastAssignedEventID = 0
	
	actorsString = ''
    abilitiesString = ''
    tuplesString = ''
    petsString = ''
    eventsString = ''

	instanceIDTable = new Array()
	instanceGUIDTable = new Array()
	
	absorbsTracking = new Array()

	overkillTable = new Array()

	supportAbilityTable = new Array()
	
	// Clear out our notion of what times are set
	yearSet = false
	year = 0
	startTimeSet = false
	startTime = 0
	endTime = 0

	currentEventIndex = 0
	
	inCombat = false
	advancedCombatLogging = false
	advancedCombatLogWarningShowing = false
	badEventCount = 0
	
	inChallengeMode = false
	inSynthesizedEncounter = false
	inactivityThreshold = 10000

	startCombatEventTime = 0
	endCombatEventTime = 0
	previousTime = 0
	daylightSavingsShift = 0
	
	encounterStack = 0
	lastEncounterEndTime = 0
	
	numResourceArgs = 6
	
	meleeSchoolTable = new Array()
	
	guardTracking = new Array()
}

function buildActorsString()
{
	actorsString = ''
	for (var i = 0; i < lastAssignedActorID; ++i) {
		var actorName = actorsIDMap[i]['name']
		if (actorName.indexOf(cSeparatorCharacter) != -1) {
			actorName = actorName.substring(0, actorName.indexOf(cSeparatorCharacter))
		}
		actorsString += actorName + cSeparatorCharacter + actorsIDMap[i]['type'] + cSeparatorCharacter + actorsIDMap[i]['guid'] + "\n"
	}
	return actorsString
}

function buildPetsString()
{
	petsString = ''
	for (var i = 0; i < lastAssignedPetID; ++i) {
		var petEntry = petsIDMap[i]
		petsString += petEntry['pet'] + cSeparatorCharacter + petEntry['owner']
		if (petEntry['summon'])
			petsString += cSeparatorCharacter + petEntry['summon']
		petsString += "\n"
	}
	return petsString
}

function clone(str)
{
	// Substrings and splits of ActionScript strings are entraining the original string, causing massive memory leaks.
	// Copy the localized name when we finally decide to store it.
	document.getElementById('scratchspace').innerText = str
	return document.getElementById('scratchspace').innerText
}

function parseLocalizedNames(eventLine)
{
	for (var i = 0; i < eventLine.length; ++i) {
		var currentSegment = eventLine[i]
		if (currentSegment.length == 0 || currentSegment[0] != '"')
			continue
			
		if (currentSegment.length >= 2 && currentSegment[currentSegment.length - 1] == '"') {
			eventLine[i] = currentSegment.substring(1, currentSegment.length - 1)
			continue
		}
		
		// Ok we got incorrectly split across multiple strings. Stitch the name back together.
		var result = currentSegment.substring(1)
	
		// Find the trailing quote.
		var index = i
		while (true) {
			index++
			currentSegment = eventLine[index]
			if (!currentSegment)
				return false
			if (currentSegment.length > 0 && currentSegment[currentSegment.length - 1] == '"') {
				result += "," + currentSegment.substring(0, currentSegment.length - 1)
				break
			}
			result += "," + currentSegment			
		}
		
		eventLine[i] = result
		if (index - i)
			eventLine.splice(i+1, index - i)
	}
	
	return true
}

function isBuffDebuffEventType(eventType)
{
	return eventType >= cApplyBuffEventType && eventType <= cRefreshDebuffEventType
}

function collectEventTypeInformation(eventTypeString, restOfEventLine)
{
	currentResourceActor = undefined
	currentPetOwner = undefined
	
	if (eventTypeString == "SPELL_DURABILITY_DAMAGE_ALL")
		return cNoEventType // Have to do this up front to avoid thinking this is a damage event.
	
	if (eventTypeString == "COMBATANT_INFO")
		return cCombatantInfoEventType

	currentEventIsMiss = eventTypeString.indexOf("_MISSED") != -1
	currentEventIsTick = eventTypeString.indexOf("_PERIODIC") != -1
	currentEventIsMelee = eventTypeString.indexOf("SWING_") != -1
	currentEventIsEnvironmental = eventTypeString.indexOf("ENVIRONMENTAL_") != -1
	
	currentEventAbilityID = 0
	currentEventAbilityName = ''
	currentEventAbilityType = cNoAbilityType
	currentEventHasAbility = (eventTypeString.indexOf("RANGE_") != -1 || eventTypeString.indexOf("SPELL_") != -1 || currentEventIsMelee || currentEventIsEnvironmental || eventTypeString.indexOf("DAMAGE_SPLIT") != -1 || eventTypeString.indexOf("DAMAGE_SHIELD") != -1)
	currentEventBuffGainLossRefresh = 0
	currentEventIsStackingBuff = false

	if (eventTypeString == "ENCOUNTER_START") {
		rendAndTearTracking = new Array()
		return restOfEventLine.length >= 4 && restOfEventLine[3] == 8 ? cPhaseStartEventType : cEncounterStartEventType // Make challenge mode ENCOUNTER_START events turn into phase start
	}
	
	if (eventTypeString == "ENCOUNTER_END")
		return restOfEventLine.length >= 4 && restOfEventLine[3] == 8 ? cPhaseEndEventType : cEncounterEndEventType // Make challenge mode ENCOUNTER_END events turn into phase end
	
	if (eventTypeString == "SPELL_SUMMON")
		return cSummonEventType

	if (eventTypeString == "SPELL_CREATE")
		return cCreateEventType
		
	if (eventTypeString == "UNIT_DIED")
		return cDeathEventType
		
	if (eventTypeString == "UNIT_DESTROYED")
		return cDestroyedEventType

	if (eventTypeString == "SPELL_RESURRECT")
		return cResurrectEventType

	if (eventTypeString == "SPELL_INSTAKILL")
		return cInstakillEventType

	if (eventTypeString.indexOf("_ENERGIZE") != -1)
		return cEnergizeEventType
	
	if (eventTypeString.indexOf("_DRAIN") != -1)
		return cDrainEventType
	
	if (eventTypeString.indexOf("_LEECH") != -1)
		return cLeechEventType
	
	if (eventTypeString == "SPELL_INTERRUPT")
		return cInterruptEventType
		
	if (eventTypeString == "SPELL_DISPEL")
		return cDispelEventType
	
	if (eventTypeString == "SPELL_STOLEN")
		return cStealEventType
		
	if (eventTypeString == "SPELL_AURA_BROKEN" || eventTypeString == "SPELL_AURA_BROKEN_SPELL")
		return cAuraBrokenEventType
		
	if (eventTypeString == "SPELL_EXTRA_ATTACKS")
		return cExtraAttacksEventType
	
	if (eventTypeString == "SPELL_ABSORBED")
		return cAbsorbedEventType
	
	if (eventTypeString == "SPELL_HEAL_ABSORBED")
		return cHealAbsorbedEventType
		
	if (eventTypeString == "CHALLENGE_MODE_START") {
		rendAndTearTracking = new Array()
		return cChallengeModeStartEventType
	}

	if (eventTypeString == "CHALLENGE_MODE_END")
		return cChallengeModeEndEventType
	
	if (eventTypeString == "WORLD_MARKER_PLACED")
		return cWorldMarkerPlacedEventType
	
	if (eventTypeString == "WORLD_MARKER_REMOVED")
		return cWorldMarkerRemovedEventType

	if (currentEventIsMelee) {
		currentEventAbilityID = 1
		currentEventAbilityName = "Melee"
		currentEventAbilityType = cPhysicalAbilityType
	}
	
	if (currentEventIsEnvironmental) {
		// The type of environmental damage is in the next field.
		var currentIndex = 9
		if (currentIndex >= restOfEventLine.length)
			return cNoEventType
		if (isGUID(restOfEventLine[currentIndex]))
			currentIndex += collectResourceInformation(currentIndex, restOfEventLine)
		var environmentString = restOfEventLine[currentIndex]
		currentEventAbilityName = environmentString
		var uppercaseEnvironmentString = environmentString.toUpperCase() // For ancient raids like Bastion of Twilight that still produce FALLING instead of Falling
		if (uppercaseEnvironmentString == "DROWNING") {
			currentEventAbilityID = cDrowningDamageEventType
			currentEventAbilityType = cPhysicalAbilityType
		} else if (uppercaseEnvironmentString == "FALLING") {
			currentEventAbilityID = cFallingDamageEventType
			currentEventAbilityType = cPhysicalAbilityType
		} else if (uppercaseEnvironmentString == "FATIGUE") {
			currentEventAbilityID = cFatigueDamageEventType
			currentEventAbilityType = cPhysicalAbilityType
		} else if (uppercaseEnvironmentString == "FIRE") {
			currentEventAbilityID = cFireDamageEventType
			currentEventAbilityType = cFireAbilityType
		} else if (uppercaseEnvironmentString == "LAVA") {
			currentEventAbilityID = cLavaDamageEventType
			currentEventAbilityType = cFireAbilityType
		} else if (uppercaseEnvironmentString == "SLIME") {
			currentEventAbilityID = cSlimeDamageEventType
			currentEventAbilityType = cNatureAbilityType
		} else
			throw "Unknown environmental damage type encountered: " + environmentString
	}

	// Note the subtlety of leaving the "_" off "DAMAGE". This is so we also pick up
	// the DAMAGE_SHIELD and DAMAGE_SPLIT events, which basically behave the same way.
	if (eventTypeString.indexOf("DAMAGE") != -1 || eventTypeString.indexOf("_MISSED") != -1)
		return currentEventIsTick ? cDamageTickEventType : cDamageEventType
	if (eventTypeString.indexOf("_HEAL") != -1)
		return currentEventIsTick ? cHealingTickEventType : cHealingEventType
	
	if (eventTypeString.indexOf("_AURA_") != -1) {
		var currentIndex = 12
		if (currentIndex >= restOfEventLine.length)
			return cNoEventType
		if (isGUID(restOfEventLine[currentIndex]))
			currentIndex += collectResourceInformation(currentIndex, restOfEventLine)
		var isBuff = restOfEventLine[currentIndex] == "BUFF"
		currentEventAuraStack = 1
		if (eventTypeString == "SPELL_AURA_APPLIED")
			return isBuff ? cApplyBuffEventType : cApplyDebuffEventType
		if (eventTypeString == "SPELL_AURA_APPLIED_DOSE") {
			currentEventAuraStack = parseInt(restOfEventLine[currentIndex + 1])
			return isBuff ? cApplyBuffStackEventType : cApplyDebuffStackEventType
		}
		if (eventTypeString == "SPELL_AURA_REMOVED")
			return isBuff ? cRemoveBuffEventType : cRemoveDebuffEventType
		if (eventTypeString == "SPELL_AURA_REMOVED_DOSE") {
			currentEventAuraStack = parseInt(restOfEventLine[currentIndex + 1])
			return isBuff ? cRemoveBuffStackEventType : cRemoveDebuffStackEventType
		}
		if (eventTypeString == "SPELL_AURA_REFRESH")
			return isBuff ? cRefreshBuffEventType : cRefreshDebuffEventType
	}

	if (eventTypeString == "SPELL_CAST_START")
		return cAbilityBeginUseEventType
	
	if (eventTypeString == "SPELL_CAST_SUCCESS")
		return cAbilityUseEventType

	if (eventTypeString == "SPELL_CAST_FAILED")
		return cAbilityFailedActivationEventType

	if (eventTypeString == "PARTY_KILL") // Ignore PARTY_KILL as it isn't meaningful.
		return cNoEventType
	
	if (eventTypeString == "COMBAT_LOG_VERSION")
		return cVersionEventType
		
	return cNoEventType
}

function convertToMobType(type)
{
	if (type == "Player" || type == "0000000000000000") // MoP treated the empty GUID as a player, so for now just keep that behavior.
		return cPlayerMobType
	if (type == "Pet")
		return cPetMobType
	return cNPCMobType // Just assume NPC for every other thing that we could possibly see.
}

function convertToMobTypeLegacy(guid)
{		
	var guidType = parseInt(guid.substr(4, 1), 16)
	if (guidType == 0 || guidType == 8)
		return cPlayerMobType
	if (guidType == 3 || guidType == 5 || guidType == 1) // 1 is like an Explosive Trap
		return cNPCMobType
	if (guidType == 4)
		return cPetMobType
	if (guidType == 12)
		return cNoMobType // Weird bug that happens during battle rezzes with the target being funky.
	return cNoMobType
	// throw "Unknown unit type encountered: " + guidType + " with original GUID: " + guid
}

function extractIDForType(guidSplit, type)
{
	if (type == cPlayerMobType) {
		if (guidSplit.length < 3)
			return 0
		return parseInt(guidSplit[2], 16)
	}
	
	if (guidSplit.length < 7)
		return 0

	if (type == cPetMobType)
		return parseInt(guidSplit[6].substr(3, 7), 16)

	return parseInt(guidSplit[5])
}

function extractIDForTypeLegacy(guid, type)
{
	if (type == cNoMobType)
		return 0
	if (type == cPlayerMobType)
		return parseInt(guid.substr(11, 7), 16)
	if (type == cPetMobType)
		return parseInt(guid.substr(5, 7), 16)
	return parseInt(guid.substr(5, 5), 16)
}

function buildGUID(line, type, id, splitStr)
{
	if (type == cPlayerMobType || type == cPetMobType)
		return id // 8 digits for player. 10 digits for pet.
	
	if (splitStr.length < 7)
		return 0
	
	// Assume we have both an ID and an instance portion for a total of 12 bits. The 5 bits for ID are already numeric.
	var shiftedNPCBits = id * Math.pow(16, 7)
	return shiftedNPCBits + parseInt(splitStr[6].substr(3, 7), 16) // Putting the NPC ID and the unique instance bits (7 of them) back together again. Leading 3 for creatures dropped for now (seem to always be 0).
}

function hasPetFlagsSet(id, flags)
{
	// Soulbound Construct should not be considered a pet (90296). Treat it as a boss. The 3 hands on Kormrok also. Elementals on Elisande, Fragment on Chronomatic Anomaly.
	return (flags & (COMBATLOG_OBJECT_TYPE_GUARDIAN | COMBATLOG_OBJECT_TYPE_PET)) && !isBogusPet(id)
}

function convertToID(id, guid, name, type, flags)
{
	if (!id)
		return 0

	var lookupStr = type + cSeparatorCharacter + id
	if (type == cNPCMobType) {
		var owner = temporaryPetToActorMap[guid]
		if (owner)
			lookupStr += cSeparatorCharacter + owner
	}
	
	var identifier = actorsGUIDMap[lookupStr]
	if (identifier) {
		var changed = false
		if (name != "nil" && actorsIDMap[identifier-1]['name'] != name) {
			changed = true
			actorsIDMap[identifier-1]['name'] = clone(name) // Always have the last name we see that isn't "nil" win.
		}
		if (type == cNPCMobType && hasPetFlagsSet(id, flags)) {
			changed = true
			actorsIDMap[identifier-1]['type'] = cPetMobType // If we ever see an NPC as a guardian or pet, convert it to the pet mob type.
		}
		return identifier
	}
	
	actorsIDMap[lastAssignedActorID] = { "name": clone(name), "type": type, "guid": id }
	if (type == cNPCMobType && hasPetFlagsSet(id, flags))
		actorsIDMap[lastAssignedActorID]['type'] = cPetMobType // If we ever see an NPC as a guardian or pet, convert it to the pet mob type.
			
	actorsGUIDMap[lookupStr] = ++lastAssignedActorID
	
	return lastAssignedActorID
}

function abilityIDForCurrentEvent()
{
	if (!currentEventAbilityID)
		return 0
	var identifier = abilityIDMap[currentEventAbilityID]
	if (identifier)
		return identifier
	abilityIDMap[currentEventAbilityID] = ++lastAssignedAbilityID
	var abilityName = clone(currentEventAbilityName)
	if (abilityName.indexOf(cSeparatorCharacter) != -1) {
		abilityName = abilityName.substring(0, abilityName.indexOf(cSeparatorCharacter))
	}
	abilitiesString += abilityName + cSeparatorCharacter + currentEventAbilityType + cSeparatorCharacter + currentEventAbilityID + "\n"
	return lastAssignedAbilityID
}

function tupleIDForSourceTargetAndAbility(sourceID, targetID, abilityID)
{
	var lookupStr = sourceID + cSeparatorCharacter + targetID + cSeparatorCharacter + abilityID
	var identifier = tupleIDMap[lookupStr]
	if (identifier)
		return identifier
	tupleIDMap[lookupStr] = ++lastAssignedTupleID
	tuplesString += lookupStr + "\n"
	return lastAssignedTupleID
}

function addPetOwner(petID, ownerID, summonID)
{
	if (petsTable[petID]) {
		if (summonID > 0)
			petsIDMap[petsTable[petID] - 1]['summon'] = summonID
		return
	}
	petsIDMap[lastAssignedPetID] = { "owner": ownerID, "pet": petID, "summon": summonID }
	petsTable[petID] = ++lastAssignedPetID
}

function determineDamageEventType(restOfEventLine, startingIndex)
{
	if (currentEventIsMiss) {
		// Determine the kind of miss.
		var missString = restOfEventLine[startingIndex]
		if (missString == "MISS")
			return cMissDamageEventType
		if (missString == "DODGE")
			return cDodgeDamageEventType
		if (missString == "PARRY")
			return cParryDamageEventType
		if (missString == "DEFLECT")
			return cDeflectDamageEventType
		if (missString == "IMMUNE")
			return cImmuneDamageEventType
		if (missString == "ABSORB")
			return cAbsorbDamageEventType
		if (missString == "BLOCK")
			return cBlockDamageEventType
		if (missString == "MISFIRE")
			return cMisfireDamageEventType
		if (missString == "REFLECT")
			return cReflectDamageEventType
		if (missString == "EVADE")
			return cEvadeDamageEventType
		if (missString == "RESIST")
			return cResistDamageEventType
		throw "Unknown miss type encountered: " + missString + "."
	} else if (currentEventIsEnvironmental) {
		return cHitDamageEventType
	}
	
	var baseOffset = logVersion >= 11 ? 1 : 0
	
	var crit = restOfEventLine[startingIndex + baseOffset + 6]
	if (crit == "1")
		return cCritDamageEventType
	var glancing = restOfEventLine[startingIndex + baseOffset + 7]
	if (glancing == "1")
		return cGlancingDamageEventType
	return cHitDamageEventType // Assume a normal tick/hit
}

function determineHealingEventType(restOfEventLine, startingIndex)
{
	// NORMAL = 1, CRIT = 2
	var baseOffset = logVersion >= 11 ? 1 : 0
	var crit = restOfEventLine[startingIndex + baseOffset + 3]
	if (crit == "1")
		return cCritHealingEventType
	return cNormalHealingEventType // Assume a normal tick/hit
}

function isBuggyAbsorbAbilityID()
{
	// Bestial Wrath, Dampen Harm, Ardent Defender, Hand of Purity, Guardian Spirit, Soul Link, Soul Link, Demoralizing Shout
	return currentEventAbilityID == 19574 || currentEventAbilityID == 122278 || currentEventAbilityID == 31850 || currentEventAbilityID == 114039 
			|| currentEventAbilityID == 47788 || currentEventAbilityID == 108415 || currentEventAbilityID == 108446 || currentEventAbilityID == 125565
}

function isBuggyAbilityID()
{
	// Jade Spirit enchant, Tempus Repit proc from caster legendary metagem, Colossus
	return currentEventAbilityID == 104993 || currentEventAbilityID == 137590 || currentEventAbilityID == 116631
}

function isBogusPet(guid)
{
	// Lesser Diffused Lightning (Lei Shen), Blood Globule (Kilrogg), Fel Blood Globule (Kilrogg), Doom Lords (Mannoroth), Hellfire Deathcallers (Archimonde)
	// Soulbound Construct (Socrethar), the three hands on Kormrok, the two elementals on Elisande, the fragment on Chronomatic Anomaly, Parasitic Lashers on High Botanist
	// Tainted Blood on Tichondrius, Dread Horror on Dragons of Nightmare, Nightmare Ichor on Ilgynoth, Spirit Shades on Dragons of Nightmare, Venomous Spiderling on Elerethe
	// Volatile Shard on Skorpyron, Soul Fragment of Azzinoth on Mythic Gul'dan, Ice Shards on Spellblade, Parasitic Shadow Demons on Mythic Gul'dan
	// Explosive Orbs on Mythic+
	// Razorjaw Waverunners on Mistress Sass'zine, Moontalon on Sisters of the Moon
	// The Kiljaeden reflections (4 of them on their own line)
	// Tormenting Eyes on Kruul, Nether Horrors on Kruul
	// Blight Orbs on Argus
	// The three command pods on Antoran High Command, Entropic Mines on Antoran High Command
	// The three types of summoned enemies on Portal Keeper Hasabel.
	// The adds on Aggramar
	// Apocalypsis Module on Argus
	return guid == 69012 || guid == 90477 || guid == 90513 || guid == 91241 || guid == 92740 || guid == 90296 || guid == 93839 || guid == 91368 
		|| guid == 93838 || guid == 105299 || guid == 105301 || guid == 104676 || guid == 109075 || guid == 108934 || guid == 103044 || guid == 105721 || guid == 103100
		|| guid == 106311 || guid == 116335 || guid == 108132 || guid == 111070 || guid == 107592 || guid == 111047 || guid == 120651 || guid == 115902 || guid == 119205
		|| guid == 119107 || guid == 119206 || guid == 119663 || guid == 119124
		|| guid == 118032 || guid == 118044 || guid == 125008 
		|| guid == 122554 || guid == 123020 || guid == 123013 || guid == 122922
		|| guid == 122783 || guid == 123702 || guid == 123223
		|| guid == 122532 || guid == 121985
		|| guid == 130179
		|| guid == 137578 || guid == 136949 || guid == 139487 || guid == 136461 // Uldir Stuff: Taloc Blood Storm, Mother Corrupted Blood Clone, Mythrax Vision of Madness, Spwan of Ghuun
		|| guid == 143067 || guid == 143065 || guid == 143532 || guid == 143538 // Mother: Resistant Bacterium, Viral Contagion, Corrupted Blood Clone
		|| guid == 142219 || guid == 135016 // Malformed Creation on Fetid, Plague Amalgam on Vectis
		|| guid == 139051 || guid == 139057 || guid == 139059 || guid == 139381 // Zul adds? Mythrax big adds?
		|| guid == 147098 || guid == 148254 // Spirit of Xuen and Frost Shard on Jadefire Masters
		|| guid == 148351 // Death Rifts on King Rastakhan fight
		|| guid == 144942 // Spark Bots on Mekkatorque fight
}

function isPrismaticCrystalOrSoulEffigy(guid)
{
	return guid == 76933 || guid == 103679;
}

function pushLogFight(scanningOnly)
{
	if (scanningOnly) {
		// See if the last fight in the scanned raids matches our potential fight. If it does, then we glom on to it and increment the
		// pull count.
		if (!potentialFight)
			return
		potentialFight.pulls = 1
		potentialFight.end = startTime + endCombatEventTime
		var lastRaid = scannedRaids.length > 0 ? scannedRaids[scannedRaids.length - 1] : null
		if (lastRaid && lastRaid.boss == potentialFight.boss && lastRaid.name == potentialFight.name && lastRaid.difficulty == potentialFight.difficulty && lastRaid.success == potentialFight.success) {
			lastRaid.pulls++
			lastRaid.end = potentialFight.end
			for (var k in potentialFight.friendlies) {
		        if (potentialFight.friendlies.hasOwnProperty(k))
		        	lastRaid.friendlies[k] = 1
			}
			for (var k in potentialFight.enemies) {
		        if (potentialFight.enemies.hasOwnProperty(k))
		        	lastRaid.enemies[k] = 1
			}
		} else
			scannedRaids.push(potentialFight)
	} else {
		if (currentEventIndex == lastAssignedEventID)
			return
		logFights.push({ eventCount: lastAssignedEventID - currentEventIndex, eventsString: eventsString })
		eventsString = ''
		currentEventIndex = lastAssignedEventID
	}
}

function computeInstanceID(id, guid, type)
{
	if (!id || !guid || type != cNPCMobType)
		return 0

	if (!instanceGUIDTable[guid]) {
		// Increment our instance count for this ID.
		if (!instanceIDTable[id])
			instanceIDTable[id] = 1
		else
			instanceIDTable[id]++
		
		// Now assign the new ID to this GUID so it can be retrieved later.
		instanceGUIDTable[guid] = instanceIDTable[id]
	}
	
	// Return the instance ID for this GUID (minus one so that we can just return 0 when you don't have multiple instances).
	return instanceGUIDTable[guid] - 1
}

function raidMarkerForFlags(raidFlags)
{
	if (!(raidFlags & COMBATLOG_OBJECT_RAIDTARGET_MASK))
		return 0

	if (raidFlags & COMBATLOG_OBJECT_RAIDTARGET1)
		return 1
	if (raidFlags & COMBATLOG_OBJECT_RAIDTARGET2)
		return 2
	if (raidFlags & COMBATLOG_OBJECT_RAIDTARGET3)
		return 3
	if (raidFlags & COMBATLOG_OBJECT_RAIDTARGET4)
		return 4
	if (raidFlags & COMBATLOG_OBJECT_RAIDTARGET5)
		return 5
	if (raidFlags & COMBATLOG_OBJECT_RAIDTARGET6)
		return 6
	if (raidFlags & COMBATLOG_OBJECT_RAIDTARGET7)
		return 7
	if (raidFlags & COMBATLOG_OBJECT_RAIDTARGET8)
		return 8
}

function isGUID(guid)
{
	if (guid.indexOf('-') > 0 || guid == "0000000000000000") {
		if (logVersion < 5)
			logVersion = 5
		return true
	}
	return logVersion == 1 && guid.indexOf("0x") != -1
}

function parseResource(field)
{
	if (!field.length)
		return 0

	var splitField = field.split("|")
	var result = ''
	if (logVersion < 8 && splitField.length > 1)
		logVersion = 8
	for (var i = 0; i < splitField.length; ++i) {
		if (i > 0)
			result += ","
		result += parseInt(splitField[i])	
	}
	
	return result
}

function collectResourceInformation(index, restOfEventLine)
{
	numResourceArgs = 0
	
	// The x/y position are how we anchor a resource line. They ensure that even Blizzard spits out garbage for the resources,
	// we will advance to the right place at the end of the line.
	var positionalIndex = 0
	for (var j = index; j < restOfEventLine.length; ++j) {
		numResourceArgs++
		if (restOfEventLine[j].indexOf(".") != -1) {
			positionalIndex = j
			break
		}
	}
	if (positionalIndex == 0)
		throw "A corrupted line was found that we cannot recover from."

	if (positionalIndex + 3 < restOfEventLine.length && restOfEventLine[positionalIndex + 3].indexOf(".") != -1) {
		if (logVersion < 13)
			logVersion = 13 // 8.0 final logs!
		numResourceArgs += 2 // Facing and Map ID
	} else if (positionalIndex + 2 < restOfEventLine.length && restOfEventLine[positionalIndex + 2].indexOf(".") != -1) {
		if (logVersion < 12)
			logVersion = 12 // 8.0 beta logs!
		numResourceArgs++ // Facing
	}

	numResourceArgs++ // For the y position.
	
	currentResourceActor = restOfEventLine[index++]
	var checkCost = false
	if (isGUID(restOfEventLine[index])) {
		currentPetOwner = restOfEventLine[index++]
		if (logVersion < 6)
			logVersion = 6
		
		// Legion gets rid of Resolve. Look for the positional argument and see if it's there.
		// Newer Legion has an extra field for the max resource amount.
		var hasEarlyPositional = index + 7 < restOfEventLine.length && restOfEventLine[index + 7].indexOf(".") != -1
		if (hasEarlyPositional) {
			if (logVersion < 7)
				logVersion = 7
		} else if (logVersion >= 7) {
			if (logVersion < 8)
				logVersion = 8
			checkCost = true
		}
	}
	
	currentHitPoints = parseInt(restOfEventLine[index++])
	currentMaxHitPoints = logVersion >= 5 ? parseInt(restOfEventLine[index++]) : 0
	currentAttackPower = parseInt(restOfEventLine[index++])
	currentSpellPower = parseInt(restOfEventLine[index++])
	currentResolve = logVersion >= 5 && logVersion <= 6 ? parseInt(restOfEventLine[index++]) : 0
	currentArmor = logVersion >= 11 ? parseInt(restOfEventLine[index++]) : 0
	currentResourceType = parseResource(restOfEventLine[index++])
	currentResourceAmount = parseResource(restOfEventLine[index++])
	currentMaxResourceAmount = logVersion >= 5 ? parseResource(restOfEventLine[index++]) : '0'
	currentResourceCost = checkCost ? parseResource(restOfEventLine[index++]) : ''

	// See if we have positions arguments with a "." in it.
	
	currentXPosition = parseInt(parseFloat(restOfEventLine[positionalIndex++]) * 100)
	currentYPosition = parseInt(parseFloat(restOfEventLine[positionalIndex++]) * 100)
	currentMapID = logVersion >= 13 ? parseInt(restOfEventLine[positionalIndex++]) : 0
	currentFacing = logVersion >= 11 ? Math.floor(parseFloat(restOfEventLine[positionalIndex++]) * 100) : 0

	if (logVersion >= 5) {
		numResourceArgs++
		currentItemLevel = parseInt(restOfEventLine[positionalIndex++])
	}
	
	return numResourceArgs
}

function adjustTimeForYearCrossingAndDaylightSavings(line, dateString, timeSplit)
{
	if (!yearSet)
		year = new Date().getFullYear()

	var date = new Date(dateString + "/" + year + " " + timeSplit[0])
	date.setMilliseconds(timeSplit[1])

	if (!yearSet) {
		while ((date.getTime() - new Date().getTime()) > 0) {
			// We're in the future. This is no good. Rewind to the previous year.
			year--;
			date = new Date(dateString + "/" + year + " " + timeSplit[0])
			date.setMilliseconds(timeSplit[1])
		}
		yearSet = true
	}

	var currTime = date.getTime()
	if (currTime >= previousTime)
		return currTime

	date = new Date(dateString + "/" + (year + 1) + " " + timeSplit[0])
	date.setMilliseconds(timeSplit[1])
	if (date.getTime()  - new Date().getTime() <= 0) {
		// Not in the future, so it's ok to go forward now.
		year++
		currTime = date.getTime()
		daylightSavingsShift = 0
	} else {
		// We went backwards in time. Biggest reason for this is daylight savings.
		while (currTime + daylightSavingsShift < previousTime)
			daylightSavingsShift += 3600000 // 1 hour in milliseconds
	}

	return currTime
}

function scanLogLine(line)
{
	// Get the timestamp, which includes the date in milliseconds.
	var dateEnd = line.indexOf(" ")
	if (dateEnd == -1)
		return -1
	
	var dateString = line.substr(0, dateEnd)
	if (!dateString.length)
		return -1

	var timeEnd = line.indexOf("  ", dateEnd)
	if (timeEnd == -1 || timeEnd < dateEnd + 1)
		return -1

	var timeStringWithMilliseconds = line.substr(dateEnd + 1, timeEnd - dateEnd - 1)
	
	// Split the time string into the time without milliseconds and the milliseconds.
	var timeSplit = timeStringWithMilliseconds.split('.')
	if (timeSplit.length != 2)
		return -1
	
	var currTime = adjustTimeForYearCrossingAndDaylightSavings(line, dateString, timeSplit)
	previousTime = currTime
	return currTime + daylightSavingsShift
}

/*function zoneNameForEncounterID(encounterID)
{	
	if (encounterID >= 1559 && encounterID <= 1580)
		return "Throne of Thunder"
	if (encounterID <= 1623)
		return "Siege of Orgrimmar"
	if (encounterID <= 1700 || encounterID == 1704 || encounterID == 1713)
		return "Blackrock Foundry"
	if (encounterID <= 1723)
		return "Highmaul"
	return "Unknown Raid Zone"
}*/

function nameForChallengeMode(mapID)
{
	// Legion
	if (mapID == 1456)
		return "Eye of Azshara"
	if (mapID == 1466)
		return "Darkheart Thicket"
	if (mapID == 1477)
		return "Halls of Valor"
	if (mapID == 1458)
		return "Neltharion's Lair"
	if (mapID == 1492)
		return "Maw of Souls"
	if (mapID == 1493)
		return "Vault of the Wardens"
	if (mapID == 1501)
		return "Black Rook Hold"
	if (mapID == 1516)
		return "The Arcway"
	if (mapID == 1544)
		return "Assault on Violet Hold"
	if (mapID == 1571)
		return "Court of Stars"
	if (mapID == 1677)
		return "Cathedral of Eternal Night"
	if (mapID == 1651)
		return "Karazhan"

	// Warlords of Draenor
	if (mapID == 1182)
		return "Auchindoun"
	if (mapID == 1175)
		return "Bloodmaul Slag Mines"
	if (mapID == 1279)
		return "Everbloom"
	if (mapID == 1208)
		return "Grimrail Depot"
	if (mapID == 1195)
		return "Iron Docks"
	if (mapID == 1176)
		return "Shadowmoon Burial Grounds"
	if (mapID == 1209)
		return "Skyreach"
	if (mapID == 1358)
		return "Upper Blackrock Spire"

	return "Unknown Dungeon"
}

function isValidFriendlyCombatant(mobType, mobID)
{
	return mobType != cNPCMobType || mobID == 116880 || mobID == 117042
}

function synthesizeEncounterStartIfNeeded(timeFromStart, currTime, scanningOnly, sourceGUID, targetGUID)
{
	if (sourceGUID != 117933 && targetGUID != 117933)
		return false
	
	supportAbilityTable = new Array()
	
	// These events are very different, so let's handle them correctly!
	var encounterID = 20000
	var encounterName = "The Highlord's Return"
	var encounterDifficulty = 14
	var encounterSize = 1
		
	inChallengeMode = false
	
	var outputEventString = !scanningOnly ? timeFromStart + cSeparatorCharacter + cEncounterStartEventType + cSeparatorCharacter + encounterID + cSeparatorCharacter + encounterName + cSeparatorCharacter + encounterDifficulty + cSeparatorCharacter + encounterSize : ''
		
	encounterStack = 1
	enterCombat(timeFromStart, scanningOnly)
	if (scanningOnly)
		addEncounterStartForCombat(encounterName, encounterID, encounterDifficulty)
	endCombatEventTime = timeFromStart
		
	if (!scanningOnly) {
		eventsString += outputEventString + "\n"
		lastAssignedEventID++
	}

	endTime = currTime
		
	inSynthesizedEncounter = true
	inactivityThreshold = 10000

	return true
}

function deathEndsSynthesizedEncounter(targetType, targetGUID)
{
	// Kruul
	if (targetType != cPlayerMobType && !isValidFriendlyCombatant(targetType, targetGUID) && targetGUID != 117198)
		return 0
		
	// Kruul
	if (targetGUID == 117198)
		return 2
	
	return 1
}

function synthesizeEncounterEndIfNeeded(timeFromStart, currTime, scanningOnly, targetGUID, targetType)
{
	var endType = deathEndsSynthesizedEncounter(targetType, targetGUID)
	if (endType == 0)
		return false
	
	var encounterID = 20000
	var encounterName = "The Highlord's Return"
	var encounterDifficulty = 14
	var encounterSize = 1
	var encounterSuccess = endType == 2
	
	supportAbilityTable = new Array()
	
	inSynthesizedEncounter = false
	
	var outputEventString = !scanningOnly ? timeFromStart + cSeparatorCharacter + cEncounterEndEventType + cSeparatorCharacter + encounterID + cSeparatorCharacter + encounterName + cSeparatorCharacter + encounterDifficulty + cSeparatorCharacter + encounterSize : ''
	if (!scanningOnly)
		outputEventString += cSeparatorCharacter + encounterSuccess
	encounterStack = 0
	endCombatEventTime = timeFromStart
		
	if (!scanningOnly) {
		eventsString += outputEventString + "\n"
		lastAssignedEventID++
	}

	endTime = currTime
	lastEncounterEndTime = timeFromStart
	inCombat = false
	if (scanningOnly)
		addEncounterEndForCombat(encounterName, encounterID, encounterDifficulty, encounterSuccess)
	pushLogFight(scanningOnly)
	
	return true	

}

var potentialFight = null

function enterCombat(timestamp, scanningOnly)
{
	inCombat = true
	advancedCombatLogging = false
	badEventCount = 0
	instanceIDTable = new Array()
	instanceGUIDTable = new Array()
	overkillTable = new Array()
	startCombatEventTime = timestamp
	lastEncounterEndTime = 0
	inSynthesizedEncounter = false
	unmitigatedDamageMultipliers = new Array()

	if (scanningOnly)
		potentialFight = { name: 'Unknown', friendlies:new Array(), enemies:new Array(), start:startTime + timestamp, end:startTime + timestamp, boss:0, difficulty:0, success:false }
}

function addEncounterStartForCombat(name, boss, difficulty)
{
	if (!potentialFight)
		return
	potentialFight.name = name
	potentialFight.boss = boss
	potentialFight.difficulty = difficulty
}

function addEncounterEndForCombat(name, boss, difficulty, success)
{
	if (!potentialFight)
		return

	if (potentialFight.boss == 0) {
		potentialFight.name = name
		potentialFight.boss = boss
		potentialFight.difficulty = difficulty
	}
	potentialFight.success = boss != potentialFight.boss ? false : success == "1"
}

function addParticipant(name, type, hostility)
{
	if (!potentialFight)
		return
		
	if (hostility == COMBATLOG_OBJECT_REACTION_HOSTILE && type == cNPCMobType) {
		potentialFight.enemies[name] = 1
		if (potentialFight.name == "Unknown")
			potentialFight.name = name
	} else if (hostility == COMBATLOG_OBJECT_REACTION_FRIENDLY && type == cPlayerMobType) {
		var splitName = name.split("-")
		potentialFight.friendlies[splitName[0]] = 1
	}
}

function inFightRange(time)
{
	if (!raidsToUpload.length)
		return true
	
	var firstRaid = raidsToUpload[0]
	if (time < firstRaid.start)
		return false
	
	var lastRaid = raidsToUpload[raidsToUpload.length - 1]
	if (time > lastRaid.end)
		return false
	
	if (raidsToUpload.length == 1)
		return true // Not before or after raid, so must be in it.

	// More complicated. See where we fall.
	for (var i = 0; i < raidsToUpload.length - 1; ++i) {
		var currRaid = raidsToUpload[i]
		var nextRaid = raidsToUpload[i+1]
		if (time > currRaid.end && time < nextRaid.start)
			return false
	}
	
	return true
}

function getSupportArrayItem(arrayToCheck, idToCheck)
{
	for (var i = 0; i < arrayToCheck.length; ++i) {
		if (arrayToCheck[i].source == idToCheck)
			return arrayToCheck[i]
	}
	return null
}

function isSupportBuff(abilityID)
{
	return abilityID == 203528 || abilityID == 195222
}

function isSupportDamageAbility(abilityID)
{
	return abilityID == 205729 || abilityID == 195256
}

function slopTimeForSupportAbility(abilityToCheck)
{
	// Stormlash has a bit of slop built into it from travel time. Greater Blessing of Might does not.
	return abilityToCheck == 195222 ? 2500 : 0
}

function cullExpiredSupportAbilities(abilityToCheck, abilityAndTarget, timestamp)
{
	for (var i = 0; i < abilityAndTarget.sources.length; ++i) {
		if (abilityAndTarget.sources[i].expired > 0 && (abilityAndTarget.sources[i].expired + slopTimeForSupportAbility(abilityToCheck)) <= timestamp) {
			abilityAndTarget.sources.splice(i, 1)
			if (abilityAndTarget.offset > i)
				abilityAndTarget.offset--
			i--
		}
	}

	if (abilityAndTarget.offset >= abilityAndTarget.sources.length)
		abilityAndTarget.offset = 0
}

function auraUnmitigatedDamageInfo(sourceID, abilityID, stack)
{
	// Global buffs
	if (abilityID == 184362) // Enrage for all Fury Warriors
		return { key: abilityID, physical: 1.2, magical: 1.2, ability: 1.0, expired: 0 }
	if (abilityID == 288989) // Treacherous Covenant Azerite power.
		return { key: abilityID, physical: 1 + (stack * 0.15), magical: 1 + (stack * 0.15), ability: 1.0, expired: 0 }
	
	// Global debuffs
	if (abilityID == 123725) // Brewmaster Monk, Breath of Fire, 5% reduction
		return { key: abilityID, physical: 0.95, magical: 0.95, ability: 1.0, expired: 0, debuffSourceID: sourceID }
	if (abilityID == 1160) // Protection Warrior, Demoralizing Shout, 20% reduction
		return { key: abilityID, physical: 0.8, magical: 0.8, ability: 1.0, expired: 0, debuffSourceID: sourceID }
	if (abilityID == 275335) // Protection Warrior, Punish, 3% reduction
		return { key: abilityID, physical: 0.97, magical: 0.97, ability: 1.0, expired: 0, debuffSourceID: sourceID }
	if (abilityID == 207744) // Vengeance Demon Hunter, Fiery Brand, 40% reduction
		return { key: abilityID, physical: 0.6, magical: 0.6, ability: 1.0, expired: 0, debuffSourceID: sourceID }
	if (abilityID == 268178) // Vengeance Demon Hunter, Void Reaver, 6% reduction
		return { key: abilityID, physical: 0.94, magical: 0.94, ability: 1.0, expired: 0, debuffSourceID: sourceID }
	if (abilityID == 192090 && rendAndTearTracking[sourceID] == 1) // Thrash, Bears, 2% per stack, Rend and Tear talent required
		return { key: abilityID, physical: 1.0 - (stack * 0.02), magical: 1.0 - (stack * 0.02), ability: 1.0, expired: 0, debuffSourceID: sourceID }
	
	// Battle of Dazar'alor
	if (abilityID == 288151) // Tested on Jadefire Masters, 10% Physical.
		return { key: abilityID, physical: 1 + (stack * 0.1), magical: 1, ability: 1.0, expired: 0 }
	if (abilityID == 284374) // Magma Trap on Jadefire Masters. 100% for next Magma trap damage.
		return { key: abilityID, physical: 1, magical: 1, ability: 1 + stack, expired: 0 }
	if (abilityID == 282010) // Shattered increases damage taken by Tantrum by 30% per stack.
		return { key: abilityID, physical: 1, magical: 1, abilityID: 281940, ability: 1 + (stack * 0.3), expired: 0 }
	if (abilityID == 285671) // Crushed increases damage taken by Bestial Smash by 500% per stack.
		return { key: abilityID, physical: 1, magical: 1, abilityID: 283078, ability: 1 + (stack * 5), expired: 0 }
	if (abilityID == 287037) // Coin Sweep on Opulence, 20% Physical
		return { key: abilityID, physical: 1 + (stack * 0.2), magical: 1, ability: 1.0, expired: 0 }
	if (abilityID == 289858) // Crushed increases damage taken by Crushing Leap by 500% per stack. Rastakhan fight.
		return { key: abilityID, physical: 1, magical: 1, abilityID: 284730, ability: 1 + (stack * 5), expired: 0 }
	if (abilityID == 284168) // Shrunk, damage reduced by 99%, Mekkatorque fight.
		return { key: abilityID, physical: 0.01, magical: 0.01, ability: 1.0, expired: 0 }
	if (abilityID == 289023) // Enormous, damage increased by 10%, Mekkatorque fight.
		return { key: abilityID, physical: 1.1, magical: 1.1, ability: 1.0, expired: 0 }
	
	// Uldir
	if (abilityID == 265237) // Shatter on Zekvoz, Phys Damage, 50%
		return { key: abilityID, physical: 1 + (stack * 0.5), magical: 1, ability: 1.0, expired: 0 }
	if (abilityID == 267787) // Sundering Scalpel on MOTHER, All Damage, 50%
		return { key: abilityID, physical: 1 + (stack * 0.5), magical: 1 + (stack * 0.5), ability: 1.0, expired: 0 }
	if (abilityID == 265127) // Lingering Infection, Nature damage, 3% per stack
		return { key: abilityID, physical: 1, magical: 1.0 + (stack * 0.03), ability: 1.0, expired: 0, school: 8 }
	if (abilityID == 267409) // Dark Bargain on G'huun, 25% per stack
		return { key: abilityID, physical: 1 + (stack * 0.25), magical: 1, ability: 1.0, expired: 0 }
	
	// BfA Mythic+
	if (abilityID == 267818) // Shrine of the Storm, Slicing Blast, +20% Nature per stack
		return { key: abilityID, physical: 1, magical: 1.0 + (stack * 0.2), ability: 1.0, expired: 0, school: 8 }
	
	// Antorus
	if (abilityID == 245990) // Taeschalach's Reach, Aggramar +5% phys perstack
		return { key: abilityID, physical: 1 + (stack * 0.05), magical: 1, ability: 1.0, expired: 0 }
	if (abilityID == 244291) // Foe breaker on Aggramar
		return { key: abilityID, physical: 1, magical: 1, ability: 1 + (stack * 5), expired: 0 }
	if (abilityID == 248499 || abilityID == 258838 || abilityID == 254919) // Sweeping Scythe and SOulrending Scythe on Argus, Kingaroth Forging Strike
		return { key: abilityID, physical: 1, magical: 1, ability: 1 + (stack * 2), expired: 0 }
	if (abilityID == 247367 || abilityID == 250255) // Shock Lance/Empowered Shock Lance on Imonar
		return { key: abilityID, physical: 1 + (stack * 0.1), magical: 1 + (stack * 0.1), ability: 1.0, expired: 0 }
	if (abilityID == 250224) // Shocked on Imonar, +50% Nature
		return { key: abilityID, physical: 1, magical: 1 + (stack * 0.5), ability: 1.0, expired: 0, school: 8 }
	if (abilityID == 249535) // Demolished on Kingaroth, +100% Shadow
		return { key: abilityID, physical: 1, magical: 1 + (stack * 1), ability: 1.0, expired: 0, school: 32 }
	if (abilityID == 243961) // Vari Misery, +200% physical
		return { key: abilityID, physical: 1 + (stack * 2), magical: 1, ability: 1.0, expired: 0  }
	if (abilityID == 244899) // Fiery Strike on Coven, +100%
		return { key: abilityID, physical: 1, magical: 1, ability: 1 + stack, expired: 0 }
	if (abilityID == 244892) // Exploit Weakness on Antoran
		return { key: abilityID, physical: 1 + (stack * 0.5), magical: 1, ability: 1.0, expired: 0 }
	if (abilityID == 245040) // Corrupted on Portal Keeper
		return { key: abilityID, physical: 1 + (stack * 0.15), magical: 1 + (stack * 0.15), ability: 1.0, expired: 0 }
	if (abilityID == 244709) // Fiery Detonation on Portal Keeper
		return { key: abilityID, physical: 1, magical: 1, ability: 1 + (stack * 0.25), expired: 0 }
}

function expireUnmitigatedDamageAuras(currentTime)
{
	for (var i in unmitigatedDamageMultipliers) {
		for (var j = 0; j < unmitigatedDamageMultipliers[i].length; ++j) {
			if (unmitigatedDamageMultipliers[i][j].expired > 0) {
				// 50 ms slop for buffs on player in case they die and the fade is from that.
				var expirationTime = unmitigatedDamageMultipliers[i][j].debuffSourceID ? unmitigatedDamageMultipliers[i][j].expired : unmitigatedDamageMultipliers[i][j].expired + 50
				if (expirationTime < currentTime) {
					unmitigatedDamageMultipliers[i].splice(j, 1)
					j--
				}
			}	
		}
	}
}

function expireGuard(currentTime)
{
	for (var i in guardTracking) {
		if ((guardTracking[i].expired > 0 && guardTracking[i].expired < currentTime) || ((currentTime - guardTracking[i].timestamp) > 9000)) {
			delete guardTracking[i]
		}
	}
}

function adjustUnmitigatedDamageValue(unmitigated, sourceID, sourceInstanceID, targetID, targetInstanceID, abilityID, abilityType, includeDebuffs, haveOverkill, currentTime)
{
	var result = 1.0
	var key = targetID + '-' + targetInstanceID	
	if (abilityID == 124255) // Stagger is never mitigated.
		return unmitigated
	
	var mult = 1.0
	if (unmitigatedDamageMultipliers[key] !== undefined) {
		for (var i = 0; i < unmitigatedDamageMultipliers[key].length; ++i) {
			var entry = unmitigatedDamageMultipliers[key][i]
			var expirationTime = entry.expired > 0 ? (haveOverkill ? entry.expired + 50 : entry.expired) : 0
			if (expirationTime > 0 && expirationTime < currentTime)
				continue
			var singleMult = 1.0
			if ((abilityType & cPhysicalAbilityType) != 0 && entry.physical > 1.0)
				singleMult = entry.physical
			else if (abilityType > 1 && entry.magical > 1.0) {
				if (!entry.school || (entry.school & abilityType) != 0)
					singleMult = entry.magical
			} else if (entry.ability > 1.0 && (entry.abilityID == abilityID || (!entry.abilityID && entry.key == abilityID)))
				singleMult = entry.ability
			mult *= singleMult
			//if (debug)
			//	alert(entry.key + " " + entry.physical + " " + entry.magical + " " + abilityType + " " + singleMult + " " + mult)
		}
	}
	
	if (!includeDebuffs)
		return Math.ceil(mult * unmitigated)
		
	var debuffMult = 1.0
	var key = sourceID + '-' + sourceInstanceID + '-' + targetID
	if (unmitigatedDamageMultipliers[key] !== undefined) {
		for (var i = 0; i < unmitigatedDamageMultipliers[key].length; ++i) {
			var entry = unmitigatedDamageMultipliers[key][i]
			if (targetID != entry.debuffSourceID)
				continue
			var singleMult = 1.0
			if ((abilityType & cPhysicalAbilityType) != 0 && entry.physical != 1)
				singleMult = entry.physical
			else if (abilityType > 1 && entry.magical != 1) {
				if (!entry.school || (entry.school & abilityType) != 0)
					singleMult = entry.magical
			} else if (abilityID == entry.key && entry.ability != 1)
				singleMult = entry.ability
			debuffMult *= singleMult
			//if (debug)
			//	alert(entry.key + " " + entry.physical + " " + entry.magical + " " + abilityType + " " + singleMult + " " + mult)
		}
	}
	
	return Math.ceil((mult / debuffMult) * unmitigated);
}

function assignSourceForSupportAbility(sourceID, abilityID, timestamp)
{
	var abilityToCheck = abilityID == 205729 ? 203528 : (abilityID == 195256 ? 195222 : 0)
	if (!abilityToCheck)
		return

	if (petsTable[sourceID])
		sourceID = petsIDMap[petsTable[sourceID] - 1].ownerID

	var targetTable = supportAbilityTable[sourceID] 
	if (!targetTable)
		return sourceID
	var abilityAndTarget = targetTable[abilityToCheck]
	if (!abilityAndTarget || !abilityAndTarget.sources.length)
		return sourceID
		
	cullExpiredSupportAbilities(abilityToCheck, abilityAndTarget, timestamp)
	if (!abilityAndTarget.sources.length)
		return sourceID

	var result = abilityAndTarget.sources[abilityAndTarget.offset]
	abilityAndTarget.offset++
	if (abilityAndTarget.offset >= abilityAndTarget.sources.length)
		abilityAndTarget.offset = 0
	return result.source
}

function applySupportAbility(sourceID, targetID, abilityID, timestamp)
{
	if (!supportAbilityTable[targetID])
		supportAbilityTable[targetID] = new Array()
	var targetTable = supportAbilityTable[targetID]
	if (!targetTable[abilityID])
		targetTable[abilityID] = { offset: 0, sources: new Array() }
	var abilityAndTarget = targetTable[abilityID]
	var item = getSupportArrayItem(abilityAndTarget.sources, sourceID)
	if (item) {
		item.expired = 0
		return
	}
	abilityAndTarget.sources.push({ source: sourceID, expired: 0})
}

function removeSupportAbility(sourceID, targetID, abilityID, timestamp)
{
	var targetTable = supportAbilityTable[targetID]
	if (!targetTable)
		return
	var abilityAndTarget = targetTable[abilityID]
	if (!abilityAndTarget)
		return
	var item = getSupportArrayItem(abilityAndTarget.sources, sourceID) 
	if (item)
		item.expired = timestamp
}

function handleCombatantInfoEvent(currTime, line, timeFromStart, sourceGUIDStr, indexWithinLine, restOfEventLine)
{
	// We send this unaltered. Makes compatibility issues easier to handle.
	var sourceGUID
	var sourceType
	var extractedSourceID
	
	if (logVersion < 7)
		logVersion = 7
	
	var sourceSplit = sourceGUIDStr.split('-')
	sourceType = convertToMobType(sourceSplit[0])
		
	extractedSourceID = extractIDForType(sourceSplit, sourceType)
	sourceGUID = buildGUID(line, sourceType, extractedSourceID, sourceSplit)
	
	var sourceID = convertToID(extractedSourceID, sourceGUID, "nil", sourceType, 0)
	var targetID = sourceID

	var outputEventString = timeFromStart + cSeparatorCharacter + cCombatantInfoEventType + cSeparatorCharacter + sourceID + cSeparatorCharacter
	var inInterestingAuras = false
	var inTalents = 0
	
	for (var i = indexWithinLine; i < restOfEventLine.length; ++i) {
		if (!inTalents && restOfEventLine[i].length > 0 && restOfEventLine[i][0] == '(')
			inTalents = 1
		
		if (inTalents == 1) {
			if (restOfEventLine[i].indexOf("204053") != -1)
				rendAndTearTracking[sourceID] = 1
			
			if (restOfEventLine[i].length > 0 && restOfEventLine[i][restOfEventLine[i].length - 1] == ')')
				inTalents = 2
		}
		
		var guidIndex = restOfEventLine[i].indexOf("Player-")
		if (guidIndex == -1)
			guidIndex = restOfEventLine[i].indexOf("Creature-")
		var finalString = clone(restOfEventLine[i])
		if (guidIndex != -1) {
			inInterestingAuras = true
			
			sourceGUIDStr = finalString.substring(guidIndex)
			sourceSplit = sourceGUIDStr.split('-')
			sourceType = convertToMobType(sourceSplit[0])
			
			extractedSourceID = extractIDForType(sourceSplit, sourceType)
			sourceGUID = buildGUID(line, sourceType, extractedSourceID, sourceSplit)
			sourceID = convertToID(extractedSourceID, sourceGUID, "nil", sourceType, 0)
			if (guidIndex > 0)
				finalString = "[" + sourceID
			else
				finalString = sourceID
		} else if (inInterestingAuras) {
			var replacedString = finalString.replace('[', '');
			replacedString = replacedString.replace(']', '');
			var ability = parseInt(replacedString)
			var isSupport = isSupportBuff(ability)
			if (isSupport)
				applySupportAbility(sourceID, targetID, ability)
		}

		outputEventString += finalString
		if (i < restOfEventLine.length - 1)
			outputEventString += ','
	}
	
	eventsString += outputEventString + "\n"
	endTime = currTime
	lastAssignedEventID++
	
	return true
}

function constructAbsorbedString(restOfEventLine, indexWithinLine, attackerID, attackerInstanceID, attackerHostility, attackerRaidMarker, absorbAmount, absorbHasAttackerAbility, extractedAttackerID, school)
{
	var absorbedString = cSeparatorCharacter + attackerID + cSeparatorCharacter + attackerInstanceID + cSeparatorCharacter + attackerHostility + cSeparatorCharacter + attackerRaidMarker + cSeparatorCharacter + absorbAmount
	if (!absorbHasAttackerAbility) {
		currentEventAbilityID = 1
		currentEventAbilityName = "Melee"
		currentEventAbilityType = cPhysicalAbilityType
		if (meleeSchoolTable[extractedAttackerID]) {
			currentEventAbilityID = meleeSchoolTable[extractedAttackerID]
			currentEventAbilityType = school < 0 ? -school : school
		} 
	} else {
		currentEventAbilityID = parseInt(restOfEventLine[9])
		indexWithinLine = 9
		currentEventAbilityName = restOfEventLine[++indexWithinLine]
		currentEventAbilityType = parseInt(restOfEventLine[++indexWithinLine], 16)
	}
	var abilityID = abilityIDForCurrentEvent()
	absorbedString += cSeparatorCharacter + abilityID
	return absorbedString
}

function parseLogLine(line, scanningOnly)
{
	indexWithinLine = 0
	
	// Get the timestamp, which includes the date in milliseconds.
	var dateEnd = line.indexOf(" ")
	if (dateEnd == -1)
		return false
	
	var dateString = line.substr(0, dateEnd)
	if (!dateString.length)
		return false

	var timeEnd = line.indexOf("  ", dateEnd)
	if (timeEnd == -1 || timeEnd < dateEnd + 1)
		return false

	var timeStringWithMilliseconds = line.substr(dateEnd + 1, timeEnd - dateEnd - 1)
	
	// Split the time string into the time without milliseconds and the milliseconds.
	var timeSplit = timeStringWithMilliseconds.split('.')
	if (timeSplit.length != 2)
		return false

	var currTime = adjustTimeForYearCrossingAndDaylightSavings(line, dateString, timeSplit)
	previousTime = currTime
	currTime += daylightSavingsShift
	
	if (!inFightRange(currTime))
		return true
		
	if (!startTimeSet) {
		startTimeSet = true
		endTime = currTime
		startTime = endTime
	}

	var timeFromStart = currTime - startTime
	
	expireUnmitigatedDamageAuras(timeFromStart)
	expireGuard(timeFromStart)
	
	// Get the entire rest of the line and do a split() on it.
	var restOfEventLine = line.substr(timeEnd + 2).split(',');
	if (!parseLocalizedNames(restOfEventLine))
		return true // If the line is garbled and we can't parse it, just throw the line away.
	
	// Next up is the event type.
	var eventTypeString = restOfEventLine[0]
	var eventType = collectEventTypeInformation(eventTypeString, restOfEventLine)
	
	if (eventType == cNoEventType)
		return true // throw "Unrecognized event encountered: " + eventTypeString

	if (eventType == cAbilityFailedActivationEventType) // This event has more to do with add-on error reporting. It only shows the player's failures, so it's not worth sending up.
		return true

	if (eventType == cChallengeModeEndEventType && logVersion >= 7 && !inChallengeMode)
		return true // Just completely drop incomplete mythic dungeons.
	
	if (eventType == cVersionEventType) {
		// COMBAT_LOG_VERSION,9,ADVANCED_LOG_ENABLED,1
		var version = parseInt(restOfEventLine[++indexWithinLine])
		restOfEventLine[++indexWithinLine]
		var advancedLoggingEnabled = parseInt(restOfEventLine[++indexWithinLine])
		if (advancedLoggingEnabled !== 1)
			throw "This log was created without Advanced Combat Logging enabled, and is not supported on Warcraft Logs. You can enable Advanced Combat Logging from the Network pane of System preferences in-game. Delete your log file before enabling Advanced Logging, or this uploader will continue to refuse the file.";
		else {
			if (!advancedCombatLogging)
				advancedCombatLogging = true
			if (logVersion < 14 && version >= 10)
				logVersion = 14 // 8.1 logs
			if (logVersion < 13 && version == 9)
				logVersion = 13 // 8.0 final logs!
		}
		return true
	}
	
	if (inCombat) {
		if (inChallengeMode && (timeFromStart - endCombatEventTime > inactivityThreshold)) {
			inCombat = false
			inChallengeMode = false
			inactivityThreshold = 10000
		} else if (inSynthesizedEncounter && (timeFromStart - endCombatEventTime > inactivityThreshold)) {
			inCombat = false
			inSynthesizedEncounter = false
		} else if (encounterStack > 0 && (timeFromStart - endCombatEventTime > inactivityThreshold)) { // 90 seconds of inactivity is enough to say the combat is over no matter what Blizzard says.
			inCombat = false
			encounterStack = 0
			inactivityThreshold = 10000
		} else if ((!scanningOnly || !inChallengeMode) && encounterStack == 0 && (timeFromStart - endCombatEventTime > inactivityThreshold)) { // We use 10 seconds otherwise.
			inCombat = false
		} else if (eventType == cEncounterStartEventType && (timeFromStart - 2500) > startCombatEventTime) { // Only end combat if we didn't enter close to the same time as this new start event.
			inCombat = false
		} else if (eventType == cChallengeModeStartEventType) {
			inCombat = false
			encounterStack = 0
		}
			
		// Push all the data we have so far into the live logs array.
		if (!inCombat)
			pushLogFight(scanningOnly)
	}

	if (eventType == cEncounterStartEventType || eventType == cEncounterEndEventType || eventType == cPhaseStartEventType || eventType == cPhaseEndEventType) {
		supportAbilityTable = new Array()
	
		// These events are very different, so let's handle them correctly!
		var encounterID = restOfEventLine[++indexWithinLine]
		var encounterName = clone(restOfEventLine[++indexWithinLine])
		var encounterDifficulty = parseInt(restOfEventLine[++indexWithinLine])
		if (encounterDifficulty == 16 && !inChallengeMode)
			mythic = 1
		var encounterSize = restOfEventLine[++indexWithinLine]
		
		if (encounterDifficulty != 8)
			inChallengeMode = false
		
		var outputEventString = !scanningOnly ? timeFromStart + cSeparatorCharacter + eventType + cSeparatorCharacter + encounterID + cSeparatorCharacter + encounterName + cSeparatorCharacter + encounterDifficulty + cSeparatorCharacter + encounterSize : ''
		
		// First we update our inCombat state.
		var encounterSuccess = ''
		if (eventType == cEncounterStartEventType) {
			encounterStack = 1
			if (!inCombat)
				enterCombat(timeFromStart, scanningOnly)
			if (scanningOnly)
				addEncounterStartForCombat(encounterName, encounterID, encounterDifficulty)
			inactivityThreshold = 90000
		} else if (eventType == cEncounterEndEventType || eventType == cPhaseEndEventType) {
			encounterSuccess = restOfEventLine[++indexWithinLine]
			if (!scanningOnly)
				outputEventString += cSeparatorCharacter + encounterSuccess
			if (eventType == cEncounterEndEventType)
				encounterStack = 0
		}
		
		if (inCombat)
			endCombatEventTime = timeFromStart
		
		if (!scanningOnly) {
			eventsString += outputEventString + "\n"
			lastAssignedEventID++
		}

		endTime = currTime
		
		if (encounterStack == 0 && (eventType != cPhaseStartEventType && eventType != cPhaseEndEventType)) {
			lastEncounterEndTime = timeFromStart
			inCombat = false
			inactivityThreshold = 10000
			if (scanningOnly)
				addEncounterEndForCombat(encounterName, encounterID, encounterDifficulty, encounterSuccess)
			pushLogFight(scanningOnly)
		}
		
		return true	
	}
	
	if (eventType == cChallengeModeStartEventType) {
		supportAbilityTable = new Array()
		
		var mapID = parseInt(restOfEventLine[++indexWithinLine])
		var name = ''
		var outputEventString = !scanningOnly ? timeFromStart + cSeparatorCharacter + eventType : ''
		if (isNaN(mapID)) {
			name = clone(restOfEventLine[indexWithinLine])
			mapID = parseInt(restOfEventLine[++indexWithinLine])
			if (!scanningOnly)
				outputEventString += cSeparatorCharacter + mapID + cSeparatorCharacter + name
			if (logVersion < 9)
				logVersion = 9
		} else if (!scanningOnly)
			outputEventString += cSeparatorCharacter + mapID 
			
		if (!scanningOnly && indexWithinLine + 1 < restOfEventLine.length) {
			var firstNumber = parseInt(restOfEventLine[++indexWithinLine])
			var secondNumber = parseInt(restOfEventLine[indexWithinLine + 1])
			
			var level = firstNumber
			if (!isNaN(secondNumber)) {
				level = secondNumber
				indexWithinLine++
				if (logVersion < 10)
					logVersion = 10
			}
			outputEventString += cSeparatorCharacter + level

			while (indexWithinLine + 1 < restOfEventLine.length) {
				var affix = restOfEventLine[++indexWithinLine]
				affix = affix.replace("[", "")
				affix = affix.replace("]", "")
				affix = parseInt(affix)
				outputEventString += cSeparatorCharacter + affix
			}
		}

		enterCombat(timeFromStart, scanningOnly)
		endCombatEventTime = timeFromStart
		endTime = currTime
		if (!scanningOnly) {
			eventsString += outputEventString + "\n"
			lastAssignedEventID++
		} else
			addEncounterStartForCombat(name ? name : nameForChallengeMode(mapID), mapID, 8)
		inChallengeMode = true
		inactivityThreshold = 1800000
		return true
	}
	
	if (eventType == cChallengeModeEndEventType) {
		// CHALLENGE_MODE_END,1651,1,23,5666149
		var mapID = parseInt(restOfEventLine[++indexWithinLine])
		var success = parseInt(restOfEventLine[++indexWithinLine])
		var medal = parseInt(restOfEventLine[++indexWithinLine])
		var completionTime = parseInt(restOfEventLine[++indexWithinLine])
		var outputEventString = !scanningOnly ? timeFromStart + cSeparatorCharacter + eventType + cSeparatorCharacter + mapID + cSeparatorCharacter + success + cSeparatorCharacter + medal + cSeparatorCharacter + completionTime : ''
		
		if (inCombat)
			endCombatEventTime = timeFromStart
		endTime = currTime
		if (!scanningOnly) {
			eventsString += outputEventString + "\n"
			lastAssignedEventID++
		}
		inCombat = false
		inactivityThreshold = 10000
		inChallengeMode = false
		if (scanningOnly)
			addEncounterEndForCombat(nameForChallengeMode(mapID), mapID, 8, success)
		pushLogFight(scanningOnly)
		return true
	}

	if (eventType == cWorldMarkerPlacedEventType) {
		var mapID = parseInt(restOfEventLine[++indexWithinLine])
		var icon = parseInt(restOfEventLine[++indexWithinLine])
		var x = parseInt(parseFloat(restOfEventLine[++indexWithinLine]) * 100)
		var y = parseInt(parseFloat(restOfEventLine[++indexWithinLine]) * 100)
		
		endTime = currTime
		
		if (logVersion < 11)
			logVersion = 11
			
		var outputEventString = !scanningOnly ? timeFromStart + cSeparatorCharacter + eventType + cSeparatorCharacter + mapID + cSeparatorCharacter + icon + cSeparatorCharacter + x + cSeparatorCharacter + y : ''
		if (!scanningOnly) {
			eventsString += outputEventString + "\n"
			lastAssignedEventID++
		}
		return true	
	}
	
	if (eventType == cWorldMarkerRemovedEventType) {
		endTime = currTime
		
		if (logVersion < 11)
			logVersion = 11
			
		var icon = parseInt(restOfEventLine[++indexWithinLine])
		var outputEventString = !scanningOnly ? timeFromStart + cSeparatorCharacter + eventType + cSeparatorCharacter + icon  : ''
		if (!scanningOnly) {
			eventsString += outputEventString + "\n"
			lastAssignedEventID++
		}
		return true	
	}
	
	if (restOfEventLine.length < 8)
		return false
	
	var absorbHasAttackerAbility = false
	var indexOfSource = eventType == cAbsorbedEventType ? 8 : 0
	if (eventType == cAbsorbedEventType && restOfEventLine[9].indexOf(':') == -1 && restOfEventLine[9].indexOf('-') == -1) {
		indexOfSource += 3 // There is an ability to skip.
		absorbHasAttackerAbility = true
	}
	indexWithinLine = indexOfSource
	
	var sourceGUIDStr = restOfEventLine[++indexWithinLine]
	
	if (eventType == cCombatantInfoEventType) {
		if (scanningOnly)
			return true
		return handleCombatantInfoEvent(currTime, line, timeFromStart, sourceGUIDStr, ++indexWithinLine, restOfEventLine)
	}

	var sourceName = restOfEventLine[++indexWithinLine]
	var sourceFlags = parseInt(restOfEventLine[++indexWithinLine], 16)
	var sourceRaidFlags = parseInt(restOfEventLine[++indexWithinLine], 16)
	
	indexWithinLine = 4 // Both regular events and absorbs have the target at 4.
	
	var targetGUIDStr = restOfEventLine[++indexWithinLine]
	
	var targetName = restOfEventLine[++indexWithinLine]
	var targetFlags = parseInt(restOfEventLine[++indexWithinLine], 16)
	var targetRaidFlags = parseInt(restOfEventLine[++indexWithinLine], 16)
		
	var sourceGUID
	var targetGUID
	var sourceType
	var targetType
	var extractedSourceID
	var extractedTargetID
	
	if (logVersion >= 5 || sourceGUIDStr.indexOf('-') != -1 || sourceGUIDStr == "0000000000000000") {
		if (logVersion < 5)
			logVersion = 5
		var sourceSplit = sourceGUIDStr.split('-')
		sourceType = convertToMobType(sourceSplit[0])
		
		var targetSplit = targetGUIDStr.split('-')
		targetType = convertToMobType(targetSplit[0])
		
		extractedSourceID = extractIDForType(sourceSplit, sourceType)
		extractedTargetID = extractIDForType(targetSplit, targetType)
		
		sourceGUID = buildGUID(line, sourceType, extractedSourceID, sourceSplit)
		targetGUID = buildGUID(line, targetType, extractedTargetID, targetSplit)
	} else {
		logVersion = 1
		sourceType = convertToMobTypeLegacy(sourceGUIDStr)
		targetType = convertToMobTypeLegacy(targetGUIDStr)
	
		extractedSourceID = extractIDForTypeLegacy(sourceGUIDStr, sourceType)
		extractedTargetID = extractIDForTypeLegacy(targetGUIDStr, targetType)
		
		sourceGUID = parseInt(sourceGUIDStr.substr(5, 13), 16)
		targetGUID = parseInt(targetGUIDStr.substr(5, 13), 16)
	}
	
	var sourceHostility = (COMBATLOG_OBJECT_REACTION_MASK & sourceFlags)
	var targetHostility = (COMBATLOG_OBJECT_REACTION_MASK & targetFlags)

	// If scanning only, we need to do just a handful of things and then return:
	if (scanningOnly) {
		// Add participants to current fight blob.
		addParticipant(sourceName, sourceType, sourceHostility)
		addParticipant(targetName, targetType, targetHostility)
		
		// Handle combat continuance.
		var playerHittingEnemy = targetHostility != COMBATLOG_OBJECT_REACTION_FRIENDLY && sourceHostility == COMBATLOG_OBJECT_REACTION_FRIENDLY && isValidFriendlyCombatant(sourceType, extractedSourceID)
		var enemyHittingPlayer = sourceHostility != COMBATLOG_OBJECT_REACTION_FRIENDLY && targetHostility == COMBATLOG_OBJECT_REACTION_FRIENDLY && isValidFriendlyCombatant(targetType, extractedTargetID)
	
		var eventContinuesCombat = false
		
		if (eventType == cDamageEventType || eventType == cDamageTickEventType) {
			eventContinuesCombat = extractedSourceID && extractedTargetID && !currentEventIsTick && (playerHittingEnemy || enemyHittingPlayer)
			if (eventContinuesCombat && !inCombat && (!lastEncounterEndTime || ((timeFromStart - 3000) >= lastEncounterEndTime))) {
				if (!synthesizeEncounterStartIfNeeded(timeFromStart, currTime, scanningOnly, extractedSourceID, extractedTargetID))
					enterCombat(timeFromStart, scanningOnly)
			}
		} else if (eventType == cDeathEventType || eventType == cDestroyedEventType) {
			eventContinuesCombat = (targetHostility != COMBATLOG_OBJECT_REACTION_FRIENDLY)
		} else if (eventType == cInstakillEventType) {
			eventContinuesCombat = (targetHostility == COMBATLOG_OBJECT_REACTION_FRIENDLY) && (sourceHostility != COMBATLOG_OBJECT_REACTION_FRIENDLY)
		}
		
		if (eventContinuesCombat && inCombat)
			endCombatEventTime = timeFromStart
			
		endTime = currTime
		
		if (eventType == cDeathEventType && inSynthesizedEncounter)
			synthesizeEncounterEndIfNeeded(timeFromStart, currTime, scanningOnly, extractedTargetID, targetType)

		return true
	}

	// Get our ability name.
	abilityID = 0
	if (currentEventHasAbility) {
		var indexOfAbility = eventType == cAbsorbedEventType ? (absorbHasAttackerAbility ? 15 : 12) : 8
		indexWithinLine = indexOfAbility

		if (currentEventIsMelee) {
			if (!meleeSchoolTable[extractedSourceID]) {
				var currentIndex = 9
				if (currentIndex < restOfEventLine.length && eventTypeString != "SWING_MISSED") {
					if (isGUID(restOfEventLine[currentIndex]))
						currentIndex += collectResourceInformation(currentIndex, restOfEventLine)
					currentIndex += logVersion >= 12 ? 3 : 2
					if (currentIndex < restOfEventLine.length) {
						var school = parseInt(restOfEventLine[currentIndex])
						meleeSchoolTable[extractedSourceID] = school == 1 ? school : -school
					}
				}
			}
			
			if (meleeSchoolTable[extractedSourceID]) {
				currentEventAbilityID = meleeSchoolTable[extractedSourceID]
				currentEventAbilityType = currentEventAbilityID < 0 ? -currentEventAbilityID : currentEventAbilityID
			} 
		}

		if (!currentEventAbilityID) {
			currentEventAbilityID = parseInt(restOfEventLine[++indexWithinLine])
			currentEventAbilityName = restOfEventLine[++indexWithinLine]
			currentEventAbilityType = parseInt(restOfEventLine[++indexWithinLine], 16)
			
			if (eventType == cAbsorbedEventType && isBuggyAbsorbAbilityID())
				return true
		}
		
		// Output our ability if needed
		abilityID = abilityIDForCurrentEvent()
		
		if (isBuggyAbilityID()) {
			// Jade Spirit is buggy and thinks some unknown player applied it.
			// Fix this up so we don't send up a bogus actor.
			sourceGUID = 0
			sourceName = 'nil'
			sourceType = cPlayerMobType
		}
	}

	var ownerToConnectToPet = 0
	var connectSourcePetToOwner = false
	var connectTargetPetToOwner = false

	var petIconID = 0
	
	var startingIndex = ++indexWithinLine
	if (startingIndex < restOfEventLine.length && isGUID(restOfEventLine[startingIndex]) && eventType != cHealAbsorbedEventType) // Healing absorbed events have a GUID but no resources.
		startingIndex += collectResourceInformation(startingIndex, restOfEventLine)
	
	var hasResources = ((logVersion == 1 && currentResourceActor != "0x0000000000000000") || (logVersion >= 5 && currentResourceActor != "0000000000000000")) && (currentResourceActor == sourceGUIDStr || currentResourceActor == targetGUIDStr)
	if (hasResources) {
		if (!advancedCombatLogging)
			advancedCombatLogging = true
			
		if (currentResourceActor == sourceGUIDStr)
			currentResourceActor = 1
		else
			currentResourceActor = 2
	
		if (logVersion >= 6 && currentPetOwner && currentPetOwner != "0000000000000000") {
			var petExtractedID = currentResourceActor == 1 ? extractedSourceID : extractedTargetID
			var petActorType = currentResourceActor == 1 ? sourceType : targetType
			if (!isBogusPet(petExtractedID) && petActorType != cPlayerMobType) {
				var petActorID = currentResourceActor == 1 ? sourceID : targetID
				var petGUID = currentResourceActor == 1 ? sourceGUID : targetGUID
				var ownerSplit = currentPetOwner.split('-')
				var ownerType = convertToMobType(ownerSplit[0])
				var extractedOwnerID = extractIDForType(ownerSplit, ownerType)
				var ownerGUID = buildGUID(line, ownerType, extractedOwnerID, ownerSplit)
				var ownerID = convertToID(extractedOwnerID, ownerGUID, "nil", ownerType, 0)
				if (petActorType == cNPCMobType)
					temporaryPetToActorMap[petGUID] = ownerID
				if (currentResourceActor == 1)
					connectSourcePetToOwner = true
				else
					connectTargetPetToOwner = true
				ownerToConnectToPet = ownerID
			}
		}
	}
		
	var sourceID = convertToID(extractedSourceID, sourceGUID, sourceName, sourceType, sourceFlags)

	if (connectSourcePetToOwner)
		addPetOwner(sourceID, ownerToConnectToPet, petIconID)

	var sourceInstanceID = computeInstanceID(sourceID, sourceGUID, sourceType)
	
	// Have to do this before computing the target ID, so that we get the correct ID for the target of the
	// summon event.
	if ((eventType == cSummonEventType || eventType == cCreateEventType) && !isBogusPet(extractedTargetID)) {
		if (targetType == cNPCMobType)
			temporaryPetToActorMap[targetGUID] = sourceID
		ownerToConnectToPet = sourceID
		connectTargetPetToOwner = true
		petIconID = currentEventAbilityID
	}

	// Look up the source and target in our table.
	var targetID = convertToID(extractedTargetID, targetGUID, targetName, targetType, targetFlags)
	
	// Connect the pet to its owner now that we have the final IDs
	if (connectTargetPetToOwner)
		addPetOwner(targetID, ownerToConnectToPet, petIconID)
			
	var targetInstanceID = computeInstanceID(targetID, targetGUID, targetType)
	
	var tupleID = tupleIDForSourceTargetAndAbility(sourceID, targetID, abilityID)
	
	var supportedSourceID = sourceID
	if (eventType == cDamageEventType && currentEventAbilityID && logVersion >= 7) {
		var isSupportDamage = isSupportDamageAbility(currentEventAbilityID)
		if (isSupportDamage) {
			var assignedSourceID = assignSourceForSupportAbility(sourceID, currentEventAbilityID, timeFromStart)
			if (assignedSourceID != sourceID) {
				eventType = cDamageSupportEventType
				tupleID = tupleIDForSourceTargetAndAbility(assignedSourceID, targetID, abilityID)
				sourceID = assignedSourceID
				sourceInstanceID = 0
				sourceRaidMarker = 0
				sourceType = cPlayerMobType
			}
		}
	}
	
	var instanceString = ''
	if (sourceInstanceID || targetInstanceID) {
		instanceString += '.' + sourceInstanceID
		if (targetInstanceID)
			instanceString += '.' + targetInstanceID
	}

	// If the ID conversion turned us into pets, update our type now to avoid confusion.
	if (sourceID)
		sourceType = actorsIDMap[sourceID-1]['type']
	if (targetID)
		targetType = actorsIDMap[targetID-1]['type']
	
	// IMPORTANT: FROM HERE ON, GUARDIANS ARE NOW PETS INSTEAD OF NPCS.
	// This is relevant to not confuse the next check when DKs use Death Pact on their ghouls.

	// Mobs like the "Beast of Nightmares" show up as friendly to those
	// who can't damage it. Treat NPCs as enemy participants if
	// we see them take or receive damage from a friendly pet/player.
	// We just assume that an NPC is incapable of being involved in friendly fire,
	// but can revisit this code if that assumption turns out to be false.
	if ((eventType == cDamageEventType || eventType == cDamageSupportEventType || eventType == cDamageTickEventType) && sourceID && targetID && sourceHostility == COMBATLOG_OBJECT_REACTION_FRIENDLY && targetHostility == COMBATLOG_OBJECT_REACTION_FRIENDLY &&
		!isPrismaticCrystalOrSoulEffigy(extractedTargetID)) {
		if (sourceType == cNPCMobType && targetType != cNPCMobType)
			sourceHostility = COMBATLOG_OBJECT_REACTION_HOSTILE
		if (targetType == cNPCMobType && sourceType != cNPCMobType)
			targetHostility = COMBATLOG_OBJECT_REACTION_HOSTILE
	}
	
	// Prismatic Crystals can only be targeted by the mage.
	if (sourceType == cPlayerMobType && isPrismaticCrystalOrSoulEffigy(extractedTargetID))
		targetHostility = sourceHostility

	var timeAndTypeEventString = timeFromStart + cSeparatorCharacter + eventType
	var tupleAndHostilityString = cSeparatorCharacter + tupleID + instanceString + cSeparatorCharacter + sourceHostility + cSeparatorCharacter + targetHostility
	var markerAndResourceString = ''
	
	var sourceRaidMarker = raidMarkerForFlags(sourceRaidFlags)
	var targetRaidMarker = raidMarkerForFlags(targetRaidFlags)
	if (sourceRaidMarker || targetRaidMarker) {
		markerAndResourceString += cSeparatorCharacter + "M" + sourceRaidMarker + "." + targetRaidMarker
	}
	
	var playerHittingEnemy = targetHostility != COMBATLOG_OBJECT_REACTION_FRIENDLY && sourceHostility == COMBATLOG_OBJECT_REACTION_FRIENDLY && isValidFriendlyCombatant(sourceType, extractedSourceID)
	var enemyHittingPlayer = sourceHostility != COMBATLOG_OBJECT_REACTION_FRIENDLY && targetHostility == COMBATLOG_OBJECT_REACTION_FRIENDLY && isValidFriendlyCombatant(targetType, extractedTargetID)
	
	var eventContinuesCombat = false
	
	if (eventTypeString == "SWING_DAMAGE" || eventTypeString == "SWING_MISSED") {
		// FIXME: This code duplication sucks. It is slightly different than the damage case though.
		var damageEventType = determineDamageEventType(restOfEventLine, startingIndex)
		
		eventContinuesCombat = sourceID && targetID && damageEventType != cImmuneDamageEventType && (playerHittingEnemy || enemyHittingPlayer)
		
		if (eventContinuesCombat && !inCombat && (!lastEncounterEndTime || ((timeFromStart - 3000) >= lastEncounterEndTime))) {
			if (!synthesizeEncounterStartIfNeeded(timeFromStart, currTime, scanningOnly, extractedSourceID, extractedTargetID))
				enterCombat(timeFromStart, scanningOnly)
			
			// Get our instance information re-cached.
			computeInstanceID(sourceID, sourceGUID, sourceType)
			computeInstanceID(targetID, targetGUID, targetType)
			
			// Rebuild the output string, getting rid of any false instance IDs from a previous combat. We're guaranteed since this is the first event of combat that
			// the instance IDs don't exist.
			tupleAndHostilityString = cSeparatorCharacter + tupleID + cSeparatorCharacter + sourceHostility + cSeparatorCharacter + targetHostility
		}
	} else if (inCombat && !advancedCombatLogWarningShowing && !advancedCombatLogging && sourceType == cPlayerMobType && logVersion >= 5 && eventTypeString == "SPELL_CAST_SUCCESS" && currentResourceActor == "0000000000000000") {
		badEventCount++
		if (badEventCount >= 25) {
			advancedCombatLogWarningShowing = true
			setWarningText("Advanced Combat Logging is not enabled. Combat Replay will be non-functional. This log will also be ineligible for rankings.")
		}
	}
	
	if (hasResources) {
		if (logVersion >= 5) {
			markerAndResourceString += cSeparatorCharacter + "R" + currentResourceActor + cSeparatorCharacter + currentHitPoints + cSeparatorCharacter + currentMaxHitPoints + cSeparatorCharacter + currentAttackPower + cSeparatorCharacter + 
							 		currentSpellPower + cSeparatorCharacter + (logVersion >= 11 ? currentArmor : currentResolve) + cSeparatorCharacter + currentResourceType + cSeparatorCharacter + currentResourceAmount + cSeparatorCharacter + currentMaxResourceAmount
			if (logVersion >= 8 && currentResourceCost != '' && currentResourceCost != '0')
				markerAndResourceString += cSeparatorCharacter + "C" + currentResourceCost
			markerAndResourceString += cSeparatorCharacter + currentItemLevel
		} else
			markerAndResourceString += cSeparatorCharacter + "R" + currentResourceActor + cSeparatorCharacter + currentHitPoints + cSeparatorCharacter + currentAttackPower + cSeparatorCharacter + 
							 		currentSpellPower + cSeparatorCharacter + currentResourceType + cSeparatorCharacter + currentResourceAmount

		if (numResourceArgs >= 8) {
			markerAndResourceString += cSeparatorCharacter + "P" + currentXPosition + cSeparatorCharacter + currentYPosition + (logVersion >= 13 ? cSeparatorCharacter + currentMapID : '' ) + (logVersion >= 11 ? cSeparatorCharacter + currentFacing : '')
			if (eventTypeString == "SWING_DAMAGE") {
				// We are SWING_DAMAGE with a defined actor. This means we don't really represent the actual damage. SWING_DAMAGE_LANDED will handle that and
				// will come later. Mutate our type into a "cast" unless we are a multistrike. We consider multistrike to be a "proc" off the original swing,
				// so we don't want to generate an additional cast event.
				if (logVersion >= 5 && restOfEventLine[startingIndex + 9] == "1")
					return true
				eventType = cAbilityUseEventType
				timeAndTypeEventString = timeFromStart + cSeparatorCharacter + eventType
			}
		}
	} else if (eventTypeString == "SWING_DAMAGE") {
		// We are SWING_DAMAGE in normal combat logging (not advanced). Similar to SWING_MISSED in both normal/advanced combat logging, we want to create two events.
		// One should be for the swing, and the other should be for the damage. As with advanced combat logging, we want to ignore multistrikes.
		if (logVersion == 1 || restOfEventLine[startingIndex + 9] != "1") {
			eventsString += timeFromStart + cSeparatorCharacter + cAbilityUseEventType + tupleAndHostilityString + markerAndResourceString + "\n"
			lastAssignedEventID++
		}	
		// Now fall through and let the actual damage happen.
	} else if (eventTypeString == "SWING_MISSED") {
		// FIXME: What about multistrikes that "miss"
		var damageEventType = determineDamageEventType(restOfEventLine, startingIndex)
		if (advancedCombatLogging && (damageEventType == cAbsorbDamageEventType || damageEventType == cBlockDamageEventType)) {
			// This is just like a SWING_DAMAGE that hit. It's going to get a corresponding SWING_DAMAGE_LANDED event.
			eventType = cAbilityUseEventType
			timeAndTypeEventString = timeFromStart + cSeparatorCharacter + eventType
		} else {
			// Fire two events. One should be for the swing, and the other should be for the miss.
			eventsString += timeFromStart + cSeparatorCharacter + cAbilityUseEventType + tupleAndHostilityString + markerAndResourceString + "\n"
			lastAssignedEventID++
			
			// Now fall through and let the actual miss happen.
		}
	}
	
	// Output the event. This consists of:
	// [delta in ms from previous event],[event type],[tupleID] - And then whatever else is needed.
	var outputEventString = timeAndTypeEventString + tupleAndHostilityString + markerAndResourceString

	// The parseInts you see in the code below are designed to avoid entraining the ActionScript strings. By converting to int and back to a WebKit
	// string, we avoid leaking tons of memory. This is annoyingly fragile.
	if (eventType == cDamageEventType || eventType == cDamageSupportEventType || eventType == cDamageTickEventType) {
		// Put miss/hit/crit/glancing/dodge/parry/immune all together into one type as the next field.
		var damageEventType = determineDamageEventType(restOfEventLine, startingIndex)
		
		if (currentEventIsEnvironmental)
			startingIndex++

		var restOfDamageOutputString = ''
		
		if (eventType == cDamageSupportEventType)
			restOfDamageOutputString += cSeparatorCharacter + supportedSourceID
			
		var overkill = -1
		if (damageEventType == cAbsorbDamageEventType || damageEventType == cBlockDamageEventType) {
			var unmitigated = 0
			var indexForMissAmount = logVersion >= 5 ? (logVersion >= 7 ? startingIndex + 2 : startingIndex + 3) : startingIndex + 1 // Multistrike field gone in Legion
			var damageString = "0"
			if (logVersion >= 12) {
				// Work around bug where full blocks don't have the raw damage value.
				unmitigated = indexForMissAmount + 1 >= restOfEventLine.length ? parseInt(restOfEventLine[indexForMissAmount]) : parseInt(restOfEventLine[indexForMissAmount + 1])
				if (isNaN(unmitigated))
					throw line;
				if (unmitigated)
					unmitigated = adjustUnmitigatedDamageValue(unmitigated, sourceID, sourceInstanceID, targetID, targetInstanceID, currentEventAbilityID, currentEventAbilityType, true, false, timeFromStart)
				damageString += "/" + unmitigated
			}
			if (damageEventType == cAbsorbDamageEventType)
				restOfDamageOutputString += cSeparatorCharacter + damageEventType + cSeparatorCharacter + damageString + cSeparatorCharacter + parseInt(restOfEventLine[indexForMissAmount])
			else if (damageEventType == cBlockDamageEventType) {
				var blocked = parseInt(restOfEventLine[indexForMissAmount])
				if (blocked && logVersion >= 12)
					blocked = adjustUnmitigatedDamageValue(blocked, sourceID, sourceInstanceID, targetID, targetInstanceID, currentEventAbilityID, currentEventAbilityType, false, false, timeFromStart)
				restOfDamageOutputString += cSeparatorCharacter + damageEventType + cSeparatorCharacter + damageString + cSeparatorCharacter + "0" + cSeparatorCharacter + blocked
			}
			if (logVersion >= 5 && logVersion < 11 && restOfEventLine[startingIndex + 2] == "1") {
				// Multistrike happened on this miss. Set the bit for it.
				if (damageEventType == cAbsorbDamageEventType)
					restOfDamageOutputString += cSeparatorCharacter + "0" // First add in block to make absorb/block the same.
				
				// Now add in overkill of -1 and a multistrike of 1.
				restOfDamageOutputString += cSeparatorCharacter + "-1" + cSeparatorCharacter + "1"
			}
		} else if (!currentEventIsMiss) {
			var amount = parseInt(restOfEventLine[startingIndex])
			
			var baseOffset = 0
			var unmitigated = 0
			if (logVersion >= 12) {
				unmitigated = parseInt(restOfEventLine[startingIndex + 1])
				if (isNaN(unmitigated))
					throw line;
				baseOffset++
			}
						
			overkill = parseInt(restOfEventLine[startingIndex + baseOffset + 1])
			
			if (unmitigated)
				unmitigated = adjustUnmitigatedDamageValue(unmitigated, sourceID, sourceInstanceID, targetID, targetInstanceID, currentEventAbilityID, currentEventAbilityType, true, overkill >= 0, timeFromStart)
				
			//var school = restOfEventLine[startingIndex + 2] // FIXME: Safe to ignore this? Can the damage type really differ from the school type of the spell?
			//var resisted = restOfEventLine[startingIndex + 3] // FIXME: Safe to ignore? Resists are gone from the game.
			var blocked = parseInt(restOfEventLine[startingIndex + baseOffset + 4])
			if (blocked && logVersion >= 12)
				blocked = adjustUnmitigatedDamageValue(blocked, sourceID, sourceInstanceID, targetID, targetInstanceID, currentEventAbilityID, currentEventAbilityType, false, overkill >= 0, timeFromStart)
				
			var absorbed = parseInt(restOfEventLine[startingIndex + baseOffset + 5])
			var multistrike = logVersion >= 5 && logVersion <= 6 && restOfEventLine[startingIndex + baseOffset + 9] == "1" ? 1 : 0

			// Treat a partial block as different types. We don't really distinguish between partial and full blocks, since we want to compute the
			// average damage taken over # of blocks. Full blocks could have been a crit, but oh we'll just lump 'em in with normal hits. Just ignore
			// blocked glancing blows. Nobody cares what their glancing avg dmg was so it's just a simplification we can make.
			if (blocked != 0 && damageEventType != cGlancingDamageEventType)
				damageEventType = (damageEventType == cCritDamageEventType) ? cBlockCritDamageEventType : cBlockDamageEventType
	
			var amountString = amount
			if (logVersion >= 12)
				amountString += "/" + unmitigated

			restOfDamageOutputString += cSeparatorCharacter + damageEventType + cSeparatorCharacter + amountString

			// Add in absorbed, blocked, overkill but stop once none of the following are present.
			if (blocked != 0 || absorbed != 0 || overkill != -1 || multistrike != 0) {
				restOfDamageOutputString += cSeparatorCharacter + absorbed
				if (blocked != 0 || overkill != -1 || multistrike != 0) {
					restOfDamageOutputString += cSeparatorCharacter + blocked
					if (overkill != -1 || multistrike != 0) {
						restOfDamageOutputString += cSeparatorCharacter + overkill
						if (multistrike != 0)
							restOfDamageOutputString += cSeparatorCharacter + multistrike
					}
				}
			}
		} else {
			restOfDamageOutputString += cSeparatorCharacter + damageEventType
			if (logVersion >= 5 && restOfEventLine[startingIndex + 2] == "1") {
				// Multistrike miss. We need to make sure that bit is set. Add in default values for absorbed/blocked/overkill, and then put multistrike of 1 at the end.
				restOfDamageOutputString += cSeparatorCharacter + "0" + cSeparatorCharacter + "0" + cSeparatorCharacter + "0" + cSeparatorCharacter + "-1" + cSeparatorCharacter + "1"
			}
		}
		
		eventContinuesCombat = sourceID && targetID && !currentEventIsTick && damageEventType != cImmuneDamageEventType && (playerHittingEnemy || enemyHittingPlayer)

		if (eventContinuesCombat && !inCombat && (!lastEncounterEndTime || ((timeFromStart - 3000) >= lastEncounterEndTime))) {
			enterCombat(timeFromStart, scanningOnly)
			
			// Get our instance information re-cached.
			computeInstanceID(sourceID, sourceGUID, sourceType)
			computeInstanceID(targetID, targetGUID, targetType)
			
			// Rebuild the output string, getting rid of any false instance IDs from a previous combat. We're guaranteed since this is the first event of combat that
			// the instance IDs don't exist.
			outputEventString = timeAndTypeEventString + cSeparatorCharacter + tupleID + cSeparatorCharacter + sourceHostility + cSeparatorCharacter + targetHostility + markerAndResourceString
		}

		if (eventContinuesCombat && overkill >= 0 && targetID > 0)
			overkillTable[targetID] = timeFromStart
		
		// Now add in the rest of the damage output string.
		outputEventString += restOfDamageOutputString
	} else if (eventType == cHealingEventType || eventType == cHealingTickEventType) {
		// Heals are just normal or crit (and then ticks or not)
		var healingEventType = determineHealingEventType(restOfEventLine, startingIndex)
		outputEventString += cSeparatorCharacter + healingEventType
		
		var baseOffset = 0
		var unmitigated = 0
		if (logVersion >= 11) {
			unmitigated = parseInt(restOfEventLine[startingIndex + 1])
			if (isNaN(unmitigated))
				throw line;
			baseOffset++
		}
			
		var amount = parseInt(restOfEventLine[startingIndex])
		var overheal = parseInt(restOfEventLine[startingIndex + baseOffset + 1])
		var absorbed = parseInt(restOfEventLine[startingIndex + baseOffset + 2])
		var multistrike = logVersion >= 5 && logVersion <= 6 && restOfEventLine[startingIndex + baseOffset + 4] == "1" ? 1 : 0

		outputEventString += cSeparatorCharacter + amount
		
		// Add in overhealing and absorbed, but only if they are present.
		if (overheal != 0 || absorbed != 0 || multistrike != 0) {
			outputEventString += cSeparatorCharacter + overheal
			if (absorbed != 0 || multistrike != 0) {
				outputEventString += cSeparatorCharacter + absorbed
				if (multistrike != 0)
					outputEventString += cSeparatorCharacter + multistrike
			}
		}
	} else if (isBuffDebuffEventType(eventType)) {
		if (logVersion >= 7) {
			if (eventType == cApplyBuffEventType) {
				var isSupport = isSupportBuff(currentEventAbilityID)
				if (isSupport)
					applySupportAbility(sourceID, targetID, currentEventAbilityID, timeFromStart)
			} else if (eventType == cRemoveBuffEventType) {
				var isSupport = isSupportBuff(currentEventAbilityID)
				if (isSupport)
					removeSupportAbility(sourceID, targetID, currentEventAbilityID, timeFromStart)
			}
		}
		
		var forceZeroAbsorb = false
		if (logVersion >= 12) {
			var info = auraUnmitigatedDamageInfo(sourceID, currentEventAbilityID, currentEventAuraStack)
			if (info) {
				var key = targetID + '-' + targetInstanceID + (info.debuffSourceID ? '-' + sourceID : '')
				if (unmitigatedDamageMultipliers[key] === undefined)
					unmitigatedDamageMultipliers[key] = new Array()
				var found = false
				for (var i = 0; i < unmitigatedDamageMultipliers[key].length; ++i) {
					if (unmitigatedDamageMultipliers[key][i].key == currentEventAbilityID) {
						found = true
						if (eventType == cRemoveBuffEventType || eventType == cRemoveDebuffEventType)
							unmitigatedDamageMultipliers[key][i].expired = timeFromStart
						else
							unmitigatedDamageMultipliers[key][i] = info
						break
					}
				}	
				if (!found && eventType != cRemoveBuffEventType && eventType != cRemoveDebuffEventType) {
					// Physical is 1, Magical is 2.
					unmitigatedDamageMultipliers[key].push(info)
				}
			}
			
			if (currentEventAbilityID == cGuardAbilityID) {
				if (eventType == cApplyBuffEventType) {
					guardTracking[targetID] = { timestamp: timeFromStart, expired: 0, tuple: tupleID, remaining: 0 }
				} else if (eventType == cRemoveBuffEventType) {
					if (guardTracking[targetID] !== undefined) {
						if ((timeFromStart - guardTracking[targetID].timestamp) < 7950)
							forceZeroAbsorb = true
						guardTracking[targetID].expired = timeFromStart
						guardTracking[targetID].remaining =  parseInt(restOfEventLine[startingIndex + 1])
					}
				}	
			}		
		}

		var absorb
		if (startingIndex + 1 < restOfEventLine.length) {
			absorb = forceZeroAbsorb ? 0 : parseInt(restOfEventLine[startingIndex + 1])
			outputEventString += cSeparatorCharacter + absorb
		}
		
		if (absorb !== undefined && (eventType == cApplyBuffEventType || eventType == cApplyDebuffEventType || eventType == cRefreshBuffEventType || eventType == cRefreshDebuffEventType)) {
			if (!absorbsTracking[tupleID])
				absorbsTracking[tupleID] = new Array()
			var previousAbsorb = absorbsTracking[tupleID][targetInstanceID]
			if (previousAbsorb !== undefined && (eventType == cRefreshBuffEventType || eventType == cRefreshDebuffEventType) && absorb < previousAbsorb)
				outputEventString += cSeparatorCharacter + (previousAbsorb - absorb)
			absorbsTracking[tupleID][targetInstanceID] = absorb
		} else if (absorb !== undefined && (eventType == cRemoveBuffEventType || eventType == cRemoveDebuffEventType)) {
			if (absorbsTracking[tupleID] !== undefined) {
				var previousAbsorb = absorbsTracking[tupleID][targetInstanceID]
				if (previousAbsorb !== undefined)
					outputEventString += cSeparatorCharacter + previousAbsorb
				delete absorbsTracking[tupleID][targetInstanceID]
			}
		}
	} else if (eventType == cDeathEventType || eventType == cDestroyedEventType) {
		eventContinuesCombat = (targetHostility != COMBATLOG_OBJECT_REACTION_FRIENDLY)
		if (targetID > 0) {
			var overkillTime = overkillTable[targetID]
			delete overkillTable[targetID]
			if (overkillTime !== undefined && (timeFromStart - overkillTime) < 1000)
				eventContinuesCombat = true
		}
	} else if (eventType == cInstakillEventType) {
		eventContinuesCombat = (targetHostility == COMBATLOG_OBJECT_REACTION_FRIENDLY) && (sourceHostility != COMBATLOG_OBJECT_REACTION_FRIENDLY)
		if (eventContinuesCombat && targetID > 0)
			overkillTable[targetID] = timeFromStart
	} else if (eventType == cDrainEventType || eventType == cLeechEventType || eventType == cEnergizeEventType || eventType == cExtraAttacksEventType) {
		// All of these can just pass everything as is (drain, leech take amount drained, power type, amount gained; energize just does amount gained and power type;
		// and extra attacks is just the number of attacks gained. All are simple integers, so we parse as-is. 
		// In Legion, drain, energize and leech all have the max amount field included as well.
		if (logVersion < 8 && eventType == cEnergizeEventType && (restOfEventLine.length - startingIndex) >= 3)
			logVersion = 8 // Energize added a max resource amount in Legion, so this is a way to detect Legion reliably.
		for (var i = startingIndex; i < restOfEventLine.length; ++i) {
			outputEventString += cSeparatorCharacter + parseInt(restOfEventLine[i])
		}
	} else if (eventType == cInterruptEventType || eventType == cDispelEventType || eventType == cStealEventType || eventType == cAuraBrokenEventType) {
		// Interrupts, dispels and steals all have the guid, name and school of the spell being interrupted, dispelled or stolen. Aura broken events
		// may have this information or may not (if say falling damage broke the aura). Dispels and steals also mention what type of aura was stolen
		// e.g., a buff or a debuff.
		if (eventType == cAuraBrokenEventType && (restOfEventLine[startingIndex] == "BUFF" || restOfEventLine[startingIndex] == "DEBUFF"))
			outputEventString += cSeparatorCharacter + (restOfEventLine[startingIndex] == "BUFF" ? 1 : 0)
		else {
			currentEventAbilityID = parseInt(restOfEventLine[startingIndex])
			indexWithinLine = startingIndex
			currentEventAbilityName = restOfEventLine[++indexWithinLine]
			currentEventAbilityType = parseInt(restOfEventLine[++indexWithinLine], 16)
			abilityID = abilityIDForCurrentEvent()
			outputEventString += cSeparatorCharacter + abilityID
			
			// For interrupts we're done, but for the others we need to find out if this is a buff or debuff.
			startingIndex = ++indexWithinLine
			if (startingIndex < restOfEventLine.length)
				outputEventString += cSeparatorCharacter + (restOfEventLine[startingIndex] == "BUFF" ? 1 : 0)
		}	
	} else if (eventType == cAbsorbedEventType) {
		startingIndex = 1
		var attackerGUIDStr = restOfEventLine[startingIndex]
		indexWithinLine = startingIndex
		var attackerName = restOfEventLine[++indexWithinLine]
		var attackerFlags = parseInt(restOfEventLine[++indexWithinLine], 16)
		var attackerRaidFlags = parseInt(restOfEventLine[++indexWithinLine], 16)
		var attackerSplit = attackerGUIDStr.split('-')
		var attackerType = convertToMobType(attackerSplit[0])
		var extractedAttackerID = extractIDForType(attackerSplit, attackerType)
		var attackerGUID = buildGUID(line, attackerType, extractedAttackerID, attackerSplit)
		var attackerID = convertToID(extractedAttackerID, attackerGUID, attackerName, attackerType, attackerFlags)
		var absorbAmount = parseInt(restOfEventLine[absorbHasAttackerAbility ? 19 : 16])
		
		var attackerHostility = (COMBATLOG_OBJECT_REACTION_MASK & attackerFlags)
		var attackerInstanceID = computeInstanceID(attackerID, attackerGUID, attackerType)
		var attackerRaidMarker = raidMarkerForFlags(attackerRaidFlags)
		
		if (currentEventAbilityID == cStaggerAbilityID && guardTracking[targetID] !== undefined) {
			// Can just mutate this event from Stagger to Guard.
			if (!guardTracking[targetID].expired || guardTracking[targetID].remaining >= absorbAmount) {
				var newTupleAndHostilityString = cSeparatorCharacter + guardTracking[targetID].tuple + instanceString + cSeparatorCharacter + sourceHostility + cSeparatorCharacter + targetHostility
				outputEventString = timeAndTypeEventString + newTupleAndHostilityString + markerAndResourceString
				if (guardTracking[targetID].expired)
					guardTracking[targetID].remaining -= absorbAmount
			} else if (guardTracking[targetID].remaining > 0) {
				var newTupleAndHostilityString = cSeparatorCharacter + guardTracking[targetID].tuple + instanceString + cSeparatorCharacter + sourceHostility + cSeparatorCharacter + targetHostility
				var newOutputEventString = timeAndTypeEventString + newTupleAndHostilityString + markerAndResourceString
				newOutputEventString += constructAbsorbedString(restOfEventLine, indexWithinLine, attackerID, attackerInstanceID, attackerHostility, attackerRaidMarker, guardTracking[targetID].remaining, absorbHasAttackerAbility, extractedAttackerID, school)
				eventsString += newOutputEventString + "\n"
				lastAssignedEventID++
				absorbAmount -= guardTracking[targetID].remaining
				guardTracking[targetID].remaining = 0
			}
		}
		
		outputEventString += constructAbsorbedString(restOfEventLine, indexWithinLine, attackerID, attackerInstanceID, attackerHostility, attackerRaidMarker, absorbAmount, absorbHasAttackerAbility, extractedAttackerID, school)

	} else if (eventType == cHealAbsorbedEventType) {
		// 9/15 16:06:48.575  SPELL_HEAL_ABSORBED,Player-11456-80F5806E,"Absorb Shield Caster",0x511,0x0,Player-11456-80F42CF4,"Absorb Shield Target",0x512,0x0,219521,"Shadow Covenant",0x20,0000000000000000,"Heal Caster",0x512,0x0,139,"Renew",0x2,13856
		var healerGUIDStr = restOfEventLine[startingIndex]
		indexWithinLine = startingIndex
		var healerName = restOfEventLine[++indexWithinLine]
		var healerFlags = parseInt(restOfEventLine[++indexWithinLine], 16)
		var healerRaidFlags = parseInt(restOfEventLine[++indexWithinLine], 16)
		
		var healerSplit = healerGUIDStr.split('-')
		var healerType = convertToMobType(healerSplit[0])
		var extractedHealerID = extractIDForType(healerSplit, healerType)
		var healerGUID = buildGUID(line, healerType, extractedHealerID, healerSplit)
		var healerID = convertToID(extractedHealerID, healerGUID, healerName, healerType, healerFlags)
		
		currentEventAbilityID = parseInt(restOfEventLine[++indexWithinLine])
		currentEventAbilityName = restOfEventLine[++indexWithinLine]
		currentEventAbilityType = parseInt(restOfEventLine[++indexWithinLine], 16)
		abilityID = abilityIDForCurrentEvent()
			
		var absorbAmount = parseInt(restOfEventLine[++indexWithinLine])
		
		var healerHostility = (COMBATLOG_OBJECT_REACTION_MASK & healerFlags)
		var healerInstanceID = computeInstanceID(healerID, healerGUID, healerType)
		var healerRaidMarker = raidMarkerForFlags(healerRaidFlags)

		outputEventString += cSeparatorCharacter + healerID + cSeparatorCharacter + healerInstanceID + cSeparatorCharacter + healerHostility + cSeparatorCharacter + healerRaidMarker + cSeparatorCharacter + absorbAmount + cSeparatorCharacter + abilityID
	}

	if (eventContinuesCombat && inCombat)
		endCombatEventTime = timeFromStart
	
	if (outputEventString.indexOf('|NaN|') != -1 || outputEventString.indexOf('|undefined|') != -1)
		throw line

	eventsString += outputEventString + "\n"
	endTime = currTime

	lastAssignedEventID++
	
	if (eventType == cDeathEventType && inSynthesizedEncounter)
		synthesizeEncounterEndIfNeeded(timeFromStart, currTime, scanningOnly, extractedTargetID, targetType)

	return true
}