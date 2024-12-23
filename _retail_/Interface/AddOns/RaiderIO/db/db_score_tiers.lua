--
-- Generated on 2021-03-18T18:30:51Z. DO NOT EDIT.
--
-- Curr. Ranges: {"epic":[1351,3225],"superior":[1101,1350],"uncommon":[601,1100],"common":[200,600]}
-- Prev. Ranges: {"epic":[null,null],"superior":[null,null],"uncommon":[null,null],"common":[200,null]}
--
local _, ns = ...

ns.scoreTiers = {
	[1] = { ["score"] = 3225, ["color"] = { 1.00, 0.50, 0.00 } },		-- |cffff80003225+|r
	[2] = { ["score"] = 3125, ["color"] = { 1.00, 0.50, 0.05 } },		-- |cfffe7f0c3125+|r
	[3] = { ["score"] = 3100, ["color"] = { 1.00, 0.49, 0.08 } },		-- |cfffe7e153100+|r
	[4] = { ["score"] = 3075, ["color"] = { 0.99, 0.49, 0.11 } },		-- |cfffd7d1c3075+|r
	[5] = { ["score"] = 3055, ["color"] = { 0.99, 0.49, 0.13 } },		-- |cfffd7c223055+|r
	[6] = { ["score"] = 3030, ["color"] = { 0.99, 0.48, 0.15 } },		-- |cfffc7b273030+|r
	[7] = { ["score"] = 3005, ["color"] = { 0.99, 0.48, 0.17 } },		-- |cfffc7a2b3005+|r
	[8] = { ["score"] = 2980, ["color"] = { 0.98, 0.47, 0.19 } },		-- |cfffb79302980+|r
	[9] = { ["score"] = 2955, ["color"] = { 0.98, 0.47, 0.20 } },		-- |cfffa78342955+|r
	[10] = { ["score"] = 2935, ["color"] = { 0.98, 0.47, 0.22 } },		-- |cfffa77372935+|r
	[11] = { ["score"] = 2910, ["color"] = { 0.98, 0.46, 0.23 } },		-- |cfff9763b2910+|r
	[12] = { ["score"] = 2885, ["color"] = { 0.98, 0.46, 0.25 } },		-- |cfff9753f2885+|r
	[13] = { ["score"] = 2860, ["color"] = { 0.97, 0.45, 0.26 } },		-- |cfff874422860+|r
	[14] = { ["score"] = 2835, ["color"] = { 0.97, 0.45, 0.27 } },		-- |cfff773452835+|r
	[15] = { ["score"] = 2815, ["color"] = { 0.97, 0.44, 0.28 } },		-- |cfff771482815+|r
	[16] = { ["score"] = 2790, ["color"] = { 0.96, 0.44, 0.30 } },		-- |cfff6704c2790+|r
	[17] = { ["score"] = 2765, ["color"] = { 0.96, 0.44, 0.31 } },		-- |cfff56f4f2765+|r
	[18] = { ["score"] = 2740, ["color"] = { 0.96, 0.43, 0.32 } },		-- |cfff56e522740+|r
	[19] = { ["score"] = 2715, ["color"] = { 0.96, 0.43, 0.33 } },		-- |cfff46d552715+|r
	[20] = { ["score"] = 2695, ["color"] = { 0.95, 0.42, 0.35 } },		-- |cfff36c582695+|r
	[21] = { ["score"] = 2670, ["color"] = { 0.95, 0.42, 0.36 } },		-- |cfff26b5b2670+|r
	[22] = { ["score"] = 2645, ["color"] = { 0.95, 0.42, 0.37 } },		-- |cfff26a5e2645+|r
	[23] = { ["score"] = 2620, ["color"] = { 0.95, 0.41, 0.38 } },		-- |cfff169602620+|r
	[24] = { ["score"] = 2595, ["color"] = { 0.94, 0.41, 0.39 } },		-- |cfff068632595+|r
	[25] = { ["score"] = 2575, ["color"] = { 0.94, 0.40, 0.40 } },		-- |cffef67662575+|r
	[26] = { ["score"] = 2550, ["color"] = { 0.93, 0.40, 0.41 } },		-- |cffee66692550+|r
	[27] = { ["score"] = 2525, ["color"] = { 0.93, 0.40, 0.42 } },		-- |cffee656c2525+|r
	[28] = { ["score"] = 2500, ["color"] = { 0.93, 0.39, 0.43 } },		-- |cffed646e2500+|r
	[29] = { ["score"] = 2475, ["color"] = { 0.93, 0.39, 0.44 } },		-- |cffec63712475+|r
	[30] = { ["score"] = 2455, ["color"] = { 0.92, 0.38, 0.45 } },		-- |cffeb62742455+|r
	[31] = { ["score"] = 2430, ["color"] = { 0.92, 0.38, 0.46 } },		-- |cffea61762430+|r
	[32] = { ["score"] = 2405, ["color"] = { 0.91, 0.38, 0.47 } },		-- |cffe960792405+|r
	[33] = { ["score"] = 2380, ["color"] = { 0.91, 0.37, 0.49 } },		-- |cffe85f7c2380+|r
	[34] = { ["score"] = 2355, ["color"] = { 0.91, 0.37, 0.50 } },		-- |cffe75e7f2355+|r
	[35] = { ["score"] = 2335, ["color"] = { 0.90, 0.36, 0.51 } },		-- |cffe65d812335+|r
	[36] = { ["score"] = 2310, ["color"] = { 0.90, 0.36, 0.52 } },		-- |cffe55c842310+|r
	[37] = { ["score"] = 2285, ["color"] = { 0.89, 0.36, 0.53 } },		-- |cffe45b872285+|r
	[38] = { ["score"] = 2260, ["color"] = { 0.89, 0.35, 0.54 } },		-- |cffe35a892260+|r
	[39] = { ["score"] = 2235, ["color"] = { 0.89, 0.35, 0.55 } },		-- |cffe2588c2235+|r
	[40] = { ["score"] = 2215, ["color"] = { 0.88, 0.34, 0.56 } },		-- |cffe1578f2215+|r
	[41] = { ["score"] = 2190, ["color"] = { 0.88, 0.34, 0.57 } },		-- |cffe056912190+|r
	[42] = { ["score"] = 2165, ["color"] = { 0.87, 0.33, 0.58 } },		-- |cffdf55942165+|r
	[43] = { ["score"] = 2140, ["color"] = { 0.87, 0.33, 0.59 } },		-- |cffde54962140+|r
	[44] = { ["score"] = 2115, ["color"] = { 0.86, 0.33, 0.60 } },		-- |cffdc53992115+|r
	[45] = { ["score"] = 2095, ["color"] = { 0.86, 0.32, 0.61 } },		-- |cffdb529c2095+|r
	[46] = { ["score"] = 2070, ["color"] = { 0.85, 0.32, 0.62 } },		-- |cffda519e2070+|r
	[47] = { ["score"] = 2045, ["color"] = { 0.85, 0.31, 0.63 } },		-- |cffd950a12045+|r
	[48] = { ["score"] = 2020, ["color"] = { 0.84, 0.31, 0.64 } },		-- |cffd74fa42020+|r
	[49] = { ["score"] = 1995, ["color"] = { 0.84, 0.31, 0.65 } },		-- |cffd64ea61995+|r
	[50] = { ["score"] = 1975, ["color"] = { 0.84, 0.30, 0.66 } },		-- |cffd54da91975+|r
	[51] = { ["score"] = 1950, ["color"] = { 0.83, 0.30, 0.67 } },		-- |cffd34cac1950+|r
	[52] = { ["score"] = 1925, ["color"] = { 0.82, 0.29, 0.68 } },		-- |cffd24bae1925+|r
	[53] = { ["score"] = 1900, ["color"] = { 0.82, 0.29, 0.69 } },		-- |cffd14ab11900+|r
	[54] = { ["score"] = 1875, ["color"] = { 0.81, 0.29, 0.70 } },		-- |cffcf49b31875+|r
	[55] = { ["score"] = 1855, ["color"] = { 0.81, 0.28, 0.71 } },		-- |cffce48b61855+|r
	[56] = { ["score"] = 1830, ["color"] = { 0.80, 0.28, 0.73 } },		-- |cffcc47b91830+|r
	[57] = { ["score"] = 1805, ["color"] = { 0.79, 0.27, 0.73 } },		-- |cffca46bb1805+|r
	[58] = { ["score"] = 1780, ["color"] = { 0.79, 0.27, 0.75 } },		-- |cffc945be1780+|r
	[59] = { ["score"] = 1755, ["color"] = { 0.78, 0.27, 0.76 } },		-- |cffc744c11755+|r
	[60] = { ["score"] = 1735, ["color"] = { 0.77, 0.26, 0.76 } },		-- |cffc543c31735+|r
	[61] = { ["score"] = 1710, ["color"] = { 0.77, 0.26, 0.78 } },		-- |cffc442c61710+|r
	[62] = { ["score"] = 1685, ["color"] = { 0.76, 0.25, 0.79 } },		-- |cffc241c91685+|r
	[63] = { ["score"] = 1660, ["color"] = { 0.75, 0.25, 0.80 } },		-- |cffc040cb1660+|r
	[64] = { ["score"] = 1635, ["color"] = { 0.75, 0.25, 0.81 } },		-- |cffbe40ce1635+|r
	[65] = { ["score"] = 1615, ["color"] = { 0.74, 0.25, 0.82 } },		-- |cffbc3fd11615+|r
	[66] = { ["score"] = 1590, ["color"] = { 0.73, 0.24, 0.83 } },		-- |cffba3ed31590+|r
	[67] = { ["score"] = 1565, ["color"] = { 0.72, 0.24, 0.84 } },		-- |cffb83dd61565+|r
	[68] = { ["score"] = 1540, ["color"] = { 0.71, 0.24, 0.85 } },		-- |cffb63cd91540+|r
	[69] = { ["score"] = 1515, ["color"] = { 0.71, 0.23, 0.86 } },		-- |cffb43bdb1515+|r
	[70] = { ["score"] = 1495, ["color"] = { 0.70, 0.23, 0.87 } },		-- |cffb23ade1495+|r
	[71] = { ["score"] = 1470, ["color"] = { 0.69, 0.22, 0.88 } },		-- |cffb039e11470+|r
	[72] = { ["score"] = 1445, ["color"] = { 0.68, 0.22, 0.89 } },		-- |cffad38e31445+|r
	[73] = { ["score"] = 1420, ["color"] = { 0.67, 0.22, 0.90 } },		-- |cffab37e61420+|r
	[74] = { ["score"] = 1395, ["color"] = { 0.66, 0.22, 0.91 } },		-- |cffa837e91395+|r
	[75] = { ["score"] = 1375, ["color"] = { 0.65, 0.21, 0.92 } },		-- |cffa636eb1375+|r
	[76] = { ["score"] = 1350, ["color"] = { 0.64, 0.21, 0.93 } },		-- |cffa335ee1350+|r
	[77] = { ["score"] = 1315, ["color"] = { 0.60, 0.25, 0.93 } },		-- |cff9a3fec1315+|r
	[78] = { ["score"] = 1290, ["color"] = { 0.57, 0.28, 0.92 } },		-- |cff9148eb1290+|r
	[79] = { ["score"] = 1265, ["color"] = { 0.53, 0.31, 0.91 } },		-- |cff874fe91265+|r
	[80] = { ["score"] = 1245, ["color"] = { 0.49, 0.33, 0.91 } },		-- |cff7c55e71245+|r
	[81] = { ["score"] = 1220, ["color"] = { 0.44, 0.36, 0.90 } },		-- |cff715be51220+|r
	[82] = { ["score"] = 1195, ["color"] = { 0.40, 0.38, 0.89 } },		-- |cff6560e41195+|r
	[83] = { ["score"] = 1170, ["color"] = { 0.34, 0.39, 0.89 } },		-- |cff5764e21170+|r
	[84] = { ["score"] = 1145, ["color"] = { 0.28, 0.41, 0.88 } },		-- |cff4769e01145+|r
	[85] = { ["score"] = 1125, ["color"] = { 0.19, 0.42, 0.87 } },		-- |cff316cdf1125+|r
	[86] = { ["score"] = 1100, ["color"] = { 0.00, 0.44, 0.87 } },		-- |cff0070dd1100+|r
	[87] = { ["score"] = 1055, ["color"] = { 0.16, 0.47, 0.84 } },		-- |cff2877d61055+|r
	[88] = { ["score"] = 1030, ["color"] = { 0.22, 0.49, 0.81 } },		-- |cff387ecf1030+|r
	[89] = { ["score"] = 1005, ["color"] = { 0.26, 0.52, 0.78 } },		-- |cff4384c71005+|r
	[90] = { ["score"] = 985, ["color"] = { 0.29, 0.55, 0.75 } },		-- |cff4b8bc0985+|r
	[91] = { ["score"] = 960, ["color"] = { 0.32, 0.57, 0.73 } },		-- |cff5292b9960+|r
	[92] = { ["score"] = 935, ["color"] = { 0.34, 0.60, 0.69 } },		-- |cff5799b1935+|r
	[93] = { ["score"] = 910, ["color"] = { 0.35, 0.63, 0.67 } },		-- |cff5aa0aa910+|r
	[94] = { ["score"] = 885, ["color"] = { 0.36, 0.66, 0.64 } },		-- |cff5da8a2885+|r
	[95] = { ["score"] = 865, ["color"] = { 0.37, 0.69, 0.60 } },		-- |cff5faf9a865+|r
	[96] = { ["score"] = 840, ["color"] = { 0.37, 0.71, 0.57 } },		-- |cff5fb692840+|r
	[97] = { ["score"] = 815, ["color"] = { 0.37, 0.74, 0.54 } },		-- |cff5fbd8a815+|r
	[98] = { ["score"] = 790, ["color"] = { 0.37, 0.77, 0.51 } },		-- |cff5ec481790+|r
	[99] = { ["score"] = 765, ["color"] = { 0.36, 0.80, 0.47 } },		-- |cff5ccb78765+|r
	[100] = { ["score"] = 745, ["color"] = { 0.35, 0.83, 0.44 } },		-- |cff5ad36f745+|r
	[101] = { ["score"] = 720, ["color"] = { 0.34, 0.85, 0.39 } },		-- |cff56da64720+|r
	[102] = { ["score"] = 695, ["color"] = { 0.31, 0.88, 0.35 } },		-- |cff50e159695+|r
	[103] = { ["score"] = 670, ["color"] = { 0.29, 0.91, 0.30 } },		-- |cff49e94d670+|r
	[104] = { ["score"] = 645, ["color"] = { 0.25, 0.94, 0.24 } },		-- |cff40f03e645+|r
	[105] = { ["score"] = 625, ["color"] = { 0.20, 0.97, 0.16 } },		-- |cff33f82a625+|r
	[106] = { ["score"] = 600, ["color"] = { 0.12, 1.00, 0.00 } },		-- |cff1eff00600+|r
	[107] = { ["score"] = 575, ["color"] = { 0.27, 1.00, 0.18 } },		-- |cff46ff2d575+|r
	[108] = { ["score"] = 550, ["color"] = { 0.37, 1.00, 0.26 } },		-- |cff5eff43550+|r
	[109] = { ["score"] = 525, ["color"] = { 0.44, 1.00, 0.33 } },		-- |cff70ff54525+|r
	[110] = { ["score"] = 500, ["color"] = { 0.50, 1.00, 0.39 } },		-- |cff80ff64500+|r
	[111] = { ["score"] = 475, ["color"] = { 0.56, 1.00, 0.45 } },		-- |cff8eff72475+|r
	[112] = { ["score"] = 450, ["color"] = { 0.61, 1.00, 0.50 } },		-- |cff9bff80450+|r
	[113] = { ["score"] = 425, ["color"] = { 0.66, 1.00, 0.55 } },		-- |cffa8ff8d425+|r
	[114] = { ["score"] = 400, ["color"] = { 0.70, 1.00, 0.61 } },		-- |cffb3ff9b400+|r
	[115] = { ["score"] = 375, ["color"] = { 0.75, 1.00, 0.65 } },		-- |cffbeffa7375+|r
	[116] = { ["score"] = 350, ["color"] = { 0.78, 1.00, 0.71 } },		-- |cffc8ffb4350+|r
	[117] = { ["score"] = 325, ["color"] = { 0.82, 1.00, 0.76 } },		-- |cffd2ffc1325+|r
	[118] = { ["score"] = 300, ["color"] = { 0.86, 1.00, 0.80 } },		-- |cffdbffcd300+|r
	[119] = { ["score"] = 275, ["color"] = { 0.90, 1.00, 0.85 } },		-- |cffe5ffda275+|r
	[120] = { ["score"] = 250, ["color"] = { 0.93, 1.00, 0.90 } },		-- |cffeeffe6250+|r
	[121] = { ["score"] = 225, ["color"] = { 0.96, 1.00, 0.95 } },		-- |cfff6fff3225+|r
	[122] = { ["score"] = 200, ["color"] = { 1.00, 1.00, 1.00 } },		-- |cffffffff200+|r
}

ns.scoreTiersSimple = {
	[1] = { ["score"] = 3225, ["quality"] = 6 },
	[2] = { ["score"] = 1351, ["quality"] = 5 },
	[3] = { ["score"] = 1101, ["quality"] = 4 },
	[4] = { ["score"] = 601, ["quality"] = 3 },
	[5] = { ["score"] = 200, ["quality"] = 2 }
}
ns.previousScoreTiers = {
}

ns.previousScoreTiersSimple = {
	[1] = { ["score"] = 200, ["quality"] = 2 }
}
