
WeakAurasSaved = {
["dynamicIconCache"] = {
},
["displays"] = {
["WarucksTotalSilence_Kick"] = {
["iconSource"] = -1,
["parent"] = "WarucksTotalSilence",
["adjustedMax"] = "",
["adjustedMin"] = "",
["yOffset"] = 0,
["anchorPoint"] = "CENTER",
["cooldownSwipe"] = true,
["customTextUpdate"] = "update",
["cooldownEdge"] = false,
["icon"] = true,
["triggers"] = {
{
["trigger"] = {
["type"] = "custom",
["custom_type"] = "status",
["event"] = "Health",
["unit"] = "player",
["subeventPrefix"] = "SPELL",
["spellIds"] = {
},
["subeventSuffix"] = "_CAST_START",
["check"] = "update",
["names"] = {
},
["custom"] = "function(...)\n    if TotalSilenceGlobalFunctions then\n        return TotalSilenceGlobalFunctions.getPlayerIsNext()\n    end\n    \n    return false\nend\n\n\n\n\n\n\n\n",
["debuffType"] = "HELPFUL",
},
["untrigger"] = {
["custom"] = "function(...)\n    if TotalSilenceGlobalFunctions then\n        return not (TotalSilenceGlobalFunctions.getPlayerIsNext())\n    end\n    \n    return true\nend\n\n\n\n\n\n\n\n\n",
},
},
["disjunctive"] = "all",
["activeTriggerMode"] = -10,
},
["internalVersion"] = 75,
["progressSource"] = {
-1,
"",
},
["animation"] = {
["start"] = {
["duration_type"] = "seconds",
["type"] = "none",
["easeStrength"] = 3,
["easeType"] = "none",
},
["main"] = {
["duration_type"] = "seconds",
["type"] = "none",
["easeStrength"] = 3,
["easeType"] = "none",
},
["finish"] = {
["duration_type"] = "seconds",
["type"] = "none",
["easeStrength"] = 3,
["easeType"] = "none",
},
},
["stickyDuration"] = false,
["font"] = "Friz Quadrata TT",
["authorOptions"] = {
},
["subRegions"] = {
{
["type"] = "subbackground",
},
{
["text_shadowXOffset"] = 0,
["text_text"] = "%p",
["text_shadowColor"] = {
0,
0,
0,
1,
},
["text_selfPoint"] = "AUTO",
["text_automaticWidth"] = "Auto",
["text_fixedWidth"] = 64,
["anchorYOffset"] = 0,
["text_justify"] = "CENTER",
["rotateText"] = "NONE",
["text_text_format_p_time_legacy_floor"] = false,
["type"] = "subtext",
["text_text_format_p_time_dynamic_threshold"] = 60,
["text_color"] = {
1,
1,
1,
1,
},
["text_font"] = "Friz Quadrata TT",
["text_text_format_p_format"] = "timed",
["text_shadowYOffset"] = 0,
["text_text_format_p_time_mod_rate"] = true,
["text_wordWrap"] = "WordWrap",
["text_visible"] = true,
["text_anchorPoint"] = "CENTER",
["text_text_format_p_time_format"] = 0,
["text_fontType"] = "OUTLINE",
["text_fontSize"] = 12,
["anchorXOffset"] = 0,
["text_text_format_p_time_precision"] = 1,
},
},
["height"] = 64,
["useCooldownModRate"] = true,
["load"] = {
["use_never"] = false,
["talent"] = {
["multi"] = {
},
},
["class"] = {
["multi"] = {
},
},
["zoneIds"] = "",
["difficulty"] = {
["multi"] = {
},
},
["race"] = {
["multi"] = {
},
},
["role"] = {
["multi"] = {
},
},
["faction"] = {
["multi"] = {
},
},
["spec"] = {
["multi"] = {
},
},
["use_combat"] = true,
["pvptalent"] = {
["multi"] = {
},
},
["size"] = {
["multi"] = {
},
},
},
["cooldown"] = true,
["useAdjustededMax"] = false,
["fontSize"] = 12,
["displayStacks"] = "%s",
["selfPoint"] = "CENTER",
["stacksPoint"] = "BOTTOMRIGHT",
["conditions"] = {
},
["keepAspectRatio"] = false,
["useAdjustededMin"] = false,
["regionType"] = "icon",
["alpha"] = 1,
["uid"] = "Q1Uk5IwCPxp",
["color"] = {
1,
1,
1,
1,
},
["anchorFrameType"] = "SCREEN",
["cooldownTextDisabled"] = false,
["stacksContainment"] = "INSIDE",
["zoom"] = 0,
["auto"] = true,
["actions"] = {
["start"] = {
},
["finish"] = {
},
["init"] = {
},
},
["id"] = "WarucksTotalSilence_Kick",
["xOffset"] = 0,
["frameStrata"] = 1,
["width"] = 64,
["fontFlags"] = "OUTLINE",
["config"] = {
},
["inverse"] = false,
["desaturate"] = false,
["displayIcon"] = 132219,
["information"] = {
["forceEvents"] = true,
["ignoreOptionsEventErrors"] = true,
},
["textColor"] = {
1,
1,
1,
1,
},
},
["WarucksTotalSilence_Info"] = {
["outline"] = "OUTLINE",
["color"] = {
1,
1,
1,
1,
},
["displayText"] = "%c",
["customText"] = "function(...)\n    if TotalSilenceGlobalFunctions then\n        \n        a,b = TotalSilenceGlobalFunctions.getNumberClients()\n        return b..\"/\"..a\n    end\n    return \"0\"\nend\n\n\n\n\n\n",
["shadowYOffset"] = -1,
["anchorPoint"] = "CENTER",
["customTextUpdate"] = "update",
["automaticWidth"] = "Auto",
["actions"] = {
["start"] = {
},
["init"] = {
},
["finish"] = {
},
},
["triggers"] = {
{
["trigger"] = {
["type"] = "unit",
["use_health"] = true,
["subeventSuffix"] = "_CAST_START",
["event"] = "Health",
["subeventPrefix"] = "SPELL",
["health_operator"] = {
">=",
},
["spellIds"] = {
},
["health"] = {
"1",
},
["use_unit"] = true,
["unit"] = "player",
["unevent"] = "auto",
["names"] = {
},
["debuffType"] = "HELPFUL",
},
["untrigger"] = {
},
},
["disjunctive"] = "all",
["activeTriggerMode"] = -10,
},
["internalVersion"] = 75,
["animation"] = {
["start"] = {
["type"] = "none",
["duration_type"] = "seconds",
["easeStrength"] = 3,
["easeType"] = "none",
},
["main"] = {
["type"] = "none",
["duration_type"] = "seconds",
["easeStrength"] = 3,
["easeType"] = "none",
},
["finish"] = {
["type"] = "none",
["duration_type"] = "seconds",
["easeStrength"] = 3,
["easeType"] = "none",
},
},
["font"] = "Friz Quadrata TT",
["subRegions"] = {
{
["type"] = "subbackground",
},
},
["height"] = 24.999988555908,
["load"] = {
["use_never"] = false,
["talent"] = {
["multi"] = {
},
},
["class"] = {
["multi"] = {
},
},
["zoneIds"] = "",
["difficulty"] = {
["multi"] = {
},
},
["race"] = {
["multi"] = {
},
},
["role"] = {
["multi"] = {
},
},
["faction"] = {
["multi"] = {
},
},
["spec"] = {
["multi"] = {
},
},
["use_combat"] = true,
["pvptalent"] = {
["multi"] = {
},
},
["size"] = {
["multi"] = {
},
},
},
["fontSize"] = 25,
["shadowXOffset"] = 1,
["regionType"] = "text",
["displayText_format_c_format"] = "none",
["authorOptions"] = {
},
["fixedWidth"] = 200,
["wordWrap"] = "WordWrap",
["justify"] = "LEFT",
["xOffset"] = 60,
["id"] = "WarucksTotalSilence_Info",
["parent"] = "WarucksTotalSilence",
["frameStrata"] = 1,
["width"] = 43.999935150146,
["uid"] = "GfzPSb5Nwvh",
["config"] = {
},
["anchorFrameType"] = "SCREEN",
["yOffset"] = -16,
["shadowColor"] = {
0,
0,
0,
1,
},
["conditions"] = {
},
["information"] = {
["forceEvents"] = true,
["ignoreOptionsEventErrors"] = true,
},
["selfPoint"] = "BOTTOM",
},
["WarucksTotalSilence_Timer"] = {
["sparkWidth"] = 10,
["iconSource"] = -1,
["parent"] = "WarucksTotalSilence",
["adjustedMax"] = "",
["adjustedMin"] = "",
["yOffset"] = -40,
["anchorPoint"] = "CENTER",
["config"] = {
},
["borderBackdrop"] = "Blizzard Tooltip",
["sparkRotation"] = 0,
["customTextUpdate"] = "update",
["xOffset"] = 30,
["actions"] = {
["start"] = {
},
["finish"] = {
},
["init"] = {
},
},
["triggers"] = {
{
["trigger"] = {
["type"] = "custom",
["custom_hide"] = "timed",
["custom_type"] = "status",
["subeventSuffix"] = "_CAST_START",
["unit"] = "player",
["event"] = "Health",
["names"] = {
},
["customDuration"] = "function(...)\n    if TotalSilenceGlobalFunctions then\n        return TotalSilenceGlobalFunctions.getTimerValues()\n    end\n    \n    return 1,1\nend\n\n\n\n\n\n",
["custom"] = "function(...)\n    if TotalSilenceGlobalFunctions then\n        return TotalSilenceGlobalFunctions.getTimerEnabled()\n    end\n    \n    return false\nend",
["spellIds"] = {
},
["unevent"] = "auto",
["check"] = "update",
["use_unit"] = true,
["subeventPrefix"] = "SPELL",
["debuffType"] = "HELPFUL",
},
["untrigger"] = {
["custom"] = "function(...)\n    if TotalSilenceGlobalFunctions then\n        return not TotalSilenceGlobalFunctions.getTimerEnabled()\n    end\n    \n    return true\nend\n\n\n\n",
},
},
["disjunctive"] = "all",
["activeTriggerMode"] = -10,
},
["icon_color"] = {
1,
1,
1,
1,
},
["internalVersion"] = 75,
["progressSource"] = {
-1,
"",
},
["selfPoint"] = "CENTER",
["barInFront"] = true,
["sparkOffsetX"] = 0,
["barColor"] = {
1,
0,
0,
1,
},
["desaturate"] = false,
["barColor2"] = {
1,
1,
0,
1,
},
["sparkRotationMode"] = "AUTO",
["sparkOffsetY"] = 0,
["subRegions"] = {
{
["type"] = "subbackground",
},
{
["type"] = "subforeground",
},
{
["type"] = "subborder",
["border_anchor"] = "bar",
["border_size"] = 16,
["border_color"] = {
1,
1,
1,
0.5,
},
["border_visible"] = false,
["border_edge"] = "None",
["border_offset"] = 5,
},
{
["text_shadowXOffset"] = 1,
["text_text"] = "%p",
["text_text_format_p_format"] = "timed",
["text_selfPoint"] = "AUTO",
["text_automaticWidth"] = "Auto",
["text_fixedWidth"] = 64,
["anchorYOffset"] = 0,
["text_justify"] = "CENTER",
["rotateText"] = "NONE",
["text_text_format_p_time_mod_rate"] = true,
["type"] = "subtext",
["text_text_format_p_time_dynamic_threshold"] = 60,
["text_color"] = {
1,
1,
1,
1,
},
["text_font"] = "Friz Quadrata TT",
["text_shadowColor"] = {
0,
0,
0,
1,
},
["text_shadowYOffset"] = -1,
["text_text_format_p_time_precision"] = 1,
["text_wordWrap"] = "WordWrap",
["text_fontType"] = "None",
["text_anchorPoint"] = "INNER_RIGHT",
["text_text_format_p_time_format"] = 0,
["text_visible"] = true,
["text_fontSize"] = 12,
["anchorXOffset"] = 0,
["text_text_format_p_time_legacy_floor"] = true,
},
{
["text_shadowXOffset"] = 1,
["text_text"] = "%n",
["text_shadowColor"] = {
0,
0,
0,
1,
},
["text_selfPoint"] = "AUTO",
["text_automaticWidth"] = "Auto",
["text_fixedWidth"] = 64,
["anchorYOffset"] = 0,
["text_justify"] = "CENTER",
["rotateText"] = "NONE",
["type"] = "subtext",
["text_color"] = {
1,
1,
1,
1,
},
["text_font"] = "Friz Quadrata TT",
["text_shadowYOffset"] = -1,
["text_wordWrap"] = "WordWrap",
["text_fontType"] = "None",
["text_anchorPoint"] = "INNER_LEFT",
["text_text_format_n_format"] = "none",
["text_fontSize"] = 12,
["anchorXOffset"] = 0,
["text_visible"] = true,
},
{
["text_shadowXOffset"] = 1,
["text_text_format_s_format"] = "none",
["text_text"] = "%s",
["text_shadowColor"] = {
0,
0,
0,
1,
},
["text_selfPoint"] = "AUTO",
["text_automaticWidth"] = "Auto",
["text_fixedWidth"] = 64,
["anchorYOffset"] = 0,
["text_justify"] = "CENTER",
["rotateText"] = "NONE",
["type"] = "subtext",
["text_color"] = {
1,
1,
1,
1,
},
["text_font"] = "Friz Quadrata TT",
["text_shadowYOffset"] = -1,
["text_wordWrap"] = "WordWrap",
["text_fontType"] = "None",
["text_anchorPoint"] = "ICON_CENTER",
["text_fontSize"] = 12,
["anchorXOffset"] = 0,
["text_visible"] = true,
},
},
["gradientOrientation"] = "HORIZONTAL",
["textureSource"] = "LSM",
["load"] = {
["use_never"] = false,
["talent"] = {
["multi"] = {
},
},
["class"] = {
["multi"] = {
},
},
["zoneIds"] = "",
["difficulty"] = {
["multi"] = {
},
},
["race"] = {
["multi"] = {
},
},
["role"] = {
["multi"] = {
},
},
["faction"] = {
["multi"] = {
},
},
["spec"] = {
["multi"] = {
},
},
["use_combat"] = true,
["pvptalent"] = {
["multi"] = {
},
},
["size"] = {
["multi"] = {
},
},
},
["sparkBlendMode"] = "ADD",
["backdropColor"] = {
1,
1,
1,
0.5,
},
["authorOptions"] = {
},
["icon"] = false,
["fontFlags"] = "OUTLINE",
["enableGradient"] = false,
["animation"] = {
["start"] = {
["duration_type"] = "seconds",
["type"] = "none",
["easeStrength"] = 3,
["easeType"] = "none",
},
["main"] = {
["duration_type"] = "seconds",
["type"] = "none",
["easeStrength"] = 3,
["easeType"] = "none",
},
["finish"] = {
["duration_type"] = "seconds",
["type"] = "none",
["easeStrength"] = 3,
["easeType"] = "none",
},
},
["stickyDuration"] = false,
["useAdjustededMin"] = false,
["regionType"] = "aurabar",
["uid"] = "P(Ys6CZwF31",
["height"] = 18,
["icon_side"] = "RIGHT",
["useAdjustededMax"] = false,
["auto"] = true,
["sparkHeight"] = 30,
["texture"] = "Blizzard",
["anchorFrameType"] = "SCREEN",
["zoom"] = 0,
["spark"] = false,
["alpha"] = 1,
["id"] = "WarucksTotalSilence_Timer",
["sparkHidden"] = "NEVER",
["frameStrata"] = 1,
["width"] = 124,
["backgroundColor"] = {
0,
0,
0,
0.5,
},
["sparkColor"] = {
1,
1,
1,
1,
},
["inverse"] = false,
["sparkDesature"] = false,
["orientation"] = "HORIZONTAL",
["conditions"] = {
},
["information"] = {
["forceEvents"] = true,
["ignoreOptionsEventErrors"] = true,
},
["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
},
["WarucksTotalSilence"] = {
["backdropColor"] = {
1,
1,
1,
0.5,
},
["controlledChildren"] = {
"WarucksTotalSilence_Kick",
"WarucksTotalSilence_Info",
"WarucksTotalSilence_Timer",
},
["borderBackdrop"] = "Blizzard Tooltip",
["authorOptions"] = {
},
["information"] = {
["groupOffset"] = true,
["forceEvents"] = true,
["ignoreOptionsEventErrors"] = true,
},
["border"] = false,
["borderEdge"] = "None",
["regionType"] = "group",
["borderSize"] = 16,
["internalVersion"] = 75,
["borderColor"] = {
1,
1,
1,
0.5,
},
["xOffset"] = 0,
["actions"] = {
["start"] = {
},
["init"] = {
},
["finish"] = {
},
},
["triggers"] = {
{
["trigger"] = {
["type"] = "unit",
["use_alwaystrue"] = false,
["subeventSuffix"] = "_CAST_START",
["event"] = "Conditions",
["unit"] = "player",
["spellIds"] = {
},
["names"] = {
},
["subeventPrefix"] = "SPELL",
["debuffType"] = "HELPFUL",
},
["untrigger"] = {
},
},
["disjunctive"] = "all",
["activeTriggerMode"] = -10,
},
["yOffset"] = 0,
["borderOffset"] = 5,
["animation"] = {
["start"] = {
["type"] = "none",
["duration_type"] = "seconds",
["easeStrength"] = 3,
["easeType"] = "none",
},
["main"] = {
["type"] = "none",
["duration_type"] = "seconds",
["easeStrength"] = 3,
["easeType"] = "none",
},
["finish"] = {
["type"] = "none",
["duration_type"] = "seconds",
["easeStrength"] = 3,
["easeType"] = "none",
},
},
["selfPoint"] = "BOTTOMLEFT",
["id"] = "WarucksTotalSilence",
["alpha"] = 1,
["frameStrata"] = 1,
["anchorFrameType"] = "SCREEN",
["config"] = {
},
["uid"] = "qP9bmoMrkj7",
["borderInset"] = 11,
["anchorPoint"] = "CENTER",
["conditions"] = {
},
["load"] = {
["talent"] = {
["multi"] = {
},
},
["class"] = {
["multi"] = {
},
},
["size"] = {
["multi"] = {
},
},
["use_class"] = false,
["role"] = {
["multi"] = {
},
},
["pvptalent"] = {
["multi"] = {
},
},
["faction"] = {
["multi"] = {
},
},
["race"] = {
["multi"] = {
},
},
["spec"] = {
["multi"] = {
},
},
["difficulty"] = {
["multi"] = {
},
},
["zoneIds"] = "",
},
["scale"] = 1,
},
},
["login_squelch_time"] = 10,
["lastArchiveClear"] = 1722130473,
["minimap"] = {
["hide"] = false,
},
["lastUpgrade"] = 1722130495,
["dbVersion"] = 75,
["migrationCutoff"] = 730,
["registered"] = {
},
["historyCutoff"] = 730,
["features"] = {
},
}
