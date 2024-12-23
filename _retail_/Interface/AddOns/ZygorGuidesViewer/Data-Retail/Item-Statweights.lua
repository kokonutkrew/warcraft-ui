local ItemScore = ZGV.ItemScore

ItemScore.rules = {
	["DEATHKNIGHT"] = {
		--PLATE is at 1 because DKs start at level 55
		[1] = { --BLOOD-TANK
			itemtypes={ TH_POLE=1, TH_AXE=1, TH_MACE=1, TH_SWORD=1, PLATE=1 },
			stats = { STRENGTH=1.37, STAMINA=0.40, VERSATILITY=0.44, DAMAGE_PER_SECOND=7.33, HASTE=0.54, MASTERY=0.45, CRIT=0.59, LIFESTEAL=-0.01, ARMOR=0.40, ATTACK_POWER=1.24, EMPTY_SOCKET_DOMINATION=0.25, EMPTY_SOCKET_PRISMATIC=0.25 },
			primary = { STRENGTH=1, AGILITY=0, INTELLECT=0 },
		},
		[2] = { --FROST-DPS
			itemtypes={ AXE=1, SWORD=1, MACE=1, PLATE=1 },
			stats = { STRENGTH=2.86, ATTACK_POWER=2.26, MASTERY=1.07, HASTE=1.19, CRIT=1.16, VERSATILITY=1.02, DAMAGE_PER_SECOND=9.99, EMPTY_SOCKET_DOMINATION=0.25, EMPTY_SOCKET_PRISMATIC=0.25, STAMINA=0.01, ARMOR=0.01 },--, DAMAGE_PER_SECOND_OFFHAND=3.54
			primary = { STRENGTH=1, AGILITY=0, INTELLECT=0 },
		},
		[3] = { --UNHOLY-DPS
			itemtypes={ TH_POLE=1, TH_AXE=1, TH_MACE=1, TH_SWORD=1, PLATE=1 },
			stats = { STRENGTH=2.84, ATTACK_POWER=2.33, MASTERY=1.14, CRIT=1.08, HASTE=1.01, VERSATILITY=1.03, DAMAGE_PER_SECOND=13.90, EMPTY_SOCKET_DOMINATION=0.25, EMPTY_SOCKET_PRISMATIC=0.25, STAMINA=0.01, ARMOR=0.01 },
			primary = { STRENGTH=1, AGILITY=0, INTELLECT=0 },
		},
		[5] = { --BEFORE CHOOSING SPEC
			itemtypes={ TH_POLE=1, TH_AXE=1, TH_MACE=1, TH_SWORD=1, AXE=1, SWORD=1, MACE=1, PLATE=1 },
			stats = { STRENGTH=2.86, ATTACK_POWER=2.26, MASTERY=1.07, HASTE=1.19, CRIT=1.16, VERSATILITY=1.02, DAMAGE_PER_SECOND=9.99, ARMOR=0.01, EMPTY_SOCKET_DOMINATION=0.25, EMPTY_SOCKET_PRISMATIC=0.25, STAMINA=0.01 },--, DAMAGE_PER_SECOND_OFFHAND=3.54
			primary = { STRENGTH=1, AGILITY=0, INTELLECT=0 },
		},
	},
	["DEMONHUNTER"] = {
		[1] = { -- HAVOC-DPS
			itemtypes={ WARGLAIVE=1, FIST=1, AXE=1, SWORD=1, LEATHER=1 },
			stats = { AGILITY=2.66, ATTACK_POWER=2.57, HASTE=1.12, CRIT=0.85, VERSATILITY=0.89, MASTERY=0.77, DAMAGE_PER_SECOND=13.06, EMPTY_SOCKET_DOMINATION=0.25, EMPTY_SOCKET_PRISMATIC=0.25, STAMINA=0.01, ARMOR=0.01 },--, DAMAGE_PER_SECOND_OFFHAND=2.39
			primary = { STRENGTH=0, AGILITY=1, INTELLECT=0 },
		},
		[2] = { -- VENGEANCE-TANK
			itemtypes={ WARGLAIVE=1, FIST=1, AXE=1, SWORD=1, LEATHER=1 },
			stats = {AGILITY=1.29, ATTACK_POWER=1.30, STAMINA=0.40, HASTE=1.07, VERSATILITY=0.49, MASTERY=0.42, CRIT=0.55, DAMAGE_PER_SECOND=6.67, LIFESTEAL=0.01, ARMOR=0.40, EMPTY_SOCKET_DOMINATION=0.25, EMPTY_SOCKET_PRISMATIC=0.25 },--, DAMAGE_PER_SECOND_OFFHAND=1.09
			primary = { STRENGTH=0, AGILITY=1, INTELLECT=0 },
		},
		[5] = { --BEFORE CHOOSING SPEC
			itemtypes={ WARGLAIVE=1, FIST=1, AXE=1, SWORD=1, LEATHER=1 },
			stats = { AGILITY=2.66, ATTACK_POWER=2.57, HASTE=1.12, CRIT=0.85, VERSATILITY=0.89, MASTERY=0.77, DAMAGE_PER_SECOND=13.06, ARMOR=0.01, EMPTY_SOCKET_DOMINATION=0.25, EMPTY_SOCKET_PRISMATIC=0.25, STAMINA=0.01 },--, DAMAGE_PER_SECOND_OFFHAND=2.39
			primary = { STRENGTH=0, AGILITY=1, INTELLECT=0 },
		},
	},
	["DRUID"] = {
		[1] = { --BALANCE-DPS
			itemtypes={ DAGGER=1, MACE=1, MISCARM=1, TH_MACE=1, TH_STAFF=1, TH_POLE=1, CLOTH=-27, LEATHER=1 },
			stats = { INTELLECT=2.88, SPELL_POWER=2.75, HASTE=1.09, CRIT=0.98, VERSATILITY=0.93, MASTERY=1.04, EMPTY_SOCKET_DOMINATION=0.25, EMPTY_SOCKET_PRISMATIC=0.25, STAMINA=0.01, ARMOR=0.01 },
			primary = { STRENGTH=0, AGILITY=0, INTELLECT=1 },
		},
		[2] = { --FERAL-DPS
			itemtypes={ TH_POLE=1, TH_STAFF=1, TH_MACE=1, CLOTH=-27, LEATHER=1 },
			stats = { AGILITY=2.78, ATTACK_POWER=2.64, HASTE=1.01, CRIT=1.07, VERSATILITY=1.00, MASTERY=1.13, DAMAGE_PER_SECOND=15.84, EMPTY_SOCKET_DOMINATION=0.25, EMPTY_SOCKET_PRISMATIC=0.25, STAMINA=0.01, ARMOR=0.01 },
			primary = { STRENGTH=0, AGILITY=1, INTELLECT=0 },
		},
		[3] = { --GUARDIAN-TANK
			itemtypes={ TH_POLE=1, TH_STAFF=1, TH_MACE=1, CLOTH=-27, LEATHER=1 },
			stats = { AGILITY=1.62, STAMINA=0.40, ATTACK_POWER=1.60, HASTE=0.71, MASTERY=0.53, VERSATILITY=0.59, CRIT=0.58, DAMAGE_PER_SECOND=9.63, LIFESTEAL=0.01, ARMOR=0.40, EMPTY_SOCKET_DOMINATION=0.25, EMPTY_SOCKET_PRISMATIC=0.25 },
			primary = { STRENGTH=0, AGILITY=1, INTELLECT=0 },
		},
		[4] = { --RESTORATION-HEALER
			itemtypes={ TH_POLE=1, DAGGER=1, MACE=1, MISCARM=1, TH_MACE=1, TH_STAFF=1, CLOTH=-27, LEATHER=1 },
			stats = { INTELLECT=2.62, SPELL_POWER=2.51, HASTE=1.09, CRIT=0.88, VERSATILITY=0.94 , MASTERY=1.07, EMPTY_SOCKET_DOMINATION=0.25, EMPTY_SOCKET_PRISMATIC=0.25, STAMINA=0.01, ARMOR=0.01 },
			primary = { STRENGTH=0, AGILITY=0, INTELLECT=1 },
		},
		[5] = { --BEFORE CHOOSING SPEC
			itemtypes={ TH_POLE=1, TH_STAFF=1, TH_MACE=1, DAGGER=1, MACE=1, MISCARM=1, CLOTH=-27, LEATHER=1 },
			stats = { AGILITY=2.78, ATTACK_POWER=2.64, HASTE=1.01, CRIT=1.07, VERSATILITY=1.00, MASTERY=1.13, DAMAGE_PER_SECOND=15.84, ARMOR=0.01, EMPTY_SOCKET_DOMINATION=0.25, EMPTY_SOCKET_PRISMATIC=0.25, STAMINA=0.01 },
			primary = { STRENGTH=0, AGILITY=1, INTELLECT=0 },
		},
	},
	["EVOKER"] = {
		[1] = { -- Augmentation 
			itemtypes={ DAGGER=1, FIST=1, TH_MACE=1, MACE=1, TH_AXE=1, AXE=1, TH_SWORD=1, SWORD=1, TH_STAFF=1, MAIL=1 },
			stats = { INTELLECT=2.51, SPELL_POWER=2.29, MASTERY=1.00, HASTE=0.85, CRIT=0.75, VERSATILITY=0.55, EMPTY_SOCKET_DOMINATION=0.25, EMPTY_SOCKET_PRISMATIC=0.25, STAMINA=0.01, ARMOR=0.01 },
			primary = { STRENGTH=0, AGILITY=0, INTELLECT=1 },
		},
		[2] = { --Devastation
			itemtypes={ DAGGER=1, FIST=1, TH_MACE=1, MACE=1, TH_AXE=1, AXE=1, TH_SWORD=1, SWORD=1, TH_STAFF=1, MAIL=1 },
			stats = { INTELLECT=2.51, SPELL_POWER=2.29, MASTERY=1.00, HASTE=0.85, CRIT=0.75, VERSATILITY=0.55, EMPTY_SOCKET_DOMINATION=0.25, EMPTY_SOCKET_PRISMATIC=0.25, STAMINA=0.01, ARMOR=0.01 },
			primary = { STRENGTH=0, AGILITY=0, INTELLECT=1 },
		},
		[3] = { --Preservation
			itemtypes={ DAGGER=1, FIST=1, TH_MACE=1, MACE=1, TH_AXE=1, AXE=1, TH_SWORD=1, SWORD=1, TH_STAFF=1, MAIL=1 },
			stats = { INTELLECT=2.51, SPELL_POWER=2.29, CRIT=1.00, MASTERY=0.85, VERSATILITY=0.75, HASTE=0.65, EMPTY_SOCKET_DOMINATION=0.25, EMPTY_SOCKET_PRISMATIC=0.25, STAMINA=0.01, ARMOR=0.01 },
			primary = { STRENGTH=0, AGILITY=0, INTELLECT=1 },
		},
		[5] = { --BEFORE CHOOSING SPEC
			itemtypes={ DAGGER=1, FIST=1, TH_MACE=1, MACE=1, TH_AXE=1, AXE=1, TH_SWORD=1, SWORD=1, TH_STAFF=1, MAIL=1 },
			stats = { INTELLECT=2.51, SPELL_POWER=2.29, MASTERY=1.00, HASTE=0.85, CRIT=0.75, VERSATILITY=0.55, EMPTY_SOCKET_DOMINATION=0.25, EMPTY_SOCKET_PRISMATIC=0.25, STAMINA=0.01, ARMOR=0.01 },
			primary = { STRENGTH=0, AGILITY=0, INTELLECT=1 },
		},
	},
	["HUNTER"] = {
		[1] = { -- BEAST MASTERY-DPS
			itemtypes={BOW=1, CROSSBOW=1, GUN=1, CLOTH=-27, LEATHER=-27, MAIL=1 },
			stats = { AGILITY=2.74, ATTACK_POWER=2.62, MASTERY=0.78, CRIT=0.85, HASTE=0.79, VERSATILITY=0.97, DAMAGE_PER_SECOND=11.71, EMPTY_SOCKET_DOMINATION=0.25, EMPTY_SOCKET_PRISMATIC=0.25, STAMINA=0.01, ARMOR=0.01 },
			primary = { STRENGTH=0, AGILITY=1, INTELLECT=0 },
		},
		[2] = { -- MARKSMANSHIP-DPS
			itemtypes={BOW=1, CROSSBOW=1, GUN=1, CLOTH=-27, LEATHER=-27, MAIL=1 },
			stats = { AGILITY=2.64, ATTACK_POWER=2.53, MASTERY=0.96, HASTE=0.94, CRIT=0.95, VERSATILITY=0.94, DAMAGE_PER_SECOND=15.28, EMPTY_SOCKET_DOMINATION=0.25, EMPTY_SOCKET_PRISMATIC=0.25, STAMINA=0.01, ARMOR=0.01 },
			primary = { STRENGTH=0, AGILITY=1, INTELLECT=0 },
		},
		[3] = { -- SURVIVAL-DPS
			itemtypes={AXE=1, SWORD=1, DAGGER=1, FIST=1, TH_AXE=1, TH_SWORD=1, TH_STAFF=1, TH_POLE=1, CLOTH=-27, LEATHER=-27, MAIL=1 },
			stats = { AGILITY=2.53, ATTACK_POWER=2.40, HASTE=0.92, CRIT=0.89, VERSATILITY=0.89, MASTERY=0.59, DAMAGE_PER_SECOND=11.67, EMPTY_SOCKET_DOMINATION=0.25, EMPTY_SOCKET_PRISMATIC=0.25, STAMINA=0.01, ARMOR=0.01 },
			primary = { STRENGTH=0, AGILITY=1, INTELLECT=0 },
		},
		[5] = { --BEFORE CHOOSING SPEC
			itemtypes={BOW=1, CROSSBOW=1, GUN=1, AXE=1, SWORD=1, DAGGER=1, FIST=1, TH_AXE=1, TH_SWORD=1, TH_STAFF=1, TH_POLE=1, CLOTH=-27, LEATHER=-27, MAIL=1 },
			stats = { AGILITY=2.74, ATTACK_POWER=2.62, MASTERY=0.78, CRIT=0.85, HASTE=0.79, VERSATILITY=0.97, DAMAGE_PER_SECOND=11.71, ARMOR=0.01, EMPTY_SOCKET_DOMINATION=0.25, EMPTY_SOCKET_PRISMATIC=0.25, STAMINA=0.01 },
			primary = { STRENGTH=0, AGILITY=1, INTELLECT=0 },
		},
	},
	["MAGE"] = {
		[1] = { -- ARCANE-DPS
			itemtypes={ TH_STAFF=1, WAND=1, MISCARM=1, SWORD=1, DAGGER=1, CLOTH=1 },
			stats = { INTELLECT=2.51, SPELL_POWER=2.29, CRIT=0.93, VERSATILITY=0.94, HASTE=0.96, MASTERY=0.79, EMPTY_SOCKET_DOMINATION=0.25, EMPTY_SOCKET_PRISMATIC=0.25, STAMINA=0.01, ARMOR=0.01 },
			primary = { STRENGTH=0, AGILITY=0, INTELLECT=1 },
		},
		[2] = { -- FIRE-DPS
			itemtypes={ TH_STAFF=1, WAND=1, MISCARM=1, SWORD=1, DAGGER=1, CLOTH=1 },
			stats = { INTELLECT=2.70, SPELL_POWER=2.45, MASTERY=0.82, VERSATILITY=0.94, HASTE=0.72, CRIT=0.78, EMPTY_SOCKET_DOMINATION=0.25, EMPTY_SOCKET_PRISMATIC=0.25, STAMINA=0.01, ARMOR=0.01 },
			primary = { STRENGTH=0, AGILITY=0, INTELLECT=1 },
		},
		[3] = { -- FROST-DPS
			itemtypes={ TH_STAFF=1, WAND=1, MISCARM=1, SWORD=1, DAGGER=1, CLOTH=1 },
			stats = { INTELLECT=2.81, SPELL_POWER=2.55, HASTE=1.20, CRIT=1.00, VERSATILITY=1.00 , MASTERY=0.91, EMPTY_SOCKET_DOMINATION=0.25, EMPTY_SOCKET_PRISMATIC=0.25, STAMINA=0.01, ARMOR=0.01 },
			primary = { STRENGTH=0, AGILITY=0, INTELLECT=1 },
		},
		[5] = { --BEFORE CHOOSING SPEC
			itemtypes={ TH_STAFF=1, WAND=1, MISCARM=1, SWORD=1, DAGGER=1, CLOTH=1 },
			stats = { INTELLECT=2.70, SPELL_POWER=2.45, MASTERY=0.82, VERSATILITY=0.94, HASTE=0.72, CRIT=0.78, ARMOR=0.01, EMPTY_SOCKET_DOMINATION=0.25, EMPTY_SOCKET_PRISMATIC=0.25, STAMINA=0.01 },
			primary = { STRENGTH=0, AGILITY=0, INTELLECT=1 },
		},
	},
	["MONK"] = {
		[1] = { --BREWMASTER-TANK
			itemtypes={ TH_POLE=1, TH_STAFF=1, FIST=1, AXE=1, SWORD=1, MACE=1, CLOTH=-27, LEATHER=1 },
			stats = { AGILITY=1.57, ATTACK_POWER=1.50, STAMINA=0.40, VERSATILITY=0.62, CRIT=0.63, MASTERY=0.42, HASTE=0.48, DAMAGE_PER_SECOND=8.36, LIFESTEAL=0.01, ARMOR=0.40, EMPTY_SOCKET_DOMINATION=0.25, EMPTY_SOCKET_PRISMATIC=0.25 },--, DAMAGE_PER_SECOND_OFFHAND=0.61
			primary = { STRENGTH=0, AGILITY=1, INTELLECT=0 },
		},
		[2] = { --MISTWEAVER-HEALER
			itemtypes={ TH_POLE=1, TH_STAFF=1, FIST=1, AXE=1, SWORD=1, MACE=1, CLOTH=-27, LEATHER=1 },
			stats = { INTELLECT=2.42, SPELL_POWER=2.31, CRIT=1.02, VERSATILITY=0.99, HASTE=0.98, MASTERY=1.00, EMPTY_SOCKET_DOMINATION=0.25, EMPTY_SOCKET_PRISMATIC=0.25, STAMINA=0.01, ARMOR=0.01 },
			primary = { STRENGTH=0, AGILITY=0, INTELLECT=1 },
		},
		[3] = { --WINDWALKER-DPS
			itemtypes={ FIST=1, AXE=1, SWORD=1, MACE=1, CLOTH=-27, LEATHER=1 },
			stats = { AGILITY=2.81, ATTACK_POWER=2.62, VERSATILITY=1.02, HASTE=0.98, MASTERY=0.91, CRIT=0.99, DAMAGE_PER_SECOND=13.59, EMPTY_SOCKET_DOMINATION=0.25, EMPTY_SOCKET_PRISMATIC=0.25, STAMINA=0.01, ARMOR=0.01 },--, DAMAGE_PER_SECOND_OFFHAND=2.58
			primary = { STRENGTH=0, AGILITY=1, INTELLECT=0 },
		},
		[5] = { --BEFORE CHOOSING SPEC
			itemtypes={ FIST=1, TH_POLE=1, TH_STAFF=1, AXE=1, SWORD=1, MACE=1, CLOTH=-27, LEATHER=1 },
			stats = { AGILITY=2.81, ATTACK_POWER=2.62, VERSATILITY=1.02, HASTE=0.98, MASTERY=0.91, CRIT=0.99, DAMAGE_PER_SECOND=13.59, ARMOR=0.01, EMPTY_SOCKET_DOMINATION=0.25, EMPTY_SOCKET_PRISMATIC=0.25, STAMINA=0.01 },--, DAMAGE_PER_SECOND_OFFHAND=2.58
			primary = { STRENGTH=0, AGILITY=1, INTELLECT=0 },
		},
	},
	["PALADIN"] = {
		[1] = { --HOLY-HEALER
			itemtypes={ TH_POLE=1, TH_AXE=1, TH_MACE=1, TH_SWORD=1, AXE=1, MACE=1, SWORD=1, SHIELD=1, MISCARM=1, CLOTH=-27, LEATHER=-27, MAIL=-27, PLATE=1 },
			stats = { INTELLECT=1.59, SPELL_POWER=1.51, CRIT=0.47, HASTE=0.42, VERSATILITY=0.51, MASTERY=0.40, EMPTY_SOCKET_DOMINATION=0.25, EMPTY_SOCKET_PRISMATIC=0.25, STAMINA=0.01, ARMOR=0.01 },
			primary = { STRENGTH=0, AGILITY=0, INTELLECT=1 },
		},
		[2] = { --PROTECTION-TANK
			itemtypes={ AXE=1, MACE=1, SWORD=1, SHIELD=1, CLOTH=-27, LEATHER=-27, MAIL=-27, PLATE=1 },
			stats = { STRENGTH=2.24, ATTACK_POWER=2.09, STAMINA=0.40, HASTE=0.49, MASTERY=0.76, VERSATILITY=0.81, CRIT=0.81, DAMAGE_PER_SECOND=12.53, LIFESTEAL=0.01, ARMOR=0.40, EMPTY_SOCKET_DOMINATION=0.25, EMPTY_SOCKET_PRISMATIC=0.25 },
			primary = { STRENGTH=1, AGILITY=0, INTELLECT=0 },
		},
		[3] = { --RETRIBUTION-DPS
			itemtypes={ TH_POLE=1, TH_AXE=1, TH_MACE=1, TH_SWORD=1, CLOTH=-27, LEATHER=-27, MAIL=-27, PLATE=1 },
			stats = { STRENGTH=2.34, ATTACK_POWER=2.23, HASTE=0.80, VERSATILITY=0.84, MASTERY=0.92, CRIT=0.89, DAMAGE_PER_SECOND=13.42, EMPTY_SOCKET_DOMINATION=0.25, EMPTY_SOCKET_PRISMATIC=0.25, STAMINA=0.01, ARMOR=0.01 },
			primary = { STRENGTH=1, AGILITY=0, INTELLECT=0 },
		},
		[5] = { --BEFORE CHOOSING SPEC
			itemtypes={ TH_POLE=1, TH_AXE=1, TH_MACE=1, TH_SWORD=1,AXE=1, MACE=1, SWORD=1, SHIELD=1, CLOTH=-27, LEATHER=-27, MAIL=-27, PLATE=1 },
			stats = { STRENGTH=2.34, ATTACK_POWER=2.23, HASTE=0.80, VERSATILITY=0.84, MASTERY=0.92, CRIT=0.89, DAMAGE_PER_SECOND=13.42, ARMOR=0.01, EMPTY_SOCKET_DOMINATION=0.25, EMPTY_SOCKET_PRISMATIC=0.25, STAMINA=0.01 },
			primary = { STRENGTH=1, AGILITY=0, INTELLECT=0 },
		},
	},
	["PRIEST"] = {
		[1] = { -- DISCIPLINE-HEALER
			itemtypes={ DAGGER=1, MACE=1, TH_STAFF=1, WAND=1, MISCARM=1, CLOTH=1 },
			stats = {  INTELLECT=1.28, SPELL_POWER=1.21, HASTE=0.49, CRIT=0.45, VERSATILITY=0.47, MASTERY=0.39, EMPTY_SOCKET_DOMINATION=0.25, EMPTY_SOCKET_PRISMATIC=0.25, STAMINA=0.01, ARMOR=0.01 },
			primary = { STRENGTH=0, AGILITY=0, INTELLECT=1 },
		},
		[2] = { -- HOLY-HEALER
			itemtypes={ DAGGER=1, MACE=1, TH_STAFF=1, WAND=1, MISCARM=1, CLOTH=1 },
			stats = { INTELLECT=1.56, SPELL_POWER=1.51, CRIT=0.61, VERSATILITY=0.55, HASTE=0.58, MASTERY=0.52, EMPTY_SOCKET_DOMINATION=0.25, EMPTY_SOCKET_PRISMATIC=0.25, STAMINA=0.01, ARMOR=0.01 },
			primary = { STRENGTH=0, AGILITY=0, INTELLECT=1 },
		},
		[3] = { --SHADOW-DPS
			itemtypes={ DAGGER=1, MACE=1, TH_STAFF=1, WAND=1, MISCARM=1, CLOTH=1 },
			stats = { INTELLECT=2.60, SPELL_POWER=2.43, HASTE=1.13, CRIT=1.08, MASTERY=1.10, VERSATILITY=0.95, EMPTY_SOCKET_DOMINATION=0.25, EMPTY_SOCKET_PRISMATIC=0.25, STAMINA=0.01, ARMOR=0.01 },
			primary = { STRENGTH=0, AGILITY=0, INTELLECT=1 },
		},
		[5] = { --BEFORE CHOOSING SPEC
			itemtypes={ DAGGER=1, MACE=1, TH_STAFF=1, WAND=1, MISCARM=1, CLOTH=1 },
			stats = { INTELLECT=2.60, SPELL_POWER=2.43, HASTE=1.13, CRIT=1.08, MASTERY=1.10, VERSATILITY=0.95, EMPTY_SOCKET_DOMINATION=0.25, EMPTY_SOCKET_PRISMATIC=0.25, ARMOR=0.01, STAMINA=0.01 },
			primary = { STRENGTH=0, AGILITY=0, INTELLECT=1 },
		},
	},
	["ROGUE"] = {
		[1] = { --ASSASSINATION-DPS
			itemtypes={ DAGGER=1, CLOTH=-27, LEATHER=1 },
			stats = { AGILITY=2.44, ATTACK_POWER=2.27, HASTE=0.99, CRIT=0.92, MASTERY=0.86, VERSATILITY=0.85, DAMAGE_PER_SECOND=12.11, EMPTY_SOCKET_DOMINATION=0.25, EMPTY_SOCKET_PRISMATIC=0.25, STAMINA=0.01, ARMOR=0.01 },--, DAMAGE_PER_SECOND_OFFHAND=1.46
			primary = { STRENGTH=0, AGILITY=1, INTELLECT=0 },
		},
		[2] = { --OUTLAW-DPS
			itemtypes={ DAGGER=1, FIST=1, AXE=1, MACE=1, SWORD=1, CLOTH=-27, LEATHER=1 },
			stats = { AGILITY=2.60, ATTACK_POWER=2.42, HASTE=0.90, CRIT=0.83, VERSATILITY=0.89, MASTERY=0.67, DAMAGE_PER_SECOND=12.59, EMPTY_SOCKET_DOMINATION=0.25, EMPTY_SOCKET_PRISMATIC=0.25, STAMINA=0.01, ARMOR=0.01 },--, DAMAGE_PER_SECOND_OFFHAND=1.86
			primary = { STRENGTH=0, AGILITY=1, INTELLECT=0 },
		},
		[3] = { --SUBTLETY-DPS
			itemtypes={ DAGGER=1, FIST=1, AXE=1, MACE=1, SWORD=1, CLOTH=-27, LEATHER=1 },
			stats = { AGILITY=2.99, ATTACK_POWER=2.79, CRIT=0.96, MASTERY=0.84, HASTE=0.76, VERSATILITY=1.00, DAMAGE_PER_SECOND=15.72, EMPTY_SOCKET_DOMINATION=0.25, EMPTY_SOCKET_PRISMATIC=0.25, STAMINA=0.01, ARMOR=0.01 },--, DAMAGE_PER_SECOND_OFFHAND=0.96
			primary = { STRENGTH=0, AGILITY=1, INTELLECT=0 },
		},
		[5] = { --BEFORE CHOOSING SPEC
			itemtypes={ DAGGER=1, FIST=1, AXE=1, MACE=1, SWORD=1, CLOTH=-27, LEATHER=1 },
			stats = { AGILITY=2.60, ATTACK_POWER=2.42, HASTE=0.90, CRIT=0.83, VERSATILITY=0.89, MASTERY=0.67, DAMAGE_PER_SECOND=12.59, ARMOR=0.01, EMPTY_SOCKET_DOMINATION=0.25, EMPTY_SOCKET_PRISMATIC=0.25, STAMINA=0.01 },--, DAMAGE_PER_SECOND_OFFHAND=1.86
			primary = { STRENGTH=0, AGILITY=1, INTELLECT=0 },
		},
	},
	["SHAMAN"] = {
		[1] = { -- ELEMENTAL-DPS
			itemtypes={ DAGGER=1, FIST=1, AXE=1, MACE=1, TH_STAFF=1, TH_AXE=20, TH_MACE=20, MISCARM=1, SHIELD=1, CLOTH=-27, LEATHER=-27, MAIL=1 },
			stats = { INTELLECT=2.99, SPELL_POWER=2.80, HASTE=0.94, MASTERY=0.91, CRIT=0.93, VERSATILITY=0.94, EMPTY_SOCKET_DOMINATION=0.25, EMPTY_SOCKET_PRISMATIC=0.25, STAMINA=0.01, ARMOR=0.01 },
			primary = { STRENGTH=0, AGILITY=0, INTELLECT=1 },
		},
		[2] = { -- ENHANCEMENT:-DPS
			itemtypes={ FIST=1, AXE=1, MACE=1, TH_AXE=20, TH_MACE=20, MISCARM=1, CLOTH=-27, LEATHER=-27, MAIL=1 },
			stats = { AGILITY=2.92, ATTACK_POWER=2.73, HASTE=1.32, CRIT=0.96, MASTERY=1.17, VERSATILITY=1.03, DAMAGE_PER_SECOND=11.71, EMPTY_SOCKET_DOMINATION=0.25, EMPTY_SOCKET_PRISMATIC=0.25, STAMINA=0.01, ARMOR=0.01 },--, DAMAGE_PER_SECOND_OFFHAND=4.60
			primary = { STRENGTH=0, AGILITY=1, INTELLECT=0 },
		},
		[3] = { -- RESTORATION-HEALER
			itemtypes={ DAGGER=1, FIST=1, AXE=1, MACE=1, TH_STAFF=1, TH_AXE=20, TH_MACE=20, MISCARM=1, SHIELD=1, CLOTH=-27, LEATHER=-27, MAIL=1 },
			stats = { INTELLECT=2.82, SPELL_POWER=2.71, CRIT=0.96, VERSATILITY=0.97, HASTE=0.82, MASTERY=0.81, EMPTY_SOCKET_DOMINATION=0.25, EMPTY_SOCKET_PRISMATIC=0.25, STAMINA=0.01, ARMOR=0.01 },
			primary = { STRENGTH=0, AGILITY=0, INTELLECT=1 },
		},
		[5] = { --BEFORE CHOOSING SPEC
			itemtypes={ DAGGER=1, FIST=1, AXE=1, MACE=1, TH_STAFF=1, TH_AXE=20, TH_MACE=20, MISCARM=1, SHIELD=1, CLOTH=-27, LEATHER=-27, MAIL=1 },
			stats = { AGILITY=2.92, ATTACK_POWER=2.73, HASTE=1.32, CRIT=0.96, MASTERY=1.17, VERSATILITY=1.03, DAMAGE_PER_SECOND=11.71, ARMOR=0.01, EMPTY_SOCKET_DOMINATION=0.25, EMPTY_SOCKET_PRISMATIC=0.25, STAMINA=0.01 },--, DAMAGE_PER_SECOND_OFFHAND=4.60
			primary = { STRENGTH=0, AGILITY=1, INTELLECT=0 },
		},
	},
	["WARLOCK"] = {
		[1] = { --AFFLICTION-DPS
			itemtypes={ SWORD=1, DAGGER=1, TH_STAFF=1, WAND=1, MISCARM=1, CLOTH=1 },
			stats = { INTELLECT=2.47, SPELL_POWER=2.35, HASTE=1.11, MASTERY=1.03, VERSATILITY=0.95, CRIT=0.94, EMPTY_SOCKET_DOMINATION=0.25, EMPTY_SOCKET_PRISMATIC=0.25, STAMINA=0.01, ARMOR=0.01 },
			primary = { STRENGTH=0, AGILITY=0, INTELLECT=1 },
		},
		[2] = { --DEMONOLOGY-DPS
			itemtypes={ SWORD=1, DAGGER=1, TH_STAFF=1, WAND=1, MISCARM=1, CLOTH=1 },
			stats = { INTELLECT=2.20, SPELL_POWER=2.01, HASTE=0.97, CRIT=0.82, VERSATILITY=0.86, MASTERY=0.85, EMPTY_SOCKET_DOMINATION=0.25, EMPTY_SOCKET_PRISMATIC=0.25, STAMINA=0.01, ARMOR=0.01 },
			primary = { STRENGTH=0, AGILITY=0, INTELLECT=1 },
		},
		[3] = { --DESTRUCTION-DPS
			itemtypes={ SWORD=1, DAGGER=1, TH_STAFF=1, WAND=1, MISCARM=1, CLOTH=1 },
			stats = { INTELLECT=2.68, SPELL_POWER=2.50, HASTE=0.80, MASTERY=1.09, CRIT=1.01, VERSATILITY=0.97, EMPTY_SOCKET_DOMINATION=0.25, EMPTY_SOCKET_PRISMATIC=0.25, STAMINA=0.01, ARMOR=0.01 },
			primary = { STRENGTH=0, AGILITY=0, INTELLECT=1 },
		},
		[5] = { --BEFORE CHOOSING SPEC
			itemtypes={ SWORD=1, DAGGER=1, TH_STAFF=1, WAND=1, MISCARM=1, CLOTH=1 },
			stats = { INTELLECT=2.68, SPELL_POWER=2.50, HASTE=0.80, MASTERY=1.09, CRIT=1.01, VERSATILITY=0.97, ARMOR=0.01, EMPTY_SOCKET_DOMINATION=0.25, EMPTY_SOCKET_PRISMATIC=0.25, STAMINA=0.01 },
			primary = { STRENGTH=0, AGILITY=0, INTELLECT=1 },
		},
	},
	["WARRIOR"] = {
		[1] = { --ARMS-DPS
			itemtypes={ TH_POLE=1, TH_AXE=1, TH_MACE=1, TH_SWORD=1, CLOTH=-27, LEATHER=-27, MAIL=-27, PLATE=1 },
			stats = { STRENGTH=2.51, ATTACK_POWER=2.40, CRIT=0.89, HASTE=0.82, VERSATILITY=0.92, MASTERY=0.96, DAMAGE_PER_SECOND=14.47, EMPTY_SOCKET_DOMINATION=0.25, EMPTY_SOCKET_PRISMATIC=0.25, STAMINA=0.01, ARMOR=0.01 },
			primary = { STRENGTH=1, AGILITY=0, INTELLECT=0 },
		},
		[2] = { --FURY-DPS
			itemtypes={ TH_POLE=1, TH_AXE=10, TH_MACE=10, TH_SWORD=10, DAGGER=1, FIST=1, AXE=1, MACE=1, SWORD=1, CLOTH=-27, LEATHER=-27, MAIL=-27, PLATE=1 },  -- duals...
			stats = { STRENGTH=2.28, ATTACK_POWER=2.08, HASTE=0.99, MASTERY=1.00, CRIT=0.94, VERSATILITY=0.88, DAMAGE_PER_SECOND=8.79, EMPTY_SOCKET_DOMINATION=0.25, EMPTY_SOCKET_PRISMATIC=0.25, STAMINA=0.01, ARMOR=0.01 },--, DAMAGE_PER_SECOND_OFFHAND=3.98
			primary = { STRENGTH=1, AGILITY=0, INTELLECT=0 },
		},
		[3] = { --PROTECTION-TANK
			itemtypes={ DAGGER=1, FIST=1, AXE=1, MACE=1, SWORD=1, SHIELD=1, CLOTH=-27, LEATHER=-27, MAIL=-27, PLATE=1},
			stats = { STRENGTH=1.49, ATTACK_POWER=1.49, STAMINA=0.40, HASTE=0.49, MASTERY=0.49, VERSATILITY=0.59, CRIT=0.62, DAMAGE_PER_SECOND=8.90, LIFESTEAL=0.01, ARMOR=0.40, EMPTY_SOCKET_DOMINATION=0.25, EMPTY_SOCKET_PRISMATIC=0.25 },
			primary = { STRENGTH=1, AGILITY=0, INTELLECT=0 },
		},
		[5] = { --BEFORE CHOOSING SPEC
			itemtypes={ TH_POLE=1, TH_AXE=1, TH_MACE=1, TH_SWORD=1, TH_STAFF=1, DAGGER=1, FIST=1, AXE=1, MACE=1, SWORD=1, SHIELD=1, CLOTH=-27, LEATHER=-27, MAIL=-27, PLATE=1},
			stats = { STRENGTH=2.28, ATTACK_POWER=2.08, HASTE=0.99, MASTERY=1.00, CRIT=0.94, VERSATILITY=0.88, DAMAGE_PER_SECOND=8.79, ARMOR=0.01, EMPTY_SOCKET_DOMINATION=0.25, EMPTY_SOCKET_PRISMATIC=0.25, STAMINA=0.01 },--, DAMAGE_PER_SECOND_OFFHAND=3.98
			primary = { STRENGTH=1, AGILITY=0, INTELLECT=0 },
		},
	},
}
