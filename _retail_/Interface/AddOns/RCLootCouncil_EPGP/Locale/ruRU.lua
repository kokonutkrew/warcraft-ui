-- Translate RCLootCouncil - EPGP to your language at:
-- http://wow.curseforge.com/addons/rclootcouncil-epgp/localization/

local L = LibStub("AceLocale-3.0"):NewLocale("RCEPGP", "ruRU")
if not L then return end

L["%s_formula_runtime_error"] = "Формула '%s' вызвала ошибку при вычислении."
L["%s_formula_syntax_error"] = "Формула '%s' синтаксически некорректна."
--[[Translation missing --]]
--[[ L["Add to recurring award"] = ""--]] 
--[[Translation missing --]]
--[[ L["Also screenshot in test mode"] = ""--]] 
--[[Translation missing --]]
--[[ L["Also screenshot when the item is bagged and will be awarded later"] = ""--]] 
L["amount_must_be_number"] = "Количество должно быть числом"
L["announce_#diffgp#_desc"] = "|cfffcd400 #diffgp#|r: Количество GP, которое получает игрок."
L["announce_#ep#_desc"] = "|cfffcd400 #ep#|r: Количество EP у игрока."
L["announce_#gp#_desc"] = "|cfffcd400 #gp#|r: Количество GP у игрока (до получения предмета)."
L["announce_#itemgp#_desc"] = "|cfffcd400 #itemgp#|r: Стоимость предмета в GP."
L["announce_#newgp#_desc"] = "|cfffcd400 #newgp#|r: Количество GP у игрока после получения предмета."
L["announce_#newpr#_desc"] = "|cfffcd400 #newpr#|r: Рейтинг (PR) игрока после получения предмета."
L["announce_#pr#_desc"] = "|cfffcd400 #pr#|r: Рейтинг (PR) игрока до получения предмета."
L["announce_awards_desc2"] = "RCLootCouncil-EPGP: #diffgp# для количества GP, которое получит игрок за предмет. #ep# для EP игрока. #gp# для GP игрока до получения предмета. #pr# для рейтинга (PR) игрока до получения предмета. #newgp# для GP игрока после получения предмета. #newpr# для рейтинга (PR) игрока после получения предмета."
L["announce_formula_runtime_error"] = "В вашей формуле для GP произошла ошибка при вычислении. Будет использована формула по умолчанию."
--[[Translation missing --]]
--[[ L["Award GP (Default: %s)"] = ""--]] 
--[[Translation missing --]]
--[[ L["Bid"] = ""--]] 
--[[Translation missing --]]
--[[ L["Bid Mode"] = ""--]] 
--[[Translation missing --]]
--[[ L["bid_gpAbsolute_desc"] = ""--]] 
--[[Translation missing --]]
--[[ L["bid_gpRelative_desc"] = ""--]] 
--[[Translation missing --]]
--[[ L["bid_prRelative_desc"] = ""--]] 
L["Bidding"] = "ставки"
L["bidding_desc"] = "Включение этого режима добавит кнопку в контекстном меню окна раздачи добычи, начисляющую GP игроку согласно его ставке. Доступно несколько режимов. Игрок может послать ставку распределяющему добычу, послав заметку в окне RCLootCouncil, начинающуюся с целого числа. Также можно прислать \"min\" для минимальной ставки, \"max\" для максимальной и \"default\" для ставки по умолчанию."
--[[Translation missing --]]
--[[ L["chat_commands"] = ""--]] 
L["Columns"] = "Колонки"
L["Credit GP to %s"] = "Начислить GP для игрока %s"
L["Custom EP"] = "пользовательское значение EP"
L["Custom GP"] = "пользовательское значение GP"
--[[Translation missing --]]
--[[ L["customEP_desc"] = ""--]] 
--[[Translation missing --]]
--[[ L["customEP_formula_add_recur_award_confirm"] = ""--]] 
--[[Translation missing --]]
--[[ L["customEP_formula_award_confirm"] = ""--]] 
--[[Translation missing --]]
--[[ L["customEP_formula_start_recur_award_confirm"] = ""--]] 
--[[Translation missing --]]
--[[ L["customEP_formula_stop_recur_award_confirm"] = ""--]] 
--[[Translation missing --]]
--[[ L["customEP_in_group_desc"] = ""--]] 
--[[Translation missing --]]
--[[ L["customEP_in_standby_desc"] = ""--]] 
--[[Translation missing --]]
--[[ L["customEP_in_zones_desc"] = ""--]] 
--[[Translation missing --]]
--[[ L["customEP_massEP_by_formulas"] = ""--]] 
--[[Translation missing --]]
--[[ L["customEP_none_of_the_above_desc"] = ""--]] 
--[[Translation missing --]]
--[[ L["customEP_not_in_zones_desc"] = ""--]] 
--[[Translation missing --]]
--[[ L["customEP_offline_desc"] = ""--]] 
--[[Translation missing --]]
--[[ L["customEP_online_desc"] = ""--]] 
--[[Translation missing --]]
--[[ L["customEP_rank_desc"] = ""--]] 
--[[Translation missing --]]
--[[ L["customEP_signed_up_in_calendar_desc"] = ""--]] 
--[[Translation missing --]]
--[[ L["customEP_zones_desc"] = ""--]] 
--[[Translation missing --]]
--[[ L["customGP_desc"] = ""--]] 
L["Default Bid"] = "Ставка по умолчанию"
L["default_bid_desc"] = "Ставка по умолчанию будет использована, если кандидат не прислал свою ставку."
L["disable_gp_popup"] = "Всплывающее окно GP автоматически отключается с помощью RCLootCouncil - EPGP."
L["DKP Mode"] = "Режим DKP"
L["dkp_mode_desc"] = "Если включен, все операции по увеличению/уменьшению GP будут сконвертированы в операции по уменьшению/увеличению EP соответственно."
--[[Translation missing --]]
--[[ L["Down"] = ""--]] 
L["Enable Bidding"] = "разрешать ставки"
L["enable_custom_gp"] = "Включить пользовательское значение GP"
L["EPGP_DKP_Reloaded_settings_received"] = "Получены настройки EPGP(dkp reloaded) через '/rc sync'."
L["error_no_target"] = "Ошибка: у вас нет цели."
L["forbidden_function_used"] = "В формуле была использована запрещенная функция. Вычисление формулы предотвращено. Пожалуйста, проверьте, содержат ли ваши формулы вредоносный код!"
L["Formula 'formula' does not exist"] = "Формула %s не существует"
L["formula_delete_confirm"] = "Вы уверены, что хотите удалить формулу %s?"
L["formula_syntax_error"] = "В формуле допущена синтаксическая ошибка"
--[[Translation missing --]]
--[[ L["General"] = ""--]] 
L["GP Bid"] = "ставку GP"
L["GP Options"] = "Настройки GP"
L["gp_formula"] = "Формула GP"
--[[Translation missing --]]
--[[ L["gp_formula_help"] = ""--]] 
L["gp_formula_syntax_error"] = "Формула содержит синтаксическую ошибку. Вместо нее будет использована формула по умолчанию."
L["gp_value_help"] = [=[Пример:
100%: использовать 100% от обычного значения GP
50%: использовать 50% от обычного значения GP
25: все вещи стоят 25 GP]=]
L["gp_variable_equipLoc_help"] = "Строка. Не локализованная строка с названием слота экипировки. Рекомендуется использовать переменную \"slotWeights\" вместо нее"
L["gp_variable_hasAvoid_help"] = "Целочисленное значение. 1 - если на предмете есть избегание, 0 в противном случае."
L["gp_variable_hasIndes_help"] = "Целочисленное значение. 1 - если предмет не теряет прочности, 0 в противном случае."
L["gp_variable_hasLeech_help"] = "Целочисленное значение. 1 - если на предмете есть самоисцеление, 0 в противном случае."
L["gp_variable_hasSpeed_help"] = "Целочисленное значение. 1 - если предмет c дополнительной скоростью передвижения, 0 в противном случае."
L["gp_variable_ilvl_help"] = "Целочисленное значение. Уровень предмета или базовый ilvl токена."
L["gp_variable_isHeroic_help"] = "Целое число. 1 если предмет из героической сложности, 0 в противном случае."
L["gp_variable_isMythic_help"] = "Целое число. 1 если предмет из мифической сложности, 0 в противном случае."
L["gp_variable_isNormal_help"] = "Целое число. 1 если предмет из обычной сложности, 0 в противном случае."
L["gp_variable_isTitanforged_help"] = "Целое число. 1 если предмет \"кованый титанами\", 0 в противном случае."
L["gp_variable_isToken_help"] = "Целочисленное значение. 1 - если это тировый токен, 0 в противном случае."
L["gp_variable_isWarforged_help"] = "Целое число. 1 если предмет \"закаленный в битве\", 0 в противном случае."
L["gp_variable_itemID_help"] = "Целочисленное значение. Id предмета."
L["gp_variable_link_help"] = "Строка. Полная ссылка на предмет"
L["gp_variable_numSocket_help"] = "Целочисленное значение. Количество гнезд в предмете."
L["gp_variable_rarity_help"] = "Целочисленное значение. Редкость предмета. 3-редкий, 4-эпический, 5-легендарный"
L["gp_variable_slotWeights_help"] = "Число. Вес предмета в зависимости от слота экипировки."
--[[Translation missing --]]
--[[ L["gpOptions"] = ""--]] 
--[[Translation missing --]]
--[[ L["gpOptionsButton"] = ""--]] 
--[[Translation missing --]]
--[[ L["Group Status"] = ""--]] 
L["In Group"] = "В группе"
L["In Standby"] = "В запасе"
--[[Translation missing --]]
--[[ L["In Zones"] = ""--]] 
L["Input must be a non-negative number."] = "Значение должно быть неотрицательным числом."
L["Input must be a number."] = "Значение должно быть числом."
L["Invalid input"] = "Введено недопустимое значение"
L["Max Bid"] = "Максимальная ставка"
L["Min Bid"] = "Минимальная ставка"
--[[Translation missing --]]
--[[ L["Min New PR"] = ""--]] 
--[[Translation missing --]]
--[[ L["min_new_pr_desc"] = ""--]] 
L["need_restart_notification"] = "Обновление RCLootCouncil-EPGP v%s требует полный перезапуск игры. Некоторые возможности аддона не будут работать до перезапуска."
L["new_version_detected"] = "Ваша версия %s устарела. Обнаружена более новая версия %s. Вы можете обновить аддон на странице [https://mods.curse.com/addons/wow/269161-rclootcouncil-epgp]"
L["no_permission_to_edit_officer_note"] = "У вас нет прав редактировать офицерскую заметку."
--[[Translation missing --]]
--[[ L["None of the above"] = ""--]] 
--[[Translation missing --]]
--[[ L["Not in your guild"] = ""--]] 
--[[Translation missing --]]
--[[ L["Not in Zones"] = ""--]] 
--[[Translation missing --]]
--[[ L["Online Status"] = ""--]] 
--[[Translation missing --]]
--[[ L["period_not_positive_error"] = ""--]] 
L["rc_version_below_min_notification"] = "Эта версия RCLootCouncil-EPGP требует RCLootCouncil версии v%s+. Ваш RCLootCouncil версии v%s. Пожалуйста, обновите ваш RCLootCouncil."
--[[Translation missing --]]
--[[ L["RCEPGP_desc"] = ""--]] 
--[[Translation missing --]]
--[[ L["Recurring Award Period(Min)"] = ""--]] 
--[[Translation missing --]]
--[[ L["recurring_award_formulas"] = ""--]] 
--[[Translation missing --]]
--[[ L["recurring_award_running"] = ""--]] 
--[[Translation missing --]]
--[[ L["Screenshot"] = ""--]] 
--[[Translation missing --]]
--[[ L["Screenshot failed"] = ""--]] 
--[[Translation missing --]]
--[[ L["Screenshot only when GP is awarded"] = ""--]] 
--[[Translation missing --]]
--[[ L["Screenshot succeeded"] = ""--]] 
--[[Translation missing --]]
--[[ L["Screenshot when a item is awarded"] = ""--]] 
--[[Translation missing --]]
--[[ L["send_epgp_setting_desc"] = ""--]] 
--[[Translation missing --]]
--[[ L["send_epgp_settings"] = ""--]] 
--[[Translation missing --]]
--[[ L["Setting Sync"] = ""--]] 
--[[Translation missing --]]
--[[ L["setting_reset_notification"] = ""--]] 
--[[Translation missing --]]
--[[ L["Signed up in calendar"] = ""--]] 
--[[Translation missing --]]
--[[ L["slash_help_footer"] = ""--]] 
--[[Translation missing --]]
--[[ L["slash_help_header"] = ""--]] 
--[[Translation missing --]]
--[[ L["slash_rc_command_failed"] = ""--]] 
--[[Translation missing --]]
--[[ L["slash_rc_ep_help"] = ""--]] 
--[[Translation missing --]]
--[[ L["slash_rc_ep_help_detailed"] = ""--]] 
--[[Translation missing --]]
--[[ L["slash_rc_gp_help"] = ""--]] 
--[[Translation missing --]]
--[[ L["slash_rc_gp_help_detailed"] = ""--]] 
--[[Translation missing --]]
--[[ L["slash_rc_massep_help"] = ""--]] 
--[[Translation missing --]]
--[[ L["slash_rc_massep_help_detailed"] = ""--]] 
--[[Translation missing --]]
--[[ L["slash_rc_recurep_help"] = ""--]] 
--[[Translation missing --]]
--[[ L["slash_rc_recurep_help_detailed"] = ""--]] 
--[[Translation missing --]]
--[[ L["slash_rc_stoprecur_help"] = ""--]] 
--[[Translation missing --]]
--[[ L["slash_rc_undogp_help"] = ""--]] 
--[[Translation missing --]]
--[[ L["slash_rc_undogp_help_detailed"] = ""--]] 
--[[Translation missing --]]
--[[ L["slash_rc_zs_help"] = ""--]] 
--[[Translation missing --]]
--[[ L["slash_rc_zs_help_detailed"] = ""--]] 
--[[Translation missing --]]
--[[ L["slash_rc_zsdr_help"] = ""--]] 
--[[Translation missing --]]
--[[ L["slash_rc_zsr_help"] = ""--]] 
L["slot_weights"] = "Вес слотов"
L["Undo GP"] = "Отменить GP"
--[[Translation missing --]]
--[[ L["Up"] = ""--]] 
L["You cannot use this command if you are not in raid."] = "Вы не можете использовать эту команду вне рейдовой группы."

