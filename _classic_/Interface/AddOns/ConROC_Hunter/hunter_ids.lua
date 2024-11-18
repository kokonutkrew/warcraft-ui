local ConROC_Hunter, ids = ...;

--General
	ids.Racial = {
		Shadowmeld = 20580,
	}
	ids.Spec = {
		BeastMastery = 1,
		Marksmanship = 2,
		Survival = 3,
	}
--Beast Mastery
	ids.BM_Ability = {
		AspectoftheBeast = 13161,	
		AspectoftheCheetah = 5118,
		AspectoftheHawkRank1 = 13165,
		AspectoftheHawkRank2 = 14318,
		AspectoftheHawkRank3 = 14319,
		AspectoftheHawkRank4 = 14320,
		AspectoftheHawkRank5 = 14321,
		AspectoftheHawkRank6 = 14322,		
		AspectoftheMonkey = 13163,
		AspectofthePack = 13159,
		AspectoftheWildRank1 = 20043,	
		AspectoftheWildRank2 = 20190,		
		BeastLore = 1462,
		BestialWrath = 19574,
		EagleEye = 6197,
		CallPet = 863,
		FeedPet = 6991,
		EyesoftheBeast = 1002,
		Intimidation = 19577,
		MendPetRank1 = 136,
		MendPetRank2 = 3111,
		MendPetRank3 = 3661,
		MendPetRank4 = 3662,
		MendPetRank5 = 13542,
		MendPetRank6 = 13543,
		MendPetRank7 = 13544,
		ScareBeastRank1 = 1513,
		ScareBeastRank2 = 14326,
		ScareBeastRank3 = 14327,		
	}
	ids.BM_Talent = {
		ImprovedAspectoftheHawk = 1,
		EnduranceTraining = 2,
		
		ImprovedEyesoftheBeast = 3,
		ImprovedAspectoftheMonkey = 4,
		ThickHide = 5,
		ImprovedRevivePet = 6,
		
		Pathfinding = 7,
		BestialSwiftness = 8,
		UnleashedFury = 9,
		
		ImprovedMendPet = 10,
		Ferocity = 11,
		
		SpiritBond = 12,
		Intimidation = 13,
		BestialDiscipline = 14,
		
		Frenzy = 15,
		
		BestialWrath = 16,
	}
--Marksmanship
	ids.MM_Ability = {
		AimedShotRank1 = 19434,
		AimedShotRank2 = 20900,
		AimedShotRank3 = 20901,
		AimedShotRank4 = 20902,
		AimedShotRank5 = 20903,
		AimedShotRank6 = 20904,
		ArcaneShotRank1 = 3044,
		ArcaneShotRank2 = 14281,
		ArcaneShotRank3 = 14282,	
		ArcaneShotRank4 = 14283,
		ArcaneShotRank5 = 14284,
		ArcaneShotRank6 = 14285,
		ArcaneShotRank7 = 14286,
		ArcaneShotRank8 = 14287,		
		AutoShot = 75,
		ConcussiveShot = 5116,
		DistractingShotRank1 = 20736,
		DistractingShotRank2 = 14274,
		DistractingShotRank3 = 15629,
		DistractingShotRank4 = 15630,		
		DistractingShotRank5 = 15631,
		DistractingShotRank6 = 15632,		
		Flare = 1543,
		HuntersMarkRank1 = 1130,
		HuntersMarkRank2 = 14323,	
		HuntersMarkRank3 = 14324,
		HuntersMarkRank4 = 14325,		
		MultiShotRank1 = 2643,
		MultiShotRank2 = 14288,		
		MultiShotRank3 = 14289,	
		MultiShotRank4 = 14290,		
		RapidFire = 3045,
		ScatterShot = 19503,
		ScorpidStingRank1 = 3043,
		ScorpidStingRank2 = 14275,
		ScorpidStingRank3 = 14276,	
		ScorpidStingRank4 = 14277,		
		SerpentStingRank1 = 1978,
		SerpentStingRank2 = 13549,
		SerpentStingRank3 = 13550,
		SerpentStingRank4 = 13551,
		SerpentStingRank5 = 13552,	
		SerpentStingRank6 = 13553,	
		SerpentStingRank7 = 13554,
		SerpentStingRank8 = 13555,
		TrueshotAuraRank1 = 19506,
		TrueshotAuraRank2 = 20905,
		TrueshotAuraRank3 = 20906,
		ViperStingRank1 = 3034,
		ViperStingRank2 = 14279,
		ViperStingRank3 = 14280,
		VolleyRank1 = 1510,
		VolleyRank2 = 14294,
		VolleyRank3 = 14295,
	}
	ids.MM_Talent = {
		ImprovedConcussiveShot = 1,
		Efficiency = 2,
		
		ImprovedHuntersMark = 3,
		LethalShots = 4,
		
		AimedShot = 5,
		ImprovedArcaneShot = 6,
		HawkEye = 7,
		
		ImprovedSerpentSting = 8,
		MortalShots = 9,
		
		ScatterShot = 10,
		Barrage = 11,
		ImprovedScorpidSting = 12,
		
		RangedWeaponSpecialization = 13,
		TrueshotAura = 14,
	}
--Survival
	ids.Surv_Ability = {
		CounterattackRank1 = 19306,
		CounterattackRank2 = 20909,
		CounterattackRank3 = 20910,
		Deterrence = 19263,
		DisengageRank1 = 781,
		DisengageRank2 = 14272,
		DisengageRank3 = 14273,
		ExplosiveTrapRank1 = 13813,
		ExplosiveTrapRank2 = 14316,
		ExplosiveTrapRank3 = 14317,		
		ImmolationTrapRank1 = 13795,
		ImmolationTrapRank2 = 14302,
		ImmolationTrapRank3 = 14303,
		ImmolationTrapRank4 = 14304,
		ImmolationTrapRank5 = 14305,		
		FeignDeath = 5384,
		FreezingTrapRank1 = 1499,
		FreezingTrapRank2 = 14310,	
		FreezingTrapRank3 = 14311,		
		FrostTrap = 13809,
		MongooseBiteRank1 = 1495,
		MongooseBiteRank2 = 14269,
		MongooseBiteRank3 = 14270,	
		MongooseBiteRank4 = 14271,		
		RaptorStrikeRank1 = 2973,
		RaptorStrikeRank2 = 14260,
		RaptorStrikeRank3 = 14261,
		RaptorStrikeRank4 = 14262,
		RaptorStrikeRank5 = 14263,
		RaptorStrikeRank6 = 14264,
		RaptorStrikeRank7 = 14265,
		RaptorStrikeRank8 = 14266,
		RaptorStrikeRank9 = 9,
		TrackBeasts = 1494,
		TrackDemons = 19878,
		TrackDragonkin = 19879,
		TrackElementals = 19880,
		TrackGiants = 19882,
		TrackHidden = 19885,
		TrackHumanoids = 19883,	
		TrackUndead = 19884,
		WingClipRank1 = 2974,
		WingClipRank2 = 14267,		
		WingClipRank3 = 14268,
		WyvernStingRank1 = 19386,
		WyvernStingRank2 = 24132,		
		WyvernStingRank3 = 24133,	
	}
	ids.Surv_Talent = {
		MonsterSlaying = 1,
		HumanoidSlaying = 2,
		Deflection = 3,
		
		Entrapment = 4,
		SavageStrikes = 5,
		ImprovedWingClip = 6,
		
		CleverTraps = 7,
		Survivalist = 8,
		Deterrence = 9,
		
		TrapMastery = 10,
		Surefooted = 11,
		ImprovedFeignDeath = 12,
		
		KillerInstinct = 13,
		Counterattack = 14,
		
		LightningReflexes = 15,
		
		WyvernSting = 16,
	}
--Pet
	ids.Pet = {

	}
-- Auras
	ids.Player_Buff = {
	
	}
	ids.Player_Debuff = {

	}
	ids.Target_Debuff = {
	
	}