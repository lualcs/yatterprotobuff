---@class RechargeMerchant  @商户数据
---@field merchant_id   number    @商户ID
---@field type          string    @充值类型
---@field name          string    @商户名字
---@field desc          string    @商户描述

---@class PullRechargeListReq @获取充值商户列表请求

---@class PullRechargeListRes @获取充值商户列表响应
---@field errorcode number             @错误码
---@field errordesc string             @错误描述
---@field merchants RechargeMerchant[] @商户数据

---@class PullRechargeMchPositionsReq @获取充值商户档位请求
---@field merchant_id   number    @商户ID
---@field type          string    @充值类型

---@class PullRechargeMchPositionsRes @获取充值商户档位响应
---@field errorcode number   @错误码
---@field errordesc string   @错误描述
---@field positions number[] @档位数据

---@class ThirdPayRechangeReq @拉取第三方支付配置请求
---@field merchant_id number @商户ID
---@field type        string @充值类型
---@field price       number @金额

---@class ShowMethodEnum @展示方式枚举
---@field BROWSER   string @浏览器打开
---@field INTERFACE string @客户端界面展示

---@class InterfaceEnum @界面类型枚举
---@field BANKCARD string @银行卡界面
---@field ALIPAY   string @支付宝界面

---@class BankCardData  @银行卡数据
---@field bank_flag   string    @银行缩写
---@field card_name   string    @持卡人姓名
---@field bank_name   string    @银行名称
---@field card_number string    @银行卡号

---@class AlipayDataInfo @支付宝数据
---@field account   string @支付宝账号
---@field real_name string @真实姓名

---@class InterfaceData  @客户端界面展示数据
---@field method     InterfaceEnum   @界面类型
---@field bank       BankCardData    @银行卡数据
---@field alipay     AlipayDataInfo  @支付宝数据

---@class RechargeResponse @支付响应数据
---@field method              ShowMethodEnum  @展示方式
---@field price               int32           @充值金额
---@field order_id            string          @订单号
---@field stop_time           int32           @订单截止时间
---@field remain_time         int32           @订单剩余时间 秒
---@field status              OrderStatusEnum @订单状态
---@field url                 string          @url
---@field interface           InterfaceData   @界面数据
---@field have_unfinish_order boolean         @界面数据

---@class ThirdPayRechangeRes @拉取第三方支付配置响应
---@field errorcode number            @错误码
---@field errordesc string            @错误描述
---@field data      RechargeResponse  @响应数据

---@class PullWithdrawConfigReq @拉取提现配置请求

---@class PullWithdrawConfigRes @拉取提现配置响应
---@field errorcode number @错误码
---@field errordesc string @错误描述
---@field config    string @配置数据,json字符串

---@class ThirdPayWithdrawReq @提现请求
---@field withdraw_type string @提现方式
---@field transfer_type string @出款方式
---@field price         number @提现金额

---@class ThirdPayWithdrawRes @提现响应
---@field errorcode number @错误码
---@field errordesc string @错误描述

---@class ThridPayRechargeOrderData @充值记录
---@field order_id    string           @订单号
---@field price       number           @订单金额
---@field create_time string           @创建时间
---@field status      OrderStatusEnum  @订单状态

---@class ThridPayWithdrawOrderData @提现记录
---@field order_id      string                   @订单号
---@field price         number                   @提现金额
---@field create_time   string                   @创建时间
---@field status        WithdrawOrderStatusEnum  @订单状态
---@field type          TransferTypeEnum         @出款方式
---@field server_charge number                   @服务费
---@field ali_account   string                   @支付宝账号
---@field bank_account  string                   @银行卡号

---@class ThirdPayRecordData @记录数据
---@field page        number                    @当前页
---@field total_page  number                    @总页数
---@field limit       number                    @页数据条数
---@field total_count number                    @总数据条数
---@field recharge    ThridPayRechargeOrderData @充值记录
---@field withdraw    ThridPayWithdrawOrderData @提现记录

---@class ListRechargeOrderReq @拉取充值记录请求
---@field page  number @目标页
---@field limit number @页数据条数

---@class ListRechargeOrderRes @拉取充值记录响应
---@field errorcode number             @错误码
---@field errordesc string             @错误描述
---@field data      ThirdPayRecordData @响应数据

---@class ListWithdrawOrderReq @拉取提现记录请求
---@field page  number @目标页
---@field limit number @页数据条数

---@class ListWithdrawOrderRes @拉取提现记录响应
---@field errorcode number             @错误码
---@field errordesc string             @错误描述
---@field data      ThirdPayRecordData @响应数据

---@class GetInterfaceDataReq @拉取订单界面数据请求
---@field order_id string @订单号

---@class GetInterfaceDataRes @拉取订单界面数据响应
---@field errorcode   number          @错误码
---@field errordesc   string          @错误描述
---@field method      ShowMethodEnum  @展示方式
---@field price       int32           @充值金额
---@field order_id    string          @订单号
---@field stop_time   int32           @订单截止时间
---@field remain_time int32           @订单剩余时间 秒
---@field status      OrderStatusEnum @订单状态
---@field interface   InterfaceData   @界面数据
---@field url         string          @url
