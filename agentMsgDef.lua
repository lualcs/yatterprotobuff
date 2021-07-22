---@class FetchSelfAgentDataReq @拉取自己的代理数据请求

---@class FetchSelfAgentDataRes @拉取自己的代理数据响应
---@field errorcode number @错误码
---@field errordesc string @错误描述
---@field promocode number @推广码
---@field type      string @代理类型 1：大区代理 2：普通代理 3：玩家
---@field rebate    number @政策点位
---@field status    number @状态 1:启用  2:禁用

---@class Subordinate @下级数据
---@field rid         number @代理ID
---@field rolename    string @代理昵称
---@field type        number @代理类型 1：大区代理 2：普通代理 3：玩家
---@field apply_time  string @创建时间
---@field rebate      number @政策点位
---@field status      number @状态 1:启用  2:禁用
---@field devote      number @贡献值
---@field performance number @业绩
---@field sub_num     number @下级数量

---@class WithdrawalRecord @提现记录
---@field rid         number @玩家ID
---@field amount      number @提现金额
---@field create_time string @提现时间

---@class PageData @页面数据
---@field page              number                 @当前页
---@field limit             number                 @页数据条数上限
---@field total_page        number                 @总页数
---@field total             number                 @数据总条数
---@field rows              Subordinate[]          @下级数据
---@field total_profit      number                 @总收益
---@field total_performance number                 @总业绩
---@field recored           WithdrawalRecord[]     @提现记录
---@field MP_detail         MinisterProfitDetail[] @部长收益详情 金币/积分

---@class ListTodayAgentReq @拉取今日新增请求
---@field type  number @代理类型
---@field page  number @当前页
---@field limit number @页数据条数

---@class ListTodayAgentRes @拉取今日新增响应
---@field errorcode number   @错误码
---@field errordesc string   @错误描述
---@field data      PageData @页面数据

---@class ListAllAgentReq @拉取所有下级数据请求
---@field page  number   @当前页
---@field limit number   @页数据条数
---@field rid   number   @下级ID
---@field time  string[] @筛选时间

---@class ListAllAgentRes @拉取所有下级数据响应
---@field errorcode number   @错误码
---@field errordesc string   @错误描述
---@field data      PageData @页面数据

---@class ListRegionAgentReq @拉取授权大区下级请求
---@field page  number @当前页
---@field limit number @页数据条数
---@field rid   number @代理类型

---@class ListRegionAgentRes @拉取授权大区下级响应
---@field errorcode number   @错误码
---@field errordesc string   @错误描述
---@field data      PageData @页面数据

---@class ModifyAgentRebateReq @授权比例请求
---@field rid    number @下级ID
---@field rebate number @授权比例

---@class ModifyAgentRebateRes @授权比例响应
---@field errorcode number   @错误码
---@field errordesc string   @错误描述

---@class OpenAgentReq @开通代理请求
---@field rid    nunmber @下级ID
---@field type   number  @开通代理类型
---@field rebate number  @授权比例

---@class OpenAgentRes @开通代理响应
---@field errorcode number   @错误码
---@field errordesc string   @错误描述

---@class WithdrawProfitReq @收益提现请求

---@class WithdrawProfitRes @收益提现响应
---@field errorcode number   @错误码
---@field errordesc string   @错误描述

---@class FetchStreamReq @拉取提现记录请求

---@class FetchStreamRes @拉取提现记录响应
---@field errorcode number   @错误码
---@field errordesc string   @错误描述
---@field data      PageData @页面数据

---@class ListDailyProfitReq @拉取今日推广收益请求
---@field page  number   @当前页
---@field limit number   @页数据条数
---@field date  string[] @日期筛选

---@class ListDailyProfitRes @拉取今日推广收益响应
---@field errorcode number   @错误码
---@field errordesc string   @错误描述
---@field data      PageData @页面数据

---@class FetchProfitReq @拉取收益详情请求

---@class FetchProfitRes @拉取收益详情响应
---@field errorcode           number @错误码
---@field errordesc           string @错误描述
---@field extract_profit      number @可提现收益
---@field total_agent_profit  number @累计返利
---@field withdrawed_profit   number @已提现收益
---@field total_region_profit number @累计大区整线收益

---@class ListDailyPerformanceReq @拉取整线业绩请求
---@field page  number   @当前页
---@field limit number   @页数据条数
---@field date  string[] @日期筛选

---@class ListDailyPerformanceRes @拉取整线业绩响应
---@field errorcode number   @错误码
---@field errordesc string   @错误描述
---@field data      PageData @页面数据

---@class FetchMinisterProfitReq @拉取部长收益请求

---@class FetchMinisterProfitRes @拉取部长收益响应
---@field errorcode      number @错误码
---@field errordesc      string @错误描述
---@field sys_gold_coin  number @系统金币总收益
---@field club_integral  number @俱乐部积分总收益
---@field club_gold_coin number @俱乐部金币总收益
---@field total_profit   number @总收益
---@field valid_profit   number @可提现收益

---@class FetchMinisterSysGoldProfitReq @拉取部长系统金币收益详情请求
---@field page  number @当前页
---@field limit number @页数据条数

---@class FetchMinisterSysGoldProfitRes @拉取部长系统金币收益详情响应
---@field errorcode number   @错误码
---@field errordesc string   @错误描述
---@field data      PageData @页面数据

---@class FetchMinisterClubIntergralProfitReq @拉取部长俱乐部积分收益详情请求
---@field page  number @当前页
---@field limit number @页数据条数

---@class FetchMinisterClubIntergralProfitRes @拉取部长俱乐部积分收益详情响应
---@field errorcode number   @错误码
---@field errordesc string   @错误描述
---@field data      PageData @页面数据

---@class FetchMinisterClubGoldProfitReq @拉取部长系统金币收益详情请求
---@field page  number @当前页
---@field limit number @页数据条数

---@class FetchMinisterClubGoldProfitRes @拉取部长系统金币收益详情响应
---@field errorcode number   @错误码
---@field errordesc string   @错误描述
---@field data      PageData @页面数据

---@class WithdrawMinisterProfitReq @部长收益提现请求

---@class WithdrawMinisterProfitRes @部长收益提现响应
---@field errorcode number   @错误码
---@field errordesc string   @错误描述
