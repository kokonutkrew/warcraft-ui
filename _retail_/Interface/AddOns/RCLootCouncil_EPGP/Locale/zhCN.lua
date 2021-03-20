-- Translate RCLootCouncil - EPGP to your language at:
-- http://wow.curseforge.com/addons/rclootcouncil-epgp/localization/

local L = LibStub("AceLocale-3.0"):NewLocale("RCEPGP", "zhCN")
if not L then return end

L["%s_formula_runtime_error"] = "'%s' 公式有运行时错误。"
L["%s_formula_syntax_error"] = [=['%s' 公式有语法错误。
]=]
L["Add to recurring award"] = "加入周期性奖励"
L["Also screenshot in test mode"] = "测试模式时也截图"
L["Also screenshot when the item is bagged and will be awarded later"] = "物品稍后分配时也截图"
L["amount_must_be_number"] = "数量必须为数字"
L["announce_#diffgp#_desc"] = "|cfffcd400 #diffgp#|r: 玩家获得的GP值。"
L["announce_#ep#_desc"] = "|cfffcd400 #ep#|r: 玩家的EP值。"
L["announce_#gp#_desc"] = "|cfffcd400 #gp#|r: 玩家获得物品前的GP值。"
L["announce_#itemgp#_desc"] = "|cfffcd400 #itemgp#|r: 物品的GP值。"
L["announce_#newgp#_desc"] = "|cfffcd400 #newgp#|r: 玩家获得物品后的GP值。"
L["announce_#newpr#_desc"] = "|cfffcd400 #newpr#|r: 玩家获得物品后的PR值。"
L["announce_#pr#_desc"] = "|cfffcd400 #pr#|r: 玩家获得物品前的PR值。"
L["announce_awards_desc2"] = [=[
RCLootCouncil-EPGP: #diffgp# 指代玩家从物品获取的GP量. #ep# 指代玩家的EP值. #gp# 指代玩家获取物品前的GP值. #pr# 指代玩家获取物品前的PR值. #newgp# 指代玩家获取物品后的GP值. #newpr# 指代玩家获取物品后的PR值.]=]
L["announce_formula_runtime_error"] = "你的GP公式含有运行时错误。出错时会使用默认公式。"
L["Award GP (Default: %s)"] = "奖励GP （默认： %s)"
L["Bid"] = "出价"
L["Bid Mode"] = "竞标模式"
L["bid_gpAbsolute_desc"] = "最高出价获胜并获得出价的GP值。"
L["bid_gpRelative_desc"] = "最高出价获胜并获得出价乘物品GP的GP值。"
L["bid_prRelative_desc"] = "最高出价乘PR获胜并获得出价乘物品GP的GP值"
L["Bidding"] = "竞标"
L["bidding_desc"] = "启用此项会在投票界面右键菜单里加入一个按钮根据玩家的出价奖励GP。有多种竞标模式。玩家可以在RCLootCouncil弹窗中向战利品分配者发送以整数开始的备注以告知竞标出价。他们也可以发送“min”表示最低出价，\"max\"表示最高出价，“default”表示默认出价。"
L["chat_commands"] = "- epgp     - 打开RCLootCouncil-EPGP配置界面"
L["Columns"] = "竖列"
L["Credit GP to %s"] = "给 %s 增加GP"
L["Custom EP"] = "自定义EP"
L["Custom GP"] = "自定义GP"
L["customEP_desc"] = [=[自定义EP使你可以自定义谁应该被包含在群体EP奖励中。
你可以在这个窗口中使用群体EP奖励功能，或者使用命令‘/rc massep’或‘/rc recurep’。
不带参数运行以上命令显示它们的帮助信息。]=]
L["customEP_formula_add_recur_award_confirm"] = "你确定要把公式 %s 加入正在运行中的周期性奖励中吗？"
L["customEP_formula_award_confirm"] = "你确定要用公式 %s 进行群体EP奖励吗？"
L["customEP_formula_start_recur_award_confirm"] = "你确定要用公式 %s 开始周期性奖励吗？"
L["customEP_formula_stop_recur_award_confirm"] = "你确定要停止周期性奖励吗？"
L["customEP_in_group_desc"] = "候选人在团队内时的EP百分比。"
L["customEP_in_standby_desc"] = "候选人在EPGP的待命列表里但不在团队内时的EP百分比。"
L["customEP_in_zones_desc"] = "候选人的所在区域符合以下任何区域时的EP百分比。"
L["customEP_massEP_by_formulas"] = "使用以下公式进行群体EP奖励：%s"
L["customEP_none_of_the_above_desc"] = "候选人不在组里，不在EPGP待命列表，也没有在日历中签到时的EP百分比。"
L["customEP_not_in_zones_desc"] = "候选人的所在区域不符合以下任何区域时的EP百分比。"
L["customEP_offline_desc"] = "候选人不在线时的EP百分比。"
L["customEP_online_desc"] = "候选人在线时的EP百分比。"
L["customEP_rank_desc"] = "候选人的会阶为此时的EP百分比"
L["customEP_signed_up_in_calendar_desc"] = "候选人在最近+-12h开始的一个公会日历活动中确认，但不在团队中，也不在EPGP待命列表中时的EP百分比。"
L["customEP_zones_desc"] = "在这里输入区域的名字或者ID。用英文逗号','分隔多个区域。忽略起始与末尾的空格。"
L["customGP_desc"] = "自定义GP使你可以为每件装备定义自己的GP规则. 你需要为此定义计算GP值的公式。 你可以选择禁用此功能，以EPGP(dkp reloaded)的默认方式计算EP值。"
L["Default Bid"] = "默认出价"
L["default_bid_desc"] = "如果候选人没有发送出价，将使用此出价。"
L["disable_gp_popup"] = "GP弹窗被RCLootCouncil - EPGP自动禁用."
L["DKP Mode"] = "DKP模式"
L["dkp_mode_desc"] = "选中此项，插件的所有GP增加/减少操作将会被转换为EP减少/增加操作。"
L["Down"] = "上移"
L["Enable Bidding"] = "开启竞标"
L["enable_custom_gp"] = "启用自定义GP"
L["EPGP_DKP_Reloaded_settings_received"] = "通过'/rc sync'收到了EPGP(dkp reloaded)的设置."
L["error_no_target"] = "错误。 你没有目标。"
L["forbidden_function_used"] = "公式内一个被禁止的命令试图被执行，已经被阻止。请检查公式是否含有恶意代码!"
L["Formula 'formula' does not exist"] = "公式 %s 不存在"
L["formula_delete_confirm"] = "你确认要删除公式 %s 吗？"
L["formula_syntax_error"] = "公式有语法错误"
L["General"] = "常规"
L["GP Bid"] = "GP出价"
L["GP Options"] = "GP选项"
L["gp_formula"] = "GP公式"
L["gp_formula_help"] = [=[在下面的输入框输入返回GP值的LUA代码。
如果输入是单行语句, 例如 'a and b or c', 无需return语句。
如果有任何控制语句, 则需要return语句。
以下是代码中可用的变量。]=]
L["gp_formula_syntax_error"] = "公式有语法错误。 将使用默认公式。"
L["gp_value_help"] = [=[例:
100%: 使用100%GP值
50%: 使用50%GP值
25: 所有物品价值25GP]=]
L["gp_variable_equipLoc_help"] = "字符串. 代表栏位的非本地化字符串. 如果可能,建议使用变量slotWeights代替."
L["gp_variable_hasAvoid_help"] = "整数. 1如果物品带有闪避,否则为0."
L["gp_variable_hasIndes_help"] = "整数. 1如果物品永不磨损,否则为0."
L["gp_variable_hasLeech_help"] = "整数. 1如果物品带有吸血,否则为0."
L["gp_variable_hasSpeed_help"] = "整数. 1如果物品带有加速,否则为0."
L["gp_variable_ilvl_help"] = "整数.物品的装备等级或者是套装代币的基础装等"
L["gp_variable_isHeroic_help"] = "整数. 1如果物品来自英雄难度,否则为0."
L["gp_variable_isMythic_help"] = "整数. 1如果物品来自史诗难度,否则为0."
L["gp_variable_isNormal_help"] = "整数. 1如果物品来自普通难度,否则为0."
L["gp_variable_isTitanforged_help"] = "整数. 1如果物品泰坦造物,否则为0."
L["gp_variable_isToken_help"] = "整数. 1如果物品是套装代币,否则为0."
L["gp_variable_isWarforged_help"] = "整数. 1如果物品战火,否则为0."
L["gp_variable_itemID_help"] = "整数. 物品的ID."
L["gp_variable_link_help"] = "字符串. 物品的完整链接."
L["gp_variable_numSocket_help"] = "整数. 物品里插槽的数量."
L["gp_variable_rarity_help"] = "整数. 物品的稀有度. 3-稀有,4-史诗,5-传说."
L["gp_variable_slotWeights_help"] = "数字. 物品的栏位权重."
L["gpOptions"] = "回应的GP百分比"
L["gpOptionsButton"] = "打开配置回应的GP百分比的选项"
L["Group Status"] = "团队状态"
L["In Group"] = "在团队内"
L["In Standby"] = "待命中"
L["In Zones"] = "在区域内"
L["Input must be a non-negative number."] = "输入必须为非负数字。"
L["Input must be a number."] = "输入必须为数字。"
L["Invalid input"] = "无效输入"
L["Max Bid"] = "最高出价"
L["Min Bid"] = "最低出价"
L["Min New PR"] = "最小新PR"
L["min_new_pr_desc"] = "插件会计算候选人的最高出价，以保证在获得物品和GP奖励后他的PR不会低于此值。"
L["need_restart_notification"] = "RCLootCouncil-EPGP v%s更新需要重启游戏客户端. 插件的某些功能无法正常使用直到游戏客户端重启."
L["new_version_detected"] = "你的版本%s已过期. 检测到新版本%s. 你可以从Curse.com或者Twitch客户端更新此插件."
L["no_permission_to_edit_officer_note"] = "你无权修改官员备注"
L["None of the above"] = "以上都不是"
L["Not in your guild"] = "不在你的公会"
L["Not in Zones"] = "不在区域内"
L["Online Status"] = "在线状态"
L["period_not_positive_error"] = "周期必须为正数"
L["rc_version_below_min_notification"] = "此版本的RCLootCouncil-EPGP要求RCLootCouncil v%s+. 你的RCLootCouncil的版本为v%s. 请更新RCLootCouncil."
L["RCEPGP_desc"] = "一个给RCLootCouncil添加了EPGP支持与自定义的插件. 作者: Safetee"
L["Recurring Award Period(Min)"] = "周期性奖励周期(Min)"
L["recurring_award_formulas"] = "当前周期性奖励公式： %s"
L["recurring_award_running"] = "周期性奖励已在运行。将这个公式加入到周期性奖励。"
L["Screenshot"] = "截图"
L["Screenshot failed"] = "截图失败"
L["Screenshot only when GP is awarded"] = "只在奖励GP时截图"
L["Screenshot succeeded"] = "截图成功"
L["Screenshot when a item is awarded"] = "奖励物品时截图"
L["send_epgp_setting_desc"] = "如果被选中, '/rc sync'也会同步EPGP(dkp reloaded)的设置"
L["send_epgp_settings"] = "'/rc sync'也同步EPGP(dkp reloaded)的设置"
L["Setting Sync"] = "设置同步"
L["setting_reset_notification"] = "RCLootCouncil-EPGP v%s 重置了所有的设置. 如果有需要请重新配置."
L["Signed up in calendar"] = "日历已签到"
L["slash_help_footer"] = "---EPGP命令结束---"
L["slash_help_header"] = "---EPGP命令，不带参数运行命令显示详细帮助信息---"
L["slash_rc_command_failed"] = "操作失败。 请检查是否输入正确。"
L["slash_rc_ep_help"] = "- ep name reason amount      - 向一名玩家奖励EP。"
L["slash_rc_ep_help_detailed"] = [=[/rc ep name reason amount

向一名玩家奖励EP。

|cffffd000name|r: 必须。玩家角色的全名。如果和你的服务器相同服务器名可省略。你也可以用%p指代你自己，用%t指代你的目标。

|cffffd000reason|r: 必须。奖励的原因。

|cffffd000amount|r: 必须。整数。奖励的EP值。]=]
L["slash_rc_gp_help"] = "- gp name reason [amount]      - 向一名玩家奖励GP。"
L["slash_rc_gp_help_detailed"] = [=[/rc gp name reason [amount]

向一名玩家奖励GP。

|cffffd000name|r: 必须。玩家角色的全名。如果和你的服务器相同服务器名可省略。你也可以用%p指代你自己，用%t指代你的目标。

|cffffd000reason|r: 必须。奖励的原因。这一般是物品的链接。

|cffffd000amount|r: 可选。整数。奖励的GP值。如果省略，将会奖励插件计算的GP值。]=]
L["slash_rc_massep_help"] = "- massep reason amount [formula ...]  - 使用自定义EP功能进行群体EP奖励。"
L["slash_rc_massep_help_detailed"] = [=[

- massep reason amount [formula, ...]

使用自定义EP功能进行群体EP奖励。

|cffffd000reason|r: 必须。奖励原因。

|cffffd000amount|r: 必须。整数。群体奖励数值。

|cffffd000formula ...|r: 可选。如果省略，使用EPGP(dkp reloaded)的默认奖励方法。否则每个人获得的奖励数值会根据自定义EP的公式进行计算。前往自定义EP的设置('/rc epgp')获取更多信息。
你需要指定公式的序号（数字）或者名字。
你也可以指定多个公式。
例："/rc massep reason amount TEST1"之后运行"/rc massep reason amount TEST2"相当于"/rc massep reason amount TEST1 TEST2"
]=]
L["slash_rc_recurep_help"] = "- recurep reason amount period [formula ...]   - 使用自定义EP功能进行周期性EP奖励。"
L["slash_rc_recurep_help_detailed"] = [=[

- recurep reason amount period [formula ...]

使用自定义EP功能开始周期性EP奖励。
如果周期性奖励已在运行，那么公式会被加入当前周期性奖励。

|cffffd000periodMin|r: 周期性奖励的周期（单位：分钟）

输入命令'/rc massep'以查看其它参数的帮助信息。]=]
L["slash_rc_stoprecur_help"] = " - stoprecur   - 停止周期性EP奖励。"
L["slash_rc_undogp_help"] = "- undogp name [reason]       - 撤销对一名玩家最近的GP操作。"
L["slash_rc_undogp_help_detailed"] = [=[/rc undogp name [reason]
撤销对一名玩家最近的GP操作

|cffffd000name|r: 必须. 撤销GP的玩家角色全名. 如果和你服务器相同，服务器名可省略. 你也可以用'%p'指代你自己, 用'%t'指代你的目标.

|cffffd000reason|r: 可选. 这一般为空或者为物品的链接. 如果为空，撤销最近的GP操作，否则撤销最近的原因与此相同的GP操作.]=]
L["slash_rc_zs_help"] = "- zs name reason amount   - ZeroSum EP奖励"
L["slash_rc_zs_help_detailed"] = [=[

ZeroSum EP奖励提供了一个对替补和非替补都公平的一个副本内犯错扣分方式。

|cffffd000- zs name reason amount|r
获得EP奖励的人获得的EP会被平均分配到其它在相同区域的团队成员。
|cffffd000- zsr name reason amount|r
获得EP奖励的人获得的EP会被平均分配到其它在相同区域并且相同职责（坦克，治疗，伤害输出）的团队成员。
|cffffd000- zsdr name reason amount|r
获得EP奖励的人获得的EP会被平均分配到其它在相同区域并且相同详细职责（坦克，治疗，近战输出，远程输出）的团队成员。

|cffffd000name|r: 必须。玩家角色的全名。如果和你的服务器相同服务器名可省略。你也可以用%p指代你自己，用%t指代你的目标。

|cffffd000reason|r: 必须。奖励原因。

|cffffd000amount|r: 必须。整数。此EP值将会被奖励给玩家，并且此EP值会被重新分配给队内其他玩家以保证团队总EP不变。


例：
"/rc zs PERSON1 mistake -100": 如果团队内有11人，PERSON1获得-100 EP， 其他人每人获得10EP。

"/rc zsr PERSON2 mistake -100": 如果团队内有11人，PERSON2是伤害输出，且队内有其他4个伤害输出，PERSON1获得-100EP，其他4个伤害输出每人获得获得25EP。其他人EP不变。]=]
L["slash_rc_zsdr_help"] = "- zsdr name reason amount   - 同详细职责ZeroSum EP奖励。"
L["slash_rc_zsr_help"] = "- zsr name reason amount   - 同职责ZeroSum EP奖励。"
L["slot_weights"] = "栏位权重"
L["Undo GP"] = "撤销GP"
L["Up"] = "上移"
L["You cannot use this command if you are not in raid."] = "你不在团队中时无法使用此命令。"

