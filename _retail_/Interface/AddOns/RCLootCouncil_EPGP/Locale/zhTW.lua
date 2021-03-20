-- Translate RCLootCouncil - EPGP to your language at:
-- http://wow.curseforge.com/addons/rclootcouncil-epgp/localization/

local L = LibStub("AceLocale-3.0"):NewLocale("RCEPGP", "zhTW")
if not L then return end

L["%s_formula_runtime_error"] = "'%s' 公式有運行時錯誤。"
L["%s_formula_syntax_error"] = [=['%s' 公式有語法錯誤。
]=]
L["Add to recurring award"] = "加入循環獎勵"
L["Also screenshot in test mode"] = "測試模式時也截圖"
L["Also screenshot when the item is bagged and will be awarded later"] = "物品稍后分配時也截圖"
L["amount_must_be_number"] = "數量必須為數字"
L["announce_#diffgp#_desc"] = "|cfffcd400 #diffgp#|r: 玩家獲得的GP值。"
L["announce_#ep#_desc"] = "|cfffcd400 #ep#|r: 玩家的EP值。"
L["announce_#gp#_desc"] = "|cfffcd400 #gp#|r: 玩家獲得物品前的GP值。"
L["announce_#itemgp#_desc"] = "|cfffcd400 #itemgp#|r: 物品的GP值。"
L["announce_#newgp#_desc"] = "|cfffcd400 #newgp#|r: 玩家獲得物品后的GP值。"
L["announce_#newpr#_desc"] = "|cfffcd400 #newpr#|r: 玩家獲得物品后的PR值。"
L["announce_#pr#_desc"] = "|cfffcd400 #pr#|r: 玩家獲得物品前的PR值。"
L["announce_awards_desc2"] = [=[
RCLootCouncil-EPGP: #diffgp# 指代玩家從物品獲取的GP量. #ep# 指代玩家的EP值. #gp# 指代玩家獲取物品前的GP值. #pr# 指代玩家獲取物品前的PR值. #newgp# 指代玩家獲取物品后的GP值. #newpr# 指代玩家獲取物品后的PR值.]=]
L["announce_formula_runtime_error"] = "你的GP公式含有運行時錯誤。出錯時會使用默認公式。"
L["Award GP (Default: %s)"] = "獎勵GP （默認： %s)"
L["Bid"] = "出價"
L["Bid Mode"] = "競標模式"
L["bid_gpAbsolute_desc"] = "最高出價獲勝並獲得出價的GP值。"
L["bid_gpRelative_desc"] = "最高出價獲勝並獲得出價乘物品GP的GP值。"
L["bid_prRelative_desc"] = "最高出價乘PR獲勝並獲得出價乘物品GP的GP值"
L["Bidding"] = "競標"
L["bidding_desc"] = "啟用此項會在投票界面右鍵菜單裡加入一個按鈕根據玩家的出價獎勵GP。有多種競標模式。玩家可以在RCLootCouncil彈窗中向物品分配者發送以整數開始的備注以告知競標出價。他們也可以發送“min”表示最低出價，\"max\"表示最高出價，“default”表示默認出價。"
L["chat_commands"] = "- epgp     - 打開RCLootCouncil-EPGP配置界面"
L["Columns"] = "豎列"
L["Credit GP to %s"] = "給 %s 增加GP"
L["Custom EP"] = "自定義EP"
L["Custom GP"] = "自定義GP"
L["customEP_desc"] = [=[自定義EP使你可以自定義誰應該被包含在整體EP獎勵中。
你可以在這個窗口中使用整體EP獎勵功能，或者使用命令‘/rc massep’或‘/rc recurep’。
不帶參數運行以上命令顯示它們的幫助信息。]=]
L["customEP_formula_add_recur_award_confirm"] = "你確定要把公式 %s 加入正在運行中的循環獎勵中嗎？"
L["customEP_formula_award_confirm"] = "你確定要用公式 %s 進行整體EP獎勵嗎？"
L["customEP_formula_start_recur_award_confirm"] = "你確定要用公式 %s 開始循環獎勵嗎？"
L["customEP_formula_stop_recur_award_confirm"] = "你確定要停止循環獎勵嗎？"
L["customEP_in_group_desc"] = "候選人在團隊內時的EP百分比。"
L["customEP_in_standby_desc"] = "候選人在EPGP的待命列表裡但不在團隊內時的EP百分比。"
L["customEP_in_zones_desc"] = "候選人的所在區域符合以下任何區域時的EP百分比。"
L["customEP_massEP_by_formulas"] = "使用以下公式進行整體EP獎勵：%s"
L["customEP_none_of_the_above_desc"] = "候選人不在組裡，不在EPGP待命列表，也沒有在日歷中簽到時的EP百分比。"
L["customEP_not_in_zones_desc"] = "候選人的所在區域不符合以下任何區域時的EP百分比。"
L["customEP_offline_desc"] = "候選人不在線時的EP百分比。"
L["customEP_online_desc"] = "候選人在線時的EP百分比。"
L["customEP_rank_desc"] = "候選人的會階為此時的EP百分比"
L["customEP_signed_up_in_calendar_desc"] = "候選人在最近+-12h開始的一個公會日歷活動中確認，但不在團隊中，也不在EPGP待命列表中時的EP百分比。"
L["customEP_zones_desc"] = "在這裡輸入區域的名字或者ID。用英文逗號','分隔多個區域。忽略起始與末尾的空格。"
L["customGP_desc"] = "自定義GP使你可以為每件裝備定義自己的GP規則. 你需要為此定義計算GP值的公式。 你可以選擇禁用此功能，以EPGP(dkp reloaded)的默認方式計算EP值。"
L["Default Bid"] = "默認出價"
L["default_bid_desc"] = "如果候選人沒有發送出價，將使用此出價。"
L["disable_gp_popup"] = "GP彈窗被RCLootCouncil - EPGP自動禁用."
L["DKP Mode"] = "DKP模式"
L["dkp_mode_desc"] = "選中此項，插件的所有GP增加/減少操作將會被轉換為EP減少/增加操作。"
L["Down"] = "上移"
L["Enable Bidding"] = "開啟競標"
L["enable_custom_gp"] = "啟用自定義GP"
L["EPGP_DKP_Reloaded_settings_received"] = "通過'/rc sync'收到了EPGP(dkp reloaded)的設置."
L["error_no_target"] = "錯誤。 你沒有目標。"
L["forbidden_function_used"] = "公式內一個被禁止的命令試圖被執行，已經被阻止。請檢查公式是否含有惡意代碼!"
L["Formula 'formula' does not exist"] = "公式 %s 不存在"
L["formula_delete_confirm"] = "你確認要刪除公式 %s 嗎？"
L["formula_syntax_error"] = "公式有語法錯誤"
L["General"] = "常規"
L["GP Bid"] = "GP出價"
L["GP Options"] = "GP選項"
L["gp_formula"] = "GP公式"
L["gp_formula_help"] = [=[在下面的輸入框輸入返回GP值的LUA代碼。
如果輸入是單行語句, 例如 'a and b or c', 無需return語句。
如果有任何控制語句, 則需要return語句。
以下是代碼中可用的變量。]=]
L["gp_formula_syntax_error"] = "公式有語法錯誤。 將使用默認公式。"
L["gp_value_help"] = [=[例:
100%: 使用100%GP值
50%: 使用50%GP值
25: 所有物品價值25GP]=]
L["gp_variable_equipLoc_help"] = "字符串. 代表欄位的非本地化字符串. 如果可能,建議使用變量slotWeights代替."
L["gp_variable_hasAvoid_help"] = "整數. 1如果物品帶有迴避,否則為0."
L["gp_variable_hasIndes_help"] = "整數. 1如果物品永不磨損,否則為0."
L["gp_variable_hasLeech_help"] = "整數. 1如果物品帶有汲取,否則為0."
L["gp_variable_hasSpeed_help"] = "整數. 1如果物品帶有速度,否則為0."
L["gp_variable_ilvl_help"] = "整數.物品的裝備等級或者是套裝代幣的基礎裝等"
L["gp_variable_isHeroic_help"] = "整數. 1如果物品來自英雄難度,否則為0."
L["gp_variable_isMythic_help"] = "整數. 1如果物品來自傳奇難度,否則為0."
L["gp_variable_isNormal_help"] = "整數. 1如果物品來自普通難度,否則為0."
L["gp_variable_isTitanforged_help"] = "整數. 1如果物品泰坦造物,否則為0."
L["gp_variable_isToken_help"] = "整數. 1如果物品是套裝代幣,否則為0."
L["gp_variable_isWarforged_help"] = "整數. 1如果物品戰鑄,否則為0."
L["gp_variable_itemID_help"] = "整數. 物品的ID."
L["gp_variable_link_help"] = "字符串. 物品的完整鏈接."
L["gp_variable_numSocket_help"] = "整數. 物品裡插槽的數量."
L["gp_variable_rarity_help"] = "整數. 物品的稀有度. 3-精良,4-史詩,5-傳說."
L["gp_variable_slotWeights_help"] = "數字. 物品的欄位權重."
L["gpOptions"] = "回應的GP百分比"
L["gpOptionsButton"] = "打開配置回應的GP百分比的選項"
L["Group Status"] = "團隊狀態"
L["In Group"] = "在團隊內"
L["In Standby"] = "待命中"
L["In Zones"] = "在區域內"
L["Input must be a non-negative number."] = "輸入必須為非負數字。"
L["Input must be a number."] = "輸入必須為數字。"
L["Invalid input"] = "無效輸入"
L["Max Bid"] = "最高出價"
L["Min Bid"] = "最低出價"
L["Min New PR"] = "最小新PR"
L["min_new_pr_desc"] = "插件會計算候選人的最高出價，以保証在獲得物品和GP獎勵后他的PR不會低於此值。"
L["need_restart_notification"] = "RCLootCouncil-EPGP v%s更新需要重啟游戲客戶端. 插件的某些功能無法正常使用直到游戲客戶端重啟."
L["new_version_detected"] = "你的版本%s已過期. 檢測到新版本%s. 你可以從Curse.com或者Twitch客戶端更新此插件."
L["no_permission_to_edit_officer_note"] = "你無權修改官員備注"
L["None of the above"] = "以上都不是"
L["Not in your guild"] = "不在你的公會"
L["Not in Zones"] = "不在區域內"
L["Online Status"] = "在線狀態"
L["period_not_positive_error"] = "周期必須為正數"
L["rc_version_below_min_notification"] = "此版本的RCLootCouncil-EPGP要求RCLootCouncil v%s+. 你的RCLootCouncil的版本為v%s. 請更新RCLootCouncil."
L["RCEPGP_desc"] = "一個給RCLootCouncil添加了EPGP支持與自定義的插件. 作者: Safetee"
L["Recurring Award Period(Min)"] = "循環獎勵周期(Min)"
L["recurring_award_formulas"] = "當前循環獎勵公式： %s"
L["recurring_award_running"] = "循環獎勵已在運行。將這個公式加入到循環獎勵。"
L["Screenshot"] = "截圖"
L["Screenshot failed"] = "截圖失敗"
L["Screenshot only when GP is awarded"] = "隻在獎勵GP時截圖"
L["Screenshot succeeded"] = "截圖成功"
L["Screenshot when a item is awarded"] = "獎勵物品時截圖"
L["send_epgp_setting_desc"] = "如果被選中, '/rc sync'也會同步EPGP(dkp reloaded)的設置"
L["send_epgp_settings"] = "'/rc sync'也同步EPGP(dkp reloaded)的設置"
L["Setting Sync"] = "設置同步"
L["setting_reset_notification"] = "RCLootCouncil-EPGP v%s 重置了所有的設置. 如果有需要請重新配置."
L["Signed up in calendar"] = "日歷已簽到"
L["slash_help_footer"] = "---EPGP命令結束---"
L["slash_help_header"] = "---EPGP命令，不帶參數運行命令顯示詳細幫助信息---"
L["slash_rc_command_failed"] = "操作失敗。 請檢查是否輸入正確。"
L["slash_rc_ep_help"] = "- ep name reason amount      - 向一名玩家獎勵EP。"
L["slash_rc_ep_help_detailed"] = [=[/rc ep name reason amount

向一名玩家獎勵EP。

|cffffd000name|r: 必須。玩家角色的全名。如果和你的伺服器相同伺服器名可省略。你也可以用%p指代你自己，用%t指代你的目標。

|cffffd000reason|r: 必須。獎勵的原因。

|cffffd000amount|r: 必須。整數。獎勵的EP值。]=]
L["slash_rc_gp_help"] = "- gp name reason [amount]      - 向一名玩家獎勵GP。"
L["slash_rc_gp_help_detailed"] = [=[/rc gp name reason [amount]

向一名玩家獎勵GP。

|cffffd000name|r: 必須。玩家角色的全名。如果和你的伺服器相同伺服器名可省略。你也可以用%p指代你自己，用%t指代你的目標。

|cffffd000reason|r: 必須。獎勵的原因。這一般是物品的鏈接。

|cffffd000amount|r: 可選。整數。獎勵的GP值。如果省略，將會獎勵插件計算的GP值。]=]
L["slash_rc_massep_help"] = "- massep reason amount [formula ...]  - 使用自定義EP功能進行整體EP獎勵。"
L["slash_rc_massep_help_detailed"] = [=[

- massep reason amount [formula, ...]

使用自定義EP功能進行整體EP獎勵。

|cffffd000reason|r: 必須。獎勵原因。

|cffffd000amount|r: 必須。整數。整體獎勵數值。

|cffffd000formula ...|r: 可選。如果省略，使用EPGP(dkp reloaded)的默認獎勵方法。否則每個人獲得的獎勵數值會根據自定義EP的公式進行計算。前往自定義EP的設置('/rc epgp')獲取更多信息。
你需要指定公式的序號（數字）或者名字。
你也可以指定多個公式。
例："/rc massep reason amount TEST1"之后運行"/rc massep reason amount TEST2"相當於"/rc massep reason amount TEST1 TEST2"
]=]
L["slash_rc_recurep_help"] = "- recurep reason amount period [formula ...]   - 使用自定義EP功能進行周期性EP獎勵。"
L["slash_rc_recurep_help_detailed"] = [=[

- recurep reason amount period [formula ...]

使用自定義EP功能開始周期性EP獎勵。
如果循環獎勵已在運行，那麼公式會被加入當前循環獎勵。

|cffffd000periodMin|r: 循環獎勵的周期（單位：分鐘）

輸入命令'/rc massep'以查看其它參數的幫助信息。]=]
L["slash_rc_stoprecur_help"] = " - stoprecur   - 停止周期性EP獎勵。"
L["slash_rc_undogp_help"] = "- undogp name [reason]       - 撤銷對一名玩家最近的GP操作。"
L["slash_rc_undogp_help_detailed"] = [=[/rc undogp name [reason]
撤銷對一名玩家最近的GP操作

|cffffd000name|r: 必須. 撤銷GP的玩家角色全名. 如果和你伺服器相同，伺服器名可省略. 你也可以用'%p'指代你自己, 用'%t'指代你的目標.

|cffffd000reason|r: 可選. 這一般為空或者為物品的鏈接. 如果為空，撤銷最近的GP操作，否則撤銷最近的原因與此相同的GP操作.]=]
L["slash_rc_zs_help"] = "- zs name reason amount   - ZeroSum EP獎勵"
L["slash_rc_zs_help_detailed"] = [=[

ZeroSum EP獎勵提供了一個對替補和非替補都公平的一個副本內犯錯扣分方式。

|cffffd000- zs name reason amount|r
獲得EP獎勵的人獲得的EP會被平均分配到其它在相同區域的團隊成員。
|cffffd000- zsr name reason amount|r
獲得EP獎勵的人獲得的EP會被平均分配到其它在相同區域並且相同職責（坦克，治療，傷害輸出）的團隊成員。
|cffffd000- zsdr name reason amount|r
獲得EP獎勵的人獲得的EP會被平均分配到其它在相同區域並且相同詳細職責（坦克，治療，近戰輸出，遠程輸出）的團隊成員。

|cffffd000name|r: 必須。玩家角色的全名。如果和你的伺服器相同伺服器名可省略。你也可以用%p指代你自己，用%t指代你的目標。

|cffffd000reason|r: 必須。獎勵原因。

|cffffd000amount|r: 必須。整數。此EP值將會被獎勵給玩家，並且此EP值會被重新分配給隊內其他玩家以保証團隊總EP不變。


例：
"/rc zs PERSON1 mistake -100": 如果團隊內有11人，PERSON1獲得-100 EP， 其他人每人獲得10EP。

"/rc zsr PERSON2 mistake -100": 如果團隊內有11人，PERSON2是傷害輸出，且隊內有其他4個傷害輸出，PERSON1獲得-100EP，其他4個傷害輸出每人獲得獲得25EP。其他人EP不變。]=]
L["slash_rc_zsdr_help"] = "- zsdr name reason amount   - 同詳細職責ZeroSum EP獎勵。"
L["slash_rc_zsr_help"] = "- zsr name reason amount   - 同職責ZeroSum EP獎勵。"
L["slot_weights"] = "欄位權重"
L["Undo GP"] = "撤銷GP"
L["Up"] = "上移"
L["You cannot use this command if you are not in raid."] = "你不在團隊中時無法使用此命令。"

