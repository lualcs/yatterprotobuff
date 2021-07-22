---@class MessageInfo
---@field Form  number       @发送者ID
---@field To    number       @接收者ID，可以是群/俱乐部ID
---@field MsgID number       @消息在会话中的编唯一编号
---@field Msg   string       @消息内容
---@field Type  DataTypeEnum @消息类型，群聊/私聊/系统通知/客服对话/好友请求/群请求

---@class FriendRequest @关系请求数据
---@field timestamp     number          @时间戳
---@field request_id    number          @申请人ID
---@field source        SourceEnum      @请求方式
---@field status        ApprovingEnum   @审批状态
---@field comments      string          @备注信息
---@field source_id     number          @来源群ID

---@class GroupRequest @关系请求数据
---@field timestamp     number          @时间戳
---@field request_id    number          @申请人ID
---@field source        SourceEnum      @请求方式
---@field status        ApprovingEnum   @审批状态
---@field approving_id  number          @处理人ID
---@field gid           number          @群ID
---@field comments      string          @备注信息
---@field inviter       number          @邀请人

---@class ChatTypeEnum @会话类型枚举
---@field PRIVATE       string  @私聊
---@field GROUP         string  @群聊
---@field SYSTEM_NTC    string  @系统通知
---@field CUSTOM_SVC    string  @客服对话
---@field FRI_REQ       string  @好友请求

---@class SelfData  @用户自己的聊天数据
---@field request       RelationRequest[]           @好友申请
---@field friendList    UserData[]                  @好友列表
---@field groupList     int32[]                     @群列表

---@class UserData  @用户信息
---@field rid         number      @用户ID
---@field name        string      @昵称
---@field comments    string      @备注
---@field source      SourceEnum  @来源信息
---@field sex         number      @性别 0：未知 1：男 2：女
---@field head        string      @头像
---@field source_id   number      @群ID 或 好友RID

---@class GroupTypeEnum @群类型
---@field NOMAL string  @普通群
---@field CLUB  string  @俱乐部

---@class GroupData @群数据
---@field gid   int32           @群ID
---@field type  GroupTypeEnum   @群类型

---@class MemberInfo @群成员属性
---@field rid       number          @成员rid
---@field source    SourceEnum      @成员来源
---@field inviter   number          @邀请人

---@class GroupInfo @群信息
---@field gid       number         @群ID
---@field name      string         @群名字
---@field note      string         @群公告
---@field owner     number         @群所有者
---@field forbid    boolean        @全体禁言标记
---@field protect   boolean        @保护模式标记
---@field type      GroupTypeEnum  @群类型
---@field saymsg    table<string, boolean>      @禁言列表
---@field admin     table<string, boolean>      @管理员列表
---@field request   table<string, GroupRequest> @请求列表
---@field members   table<string, MemberInfo>   @成员列表

---@class PullTypeEnum  @拉取玩家信息方式枚举
---@field RID   string  @玩家ID
---@field PHONE string  @手机号
---@field NAME  string  @玩家昵称

---@class PullUsersInfoStruct       @拉取指定用户信息请求结构
---@field type      PullTypeEnum    @拉取方式
---@field user_id   number          @指定用户ID
---@field phone     string          @手机号
---@field name      string          @用户名
---@field user_info UserData[]      @玩家信息

---@class PullUsersInfoReq           @拉取玩家信息请求
---@field req   PullUsersInfoStruct @拉取数据

---@class PullUsersInfoRes               @拉取玩家信息响应
---@field errorcode number              @错误码，0表示成功
---@field errordes  string              @错误描述
---@field res       PullUsersInfoStruct @拉取数据

---@class SourceEnum        @好友来源枚举
---@field INVALID   string  @未知来源
---@field PHONECODE string  @查找手机号添加
---@field ADDR_LIST string  @通讯录添加
---@field QRCODE    string  @扫二维码添加
---@field GROUP     string  @通过群添加
---@field WECHAT    string  @微信邀请添加
---@field SHARE     string  @分享下载添加
---@field SEARCH_ID string  @搜索群号
---@field INVITE    string  @被邀请加入

---@class ApprovingEnum     @好友审批类型
---@field INIT      string  @初始状态
---@field READ      string  @已读
---@field AGREE     string  @同意
---@field REJECT    string  @拒绝
---@field DELETE    string  @删除

---@class DataTypeEnum  @数据类型
---@field INVALID    string  @未知类型
---@field TEXT       string  @文本
---@field PICTURE    string  @图片
---@field VOICE      string  @语音
---@field VIDEO      string  @视频
---@field EFT        string  @转账
---@field HONGBAO    string  @红包
---@field GAMEBILL   string  @战绩
---@field SYSNOTICE  string  @系统通知
---@field GAMESTART  string  @游戏开始通知
---@field BINDING    string  @绑定银行卡/支付宝
---@field RECHARGE   string  @充值通知
---@field WITHDRAW   string  @提现通知
---@field PAYMENT    string  @账单支付完成
---@field GATHERING  string  @收款完成
---@field DRAWPROFIT string  @收益提现到余额
---@field GAMEINVITE string  @游戏邀请

---@class AddFriendReq      @添加好友请求
---@field user_id   number  @被添加用户ID
---@field source    number  @好友来源
---@field comments  string  @备注信息
---@field gid       number  @来源群ID

---@class AddFriendRes      @添加好友响应
---@field errorcode number  @错误码，0表示成功
---@field errordes  string  @错误描述

---@class DeleteFriendReq   @删除好友请求
---@field user_id   number  @被删用户ID

---@class DeleteFriendRes   @删除好友响应
---@field errorcode number  @错误码，0表示成功
---@field errordes  string  @错误描述

---@class DeleteFriendReq   @删除好友请求
---@field user_id   number  @被删用户ID

---@class DeleteFriendRes   @删除好友响应
---@field errorcode number  @错误码，0表示成功
---@field errordes  string  @错误描述

---@class ApprovingFriendReq    @好友审批请求
---@field user_id   number      @被审批用户ID
---@field approving number      @审批结果

---@class ApprovingFriendRes    @好友审批响应
---@field errorcode number      @错误码，0表示成功
---@field errordes  string      @错误描述

---@class SetCommentsReq    @设置备注请求
---@field user_id   number  @被审批用户ID
---@field comments  string  @备注信息

---@class SetCommentsRes    @设置备注响应
---@field errorcode number  @错误码，0表示成功
---@field errordes  string  @错误描述

---@class CreateGroupReq            @创建群请求
---@field user_list     number[]    @建群时邀请的玩家名单
---@field group_name    string      @群名称

---@class CreateGroupRes        @创建群响应
---@field errorcode number      @错误码，0表示成功
---@field errordes  string      @错误描述

---@class PullGroupInfoReq  @拉取群信息请求
---@field group_id  number         @群ID
---@field type      GroupTypeEnum  @群类型

---@class PullGroupInfoRes      @拉取群信息响应
---@field errorcode number      @错误码，0表示成功
---@field errordes  string      @错误描述
---@field info      GroupInfo   @群信息

---@class JoinGroupReq      @申请加群请求
---@field group_id  number  @群ID
---@field source    number  @加群方式
---@field comments  number  @备注信息
---@field inviter   number  @邀请人

---@class JoinGroupRes      @申请加群响应
---@field errorcode number  @错误码，0表示成功
---@field errordes  string  @错误描述

---@class GroupApprovingReq @群申请审批请求
---@field group_id  number  @群ID
---@field user_id   number  @被审批用户ID
---@field approving number  @审批结果

---@class GroupApprovingRes @群申请审批响应
---@field errorcode number  @错误码，0表示成功
---@field errordes  string  @错误描述

---@class QuitGroupReq      @退群请求
---@field group_id  number  @群ID

---@class QuitGroupRes      @退群响应
---@field errorcode number  @错误码，0表示成功
---@field errordes  string  @错误描述

---@class GroupRenameReq    @更改群名字请求
---@field group_id  number  @群ID
---@field comments  string  @新群名

---@class GroupRenameRes    @更改群名字响应
---@field errorcode number  @错误码，0表示成功
---@field errordes  string  @错误描述

---@class GroupAlterNoteReq @更改群公告请求
---@field group_id  number  @群ID
---@field comments  string  @公告内容

---@class GroupAlterNoteRes @更改群公告响应
---@field errorcode number  @错误码，0表示成功
---@field errordes  string  @错误描述

---@class GroupProtectReq   @保护模式管理请求
---@field group_id  number  @群ID
---@field protect   boolean @保护模式状态

---@class GroupProtectRes   @保护模式管理响应
---@field errorcode number  @错误码，0表示成功
---@field errordes  string  @错误描述

---@class GroupForbidChatReq    @全体禁言管理请求
---@field group_id  number      @群ID
---@field forbid    boolean     @全体禁言状态

---@class GroupForbidChatRes    @全体禁言管理响应
---@field errorcode number      @错误码，0表示成功
---@field errordes  string      @错误描述

---@class GroupSaymsgReq        @指定成员禁言管理请求
---@field group_id  number      @群ID
---@field users_id  number[]    @指定用户ID数组
---@field saymsg    boolean     @指定成员禁言状态

---@class GroupSaymsgRes    @指定成员禁言管理响应
---@field errorcode number  @错误码，0表示成功
---@field errordes  string  @错误描述

---@class GroupAbdicateReq  @群主移交请求
---@field group_id  number  @群ID
---@field user_id   number  @接受移交者ID

---@class GroupAbdicateRes  @群主移交响应
---@field errorcode number  @错误码，0表示成功
---@field errordes  string  @错误描述

---@class GroupAdminMgrReq   @管理员管理请求
---@field group_id  number   @群ID
---@field users_id  number[] @指定用户ID数组
---@field operation boolean  @管理员增删状态 false:删除 true:增加

---@class GroupAdminMgrRes  @管理员管理响应
---@field errorcode number  @错误码，0表示成功
---@field errordes  string  @错误描述

---@class GroupUserMgrReq    @群成员管理请求
---@field group_id  number   @群ID
---@field users_id  number[] @指定用户ID数组
---@field operation boolean  @群成员增删状态 false:删除 true:增加

---@class GroupUserMgrRes   @群成员管理响应
---@field errorcode number  @错误码，0表示成功
---@field errordes  string  @错误描述

---@class GroupDissolveReq  @群成员管理请求
---@field group_id  number  @群ID

---@class GroupDissolveRes  @群成员管理响应
---@field errorcode number  @错误码，0表示成功
---@field errordes  string  @错误描述

---@class SendMsgReq        @发送消息请求
---@field session   number  @会话ID
---@field chat_type ChatTypeEnum  @消息类型
---@field data_type DataTypeEnum  @数据类型
---@field data      string  @数据类容

---@class SendMsgRes        @发送消息响应
---@field errorcode number  @错误码，0表示成功
---@field errordes  string  @错误描述

---@class SendMsgReq        @发送消息请求

---@class SendMsgRes        @发送消息响应
---@field errorcode number  @错误码，0表示成功
---@field errordes  string  @错误描述
---@field have      boolean @是否还有离线消息
---@field msg       MsgInfo @离线消息

---@class MsgInfo @消息详细数据
---@field session   number          @会话ID
---@field send_id   number          @发送者ID
---@field msg_seq   number          @消息唯一ID, 递增
---@field timestamp number          @消息时间戳
---@field data_type DataTypeEnum    @数据类型
---@field data      string          @消息内容
---@field chat_type ChatTypeEnum    @会话类型
---@field name      string          @名字-客服聊天
---@field head      string          @头像-客服聊天

---@class ModifyGroupEnum @群信息变动类型
---@field NAME       string @群名字更改
---@field NOTE       string @群公告更改
---@field OWNER      string @群主移交
---@field FORBID     string @全体禁言标志更改
---@field PROTECT    string @群保护模式标志更改
---@field SAYMSG_ADD string @禁言成员添加
---@field SAYMSG_DEL string @禁言成员删除
---@field ADMIN_ADD  string @管理员添加
---@field ADMIN_DEL  string @管理员删除
---@field REQUEST    string @群请求变动
---@field MEMBER_ADD string @新增成员
---@field MEMBER_DEL string @移除成员

---@class ModifyGroup @群信息变动结构
---@field type       ModifyGroupEnum    @群信息变动类型
---@field gid        number             @发生变动的群ID
---@field name       string             @群名字
---@field note       string             @群公告
---@field owner      number             @群主ID
---@field forbid     boolean            @全体禁言标记
---@field protect    boolean            @保护模式标记
---@field saymsg_rid number             @禁言ID
---@field admin_rid  number             @管理员ID
---@field request    GroupRequest       @群请求
---@field member     UserData           @群成员

---@class MessageNtc @新消息通知
---@field new_msg   MsgInfo[]           @新消息
---@field fri_req   FriendRequest[]     @好友请求状态更新
---@field new_fri   UserData[]          @新好友
---@field new_grp   GroupInfo[]         @新群聊
---@field del_grp   number[]            @移除群
---@field mdf_grp   ModifyGroup[]       @群信息变动
---@field del_fri   number[]            @移除好友

---@class UserSelfInfoNtc @上线时，个人数据通知
---@field request     FriendRequest[]       @好友申请
---@field friend_list UserData[]            @好友列表
---@field group_list  GroupInfo[]           @群聊列表
---@field config      string                @聊天相关配置

---@class SessionMsgsSeq @会话ID结构
---@field session_key string   @会话key
---@field msgs_seq    number[] @消息ID

---@class PullMsgsReq @拉取消息请求
---@field req SessionMsgsSeq[] @拉取消息ID

---@class PullMsgsRes @拉取消息响应
---@field errorcode number    @错误码，0表示成功
---@field errordes  string    @错误描述
---@field msgs      MsgInfo[] @拉取到的消息内容

---@class MsgACKReq @确认消息请求
---@field req SessionMsgsSeq[] @确认消息ID

---@class MsgACKRes @消息确认响应
---@field errorcode number @错误码，0表示成功
---@field errordes  string @错误描述
