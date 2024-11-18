
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
["custom"] = "function(...)\n    if TotalSilenceGlobalFunctions then\n        return TotalSilenceGlobalFunctions.getPlayerIsNext()\n    end\n    \n    return false\nend\n\n\n\n\n\n\n\n",
["check"] = "update",
["names"] = {
},
["subeventSuffix"] = "_CAST_START",
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
["stickyDuration"] = false,
["font"] = "Friz Quadrata TT",
["cooldown"] = true,
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
["text_text_format_p_time_precision"] = 1,
["type"] = "subtext",
["anchorXOffset"] = 0,
["text_color"] = {
1,
1,
1,
1,
},
["text_font"] = "Friz Quadrata TT",
["text_text_format_p_format"] = "timed",
["text_shadowYOffset"] = 0,
["text_visible"] = true,
["text_wordWrap"] = "WordWrap",
["text_fontType"] = "OUTLINE",
["text_anchorPoint"] = "CENTER",
["text_text_format_p_time_format"] = 0,
["text_text_format_p_time_mod_rate"] = true,
["text_fontSize"] = 12,
["text_text_format_p_time_dynamic_threshold"] = 60,
["text_text_format_p_time_legacy_floor"] = false,
},
},
["height"] = 64,
["frameStrata"] = 1,
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
["size"] = {
["multi"] = {
},
},
["difficulty"] = {
["multi"] = {
},
},
["race"] = {
["multi"] = {
},
},
["faction"] = {
["multi"] = {
},
},
["pvptalent"] = {
["multi"] = {
},
},
["spec"] = {
["multi"] = {
},
},
["use_combat"] = true,
["role"] = {
["multi"] = {
},
},
["zoneIds"] = "",
},
["selfPoint"] = "CENTER",
["useAdjustededMax"] = false,
["fontSize"] = 12,
["displayStacks"] = "%s",
["desaturate"] = false,
["stacksPoint"] = "BOTTOMRIGHT",
["displayIcon"] = 132219,
["useCooldownModRate"] = true,
["useAdjustededMin"] = false,
["regionType"] = "icon",
["fontFlags"] = "OUTLINE",
["config"] = {
},
["xOffset"] = 0,
["width"] = 64,
["zoom"] = 0,
["stacksContainment"] = "INSIDE",
["cooldownTextDisabled"] = false,
["auto"] = true,
["actions"] = {
["start"] = {
},
["init"] = {
},
["finish"] = {
},
},
["id"] = "WarucksTotalSilence_Kick",
["authorOptions"] = {
},
["alpha"] = 1,
["anchorFrameType"] = "SCREEN",
["color"] = {
1,
1,
1,
1,
},
["uid"] = "T6sRTlSliOm",
["inverse"] = false,
["keepAspectRatio"] = false,
["conditions"] = {
},
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
["finish"] = {
},
["init"] = {
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
["names"] = {
},
["health"] = {
"1",
},
["unevent"] = "auto",
["unit"] = "player",
["use_unit"] = true,
["spellIds"] = {
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
["size"] = {
["multi"] = {
},
},
["difficulty"] = {
["multi"] = {
},
},
["race"] = {
["multi"] = {
},
},
["faction"] = {
["multi"] = {
},
},
["pvptalent"] = {
["multi"] = {
},
},
["spec"] = {
["multi"] = {
},
},
["use_combat"] = true,
["role"] = {
["multi"] = {
},
},
["zoneIds"] = "",
},
["fontSize"] = 25,
["shadowXOffset"] = 1,
["regionType"] = "text",
["selfPoint"] = "BOTTOM",
["authorOptions"] = {
},
["conditions"] = {
},
["wordWrap"] = "WordWrap",
["justify"] = "LEFT",
["yOffset"] = -16,
["id"] = "WarucksTotalSilence_Info",
["width"] = 43.999935150146,
["frameStrata"] = 1,
["anchorFrameType"] = "SCREEN",
["config"] = {
},
["uid"] = "YV7qtf6qTIB",
["parent"] = "WarucksTotalSilence",
["xOffset"] = 60,
["shadowColor"] = {
0,
0,
0,
1,
},
["fixedWidth"] = 200,
["information"] = {
["forceEvents"] = true,
["ignoreOptionsEventErrors"] = true,
},
["displayText_format_c_format"] = "none",
},
["WarucksTotalSilence_Timer"] = {
["sparkWidth"] = 10,
["borderBackdrop"] = "Blizzard Tooltip",
["parent"] = "WarucksTotalSilence",
["adjustedMax"] = "",
["adjustedMin"] = "",
["barInFront"] = true,
["anchorPoint"] = "CENTER",
["stickyDuration"] = false,
["iconSource"] = -1,
["sparkRotation"] = 0,
["sparkRotationMode"] = "AUTO",
["xOffset"] = 30,
["backgroundColor"] = {
0,
0,
0,
0.5,
},
["fontFlags"] = "OUTLINE",
["icon_color"] = {
1,
1,
1,
1,
},
["enableGradient"] = false,
["progressSource"] = {
-1,
"",
},
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
["yOffset"] = -40,
["sparkOffsetX"] = 0,
["barColor"] = {
1,
0,
0,
1,
},
["desaturate"] = false,
["information"] = {
["forceEvents"] = true,
["ignoreOptionsEventErrors"] = true,
},
["customTextUpdate"] = "update",
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
["border_offset"] = 5,
["border_color"] = {
1,
1,
1,
0.5,
},
["border_visible"] = false,
["border_edge"] = "None",
["border_size"] = 16,
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
["text_text_format_p_time_legacy_floor"] = true,
["type"] = "subtext",
["anchorXOffset"] = 0,
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
["text_fontType"] = "None",
["text_wordWrap"] = "WordWrap",
["text_visible"] = true,
["text_anchorPoint"] = "INNER_RIGHT",
["text_text_format_p_time_format"] = 0,
["text_text_format_p_time_precision"] = 1,
["text_fontSize"] = 12,
["text_text_format_p_time_dynamic_threshold"] = 60,
["text_text_format_p_time_mod_rate"] = true,
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
["text_visible"] = true,
["text_fontSize"] = 12,
["anchorXOffset"] = 0,
["text_text_format_n_format"] = "none",
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
["height"] = 18,
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
["size"] = {
["multi"] = {
},
},
["difficulty"] = {
["multi"] = {
},
},
["race"] = {
["multi"] = {
},
},
["faction"] = {
["multi"] = {
},
},
["pvptalent"] = {
["multi"] = {
},
},
["spec"] = {
["multi"] = {
},
},
["use_combat"] = true,
["role"] = {
["multi"] = {
},
},
["zoneIds"] = "",
},
["sparkBlendMode"] = "ADD",
["backdropColor"] = {
1,
1,
1,
0.5,
},
["icon"] = false,
["triggers"] = {
{
["trigger"] = {
["type"] = "custom",
["debuffType"] = "HELPFUL",
["custom_type"] = "status",
["names"] = {
},
["subeventPrefix"] = "SPELL",
["event"] = "Health",
["use_unit"] = true,
["customDuration"] = "function(...)\n    if TotalSilenceGlobalFunctions then\n        return TotalSilenceGlobalFunctions.getTimerValues()\n    end\n    \n    return 1,1\nend\n\n\n\n\n\n",
["spellIds"] = {
},
["custom"] = "function(...)\n    if TotalSilenceGlobalFunctions then\n        return TotalSilenceGlobalFunctions.getTimerEnabled()\n    end\n    \n    return false\nend",
["unevent"] = "auto",
["check"] = "update",
["unit"] = "player",
["subeventSuffix"] = "_CAST_START",
["custom_hide"] = "timed",
},
["untrigger"] = {
["custom"] = "function(...)\n    if TotalSilenceGlobalFunctions then\n        return not TotalSilenceGlobalFunctions.getTimerEnabled()\n    end\n    \n    return true\nend\n\n\n\n",
},
},
["disjunctive"] = "all",
["activeTriggerMode"] = -10,
},
["internalVersion"] = 75,
["selfPoint"] = "CENTER",
["authorOptions"] = {
},
["useAdjustededMax"] = false,
["useAdjustededMin"] = false,
["regionType"] = "aurabar",
["config"] = {
},
["gradientOrientation"] = "HORIZONTAL",
["icon_side"] = "RIGHT",
["zoom"] = 0,
["width"] = 124,
["sparkHeight"] = 30,
["texture"] = "Blizzard",
["frameStrata"] = 1,
["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
["spark"] = false,
["uid"] = "vwG9WTdmtFL",
["sparkHidden"] = "NEVER",
["id"] = "WarucksTotalSilence_Timer",
["alpha"] = 1,
["anchorFrameType"] = "SCREEN",
["auto"] = true,
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
["barColor2"] = {
1,
1,
0,
1,
},
["actions"] = {
["start"] = {
},
["init"] = {
},
["finish"] = {
},
},
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
["load"] = {
["talent"] = {
["multi"] = {
},
},
["class"] = {
["multi"] = {
},
},
["zoneIds"] = "",
["use_class"] = false,
["role"] = {
["multi"] = {
},
},
["difficulty"] = {
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
["race"] = {
["multi"] = {
},
},
["pvptalent"] = {
["multi"] = {
},
},
["size"] = {
["multi"] = {
},
},
},
["border"] = false,
["borderEdge"] = "None",
["regionType"] = "group",
["borderSize"] = 16,
["borderOffset"] = 5,
["borderColor"] = {
1,
1,
1,
0.5,
},
["scale"] = 1,
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
["internalVersion"] = 75,
["anchorPoint"] = "CENTER",
["selfPoint"] = "BOTTOMLEFT",
["id"] = "WarucksTotalSilence",
["uid"] = "lZbQaPtf(33",
["frameStrata"] = 1,
["anchorFrameType"] = "SCREEN",
["borderInset"] = 11,
["config"] = {
},
["alpha"] = 1,
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
["conditions"] = {
},
["information"] = {
["ignoreOptionsEventErrors"] = true,
["forceEvents"] = true,
["groupOffset"] = true,
},
["xOffset"] = 0,
},
},
["registered"] = {
},
["lastArchiveClear"] = 1720727552,
["minimap"] = {
["hide"] = false,
},
["lastUpgrade"] = 1720727577,
["dbVersion"] = 75,
["migrationCutoff"] = 730,
["features"] = {
},
["login_squelch_time"] = 10,
["historyCutoff"] = 730,
}
