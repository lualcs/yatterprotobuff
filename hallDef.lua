---@class EnterTableReq
---@field id number @游戏子类型(普通场,高级场)
---@field gameid number @游戏类型

---@class EnterTableRes
---@field errcode number @错误原因 0表示成功
---@field errcodedes string @错误描述
---@field gameInfo any @每个游戏的内部信息

---@class AlipayData @支付宝数据
---@field alipay_number string @支付宝账号
---@field alipay_user_name string @支付宝用户名

---@class BankData @银行卡数据
---@field bank_number string @银行卡号
---@field bank_name  string @所属银行
---@field bank_user_name string @银行用户名
---@field bank_branch_name string @开户行
---@field qq string @QQ
---@field wechat string @微信

---@class PlayerBaseInfo @玩家基本信息
---@field rolename string @玩家名字
---@field logo string @玩家头像url
---@field sex number @玩家性别
---@field adress string @玩家省份
---@field ip string @IP地址
---@field vipLevel number @VIP等级

---@class PlayerBaseGameInfo @玩家基础信息
---@field rid number @玩家角色ID
---@field isRobot boolean @标记玩家是否是机器人
---@field gatesvr_id any @网关id
---@field agent_address any @agent id
---@field coin number @玩家金币
---@field playerinfo PlayerBaseInfo @玩家基本信息

---@class SeatBaseInfo @座位基本信息
---@field index number @座位索引
---@field rid number @玩家角色ID
---@field state number @座位状态
---@field currentWinNum number @当前输赢值
---@field winCount number @输赢总计

---@class GameBaseInfo @游戏基本信息
---@field subId number @子游戏ID
---@field recordId string @对局ID
---@field gameStartTime number @游戏开始时间
---@field tableState number @房间状态
---@field stateEndTime number @房间状态结束时间
---@field tableRetainTime number @房间保留时间
---@field gameTimes number @游戏次数
---@field tableCreateTime number @房间创建时间

---@class BetStatsInfo @下注统计信息
---@field betCount number @下注总计
---@field betDetail table<number, number> @下注详情

---@class BRGamePlayerInfo : PlayerBaseGameInfo @ 百人场游戏玩家信息
---@field gameTimes number @游戏次数
---@field winTimes number @连赢次数
---@field loseTimes number @连输次数
---@field winCount number @输赢总计
---@field service_tax number @服务费
---@field betStats table<number, BetStatsInfo> @下注统计 key:betPosition value:betStatsInfo
---@field offlineMark number @离线标志
---@field recentBetCount number @最近下注总计
---@field recentWinTimes number @最近赢局次数
---@field applyBankerTime number @申请庄家时间(机器人专用)
---@field leaveTableTime number @离场时间(机器人专用)
---@field actionTime number @操作时间(机器人专用)
---@field selectPositionCoefficients number[] @选择位置系数列表(机器人专用)
---@field selectPosition number[] @选择位置列表(机器人专用)

---@class BRGameHistoryRecord @百人场游戏历史记录
---@field recordId string @对局ID
---@field gameStartTime number @游戏开始时间
---@field banker BRGamePlayerInfo @庄家
---@field tableRadix number @房间底注
---@field tableTaxRate number @服务费比例
---@field winPosition number[] @赢的下注位置
---@field betStats table<number, BetStatsInfo> @下注统计 key:betPosition value:betStatsInfo
---@field playerList table<number, BRGamePlayerInfo> @玩家列表

---@class BRGameInfo : GameBaseInfo @百人场游戏信息
---@field banker BRGamePlayer @庄家
---@field quitBankerMark number @退庄标志
---@field bankerList BRGamePlayer[] @庄家列表
---@field winPosition number[] @优胜位置列表
---@field betStats table<number, BetStatsInfo> @下注统计 key:betPosition value:betStatsInfo
---@field tableSyncTimer function @房间同步定时器
---@field syncBetInfoTimer function @同步下注信息定时器
---@field playerList table<number, BRGamePlayer> @玩家列表
---@field historyRecords BRGameHistoryRecord[] @历史记录列表
---@field lunckyPlayer BRGamePlayer @神算子玩家
---@field richList BRGamePlayer[] @富豪排行榜
