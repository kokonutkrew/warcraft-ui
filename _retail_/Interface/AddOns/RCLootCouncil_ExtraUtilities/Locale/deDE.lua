-- Translate RCLootCouncil - ExtraUtilities to your language at:
-- http://wow.curseforge.com/addons/rclootcouncil-extrautilities/localization/

local L = LibStub("AceLocale-3.0"):NewLocale("RCExtraUtilities", "deDE")
if not L then return end

--[[Translation missing --]]
L["Accept Pawn"] = "Accept Pawn"
L["Advanced"] = "Erweitert"
L["Artifact Traits"] = "Artefaktboni"
L["Bonus"] = true
L["Bonus Rolls"] = "Bonuswürfe"
--[[Translation missing --]]
L["Bonus Rolls to History"] = "Bonus Rolls to History"
--[[Translation missing --]]
L["chat_cmd_desc"] = "Opens the ExtraUtilities options window"
L["Class"] = "Klasse"
L["column_width_desc"] = "Wähle die Breite der Spalte %s."
L["Extra Utilities Columns"] = "Zusätzliche Hilfsspalten"
L["extra_util_desc"] = [=[RCLootCouncil - Extra Utilities |cFF87CEFAv %s |r.
Hinweis: Diese Einstellungen werden nicht mit der Gruppe geteilt, daher kann jedes Ratsmitglied andere Einstellungen haben.]=]
L["Forged"] = "Geschmiedet"
L["Guild Notes"] = "Gildennotizen"
L["GuildNote"] = "Gildennotiz"
L["ilvl Decimals"] = "GS-Nachkommastellen"
L["ilvl Upg."] = "GS-Aufw."
L["ilvl Upgrades"] = "GS-Aufwertungen"
L["Legendaries"] = "Legendäre Ggst."
L["Officer Note"] = "Offiziersnotiz"
L["Open Voting Frame"] = "Abstimmungsfenster öffnen"
--[[Translation missing --]]
L["opt_acceptPawn_desc"] = "Enables candidates to calculate and send their own Pawn scores instead of relying on you to keep your own scales up to date."
--[[Translation missing --]]
L["opt_addon_requirement"] = "needs to be installed and enabled to use this option."
--[[Translation missing --]]
L["opt_advanced_desc"] = [=[Here you can change the position and width of the columns.
Positions accepts both positive (indicating which order a column should come in) and negative (how far from the end) numbers.
Click the button to open the voting frame and see your changes right away.
Note: There's no guarantee of the order if several columns share the same index once calculated. Do a /reload to check the permanent changes, or enter exact values to be certain.
]=]
--[[Translation missing --]]
L["opt_advReset_desc"] = "Resets all positions and widths to default."
L["opt_bonusRoll_desc"] = "Aktiviert eine Spalte, die die Bonuswürfe eines Kandidaten anzeigt, falls es welche gibt."
--[[Translation missing --]]
L["opt_bonusRollHistory_desc"] = "Check to save all item bonus rolls to the Loot History. Only works if you're the Master Looter"
--[[Translation missing --]]
L["opt_ep_desc"] = "Enables a column showing the candidates EP values as gathered from EPGP."
L["opt_forged_desc"] = "Aktiviert eine Spalte, die anzeigt, wie viele titan- und kriegsgeschmiedete Gegenstände der Kandidat angelegt hat."
--[[Translation missing --]]
L["opt_gp_desc"] = "Enables a column showing the candidate's GP values as gathered from EPGP."
L["opt_guildNotes_desc"] = "Aktiviert eine Spalte, die die Gilden- und Offiziersnotizen eines Kandidaten anzeigt, falls es welche gibt und du berechtigt bist, diese zu sehen."
L["opt_ilvldecimals_desc"] = "Aktiviere diese Option, damit die Gegenstandsstufe in der Spalte GS genauer angezeigt wird."
L["opt_ilvlupgrades_desc"] = "Aktiviert die Anzeige einer Spalte, die anzeigt, wie viele Gegenstandsstufen ein Kandidat insgesamt durch Gegenstandsaufwertungen erhalten hat. Es ist im Grunde die \"Aufwertungsoption\" in tatsächliche Gegenstandsstufen umgesetzt."
L["opt_legendaries_desc"] = "Aktiviert die Anzeige einer Spalte, die anzeigt, wie viele legendäre Gegenstände der Kandidat angelegt hat."
L["opt_normalcolumn_desc"] = "Aktiviert die Spalte %s von RCLootCouncil."
--[[Translation missing --]]
L["opt_pawn_desc"] = "Enables a Pawn column, showing upgrade statistics for the candidate."
L["opt_pawn_warning"] = "Du kannst die Pawn-Spalte nicht aktivieren, wenn du Pawn nicht installiert hast."
--[[Translation missing --]]
L["opt_pawnMode_desc"] = "Enabling this will display the raw Pawn scores, while disabling will result in upgrade percentage scores."
--[[Translation missing --]]
L["opt_position_desc"] = "Change the position of the %s column"
--[[Translation missing --]]
L["opt_position_usage"] = "Accepts postive and negative numbers only."
--[[Translation missing --]]
L["opt_pr_desc"] = "Enables a column showing PR values, calculated as EP / GP."
--[[Translation missing --]]
L["opt_scalesGroup_desc"] = [=[Here you can change the Pawn scales RCLootCouncil uses. You can edit these scales through Pawn (/pawn). Note the scale weights are forced to be normalized. You should do a /reload if you recently created a new scale.
]=]
L["opt_setpieces_desc"] = "Aktiviert die Anzeige einer Spalte, die anzeigt, wie viele Setteile der Kandidat angelegt hat."
L["opt_sockets_desc"] = "Aktiviert die Anzeige einer Spalte, die anzeigt, wie viele Sockel sich in den angelegten Gegenständen des Kandidaten befinden."
L["opt_specIcon_desc"] = "Aktiviert die Anzeige einer Spalte, die die Spezialisierung eines Kandidaten anzeigt."
L["opt_traits_desc"] = "Aktiviert die Anzeige einer Spalte, die anzeigt, wie viele Artefaktboni ein Kandidat hat."
--[[Translation missing --]]
L["opt_upgrades_desc"] = "Enables a column showing x of y valor upgrades a candidate has performed."
L["Other"] = "Sonstige"
--[[Translation missing --]]
L["Pawn column was disabled as Pawn isn't installed."] = "Pawn column was disabled as Pawn isn't installed."
--[[Translation missing --]]
L["Pawn specific options"] = "Pawn specific options"
L["RCLootCouncil Columns"] = "RCLootCouncil-Spalten"
--[[Translation missing --]]
L["RCScore was disabled as no damage meter is installed."] = "RCScore was disabled as no damage meter is installed."
--[[Translation missing --]]
L["Scales"] = "Scales"
--[[Translation missing --]]
L["Score Mode"] = "Raw Score"
L["Set Pieces"] = "Setteile"
L["Sockets"] = "Sockel"
L["Spec Icon"] = "Spez.-Symbol"
L["Traits"] = "Boni"
L["Upgrades"] = "Aufwertungen"
L["You can't change these settings while the voting frame is showing."] = "Du kannst diese Einstellungen nicht verändern, während das Abstimmungsfenster geöffnet ist."

