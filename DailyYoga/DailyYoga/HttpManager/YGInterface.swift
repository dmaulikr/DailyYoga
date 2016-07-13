//
//  YGInterface.swift
//  DailyYoga
//
//  Created by Beryter on 16/7/1.
//  Copyright © 2016年 Beryter. All rights reserved.
//

import Foundation

//MARK: - 登陆与注册

/// 登陆 - POST
 
let kYGAPILogin = "POST::user/login";

/// 游客ID获取 - POST
 
let kYGAPIVisitorUID = "POST::user/getGuestId";

/// 验证码获取 - POST
 
let kYGAPISecurityCode = "POST::user/getVerCode";

/// 验证码校验 - POST
 
let kYGAPICheckSecurityCode = "POST::user/checkVerCode";

/// 图片上传 - POST
///http::///121.41.28.3/members/public/upload.php
 
let kYGAPIUploadImage = "uploadInput";

/// 地理位置信息获取 - GET
 
let kYGAPILocationInfo = "POST::user/getSiteInfo";

/// 注册 - POST
 
let kYGAPIRegister = "POST::user/register";

/// 密码重置 - POST
 
let kYGAPIResetPassword = "POST::user/resetPassword";


//MARK: - 课程与计划

/// 课程练习完成后上传分享图片 - POST
 
let kYGAPIShareInfo = "common/setShareInfo";
/// banner列表以及推荐课程获取 - GET
 

let kYGAPIRecommendSessions = "GET::session/recommendSession";

/// 精选界面数据接口 - GET
 
let kYGAPIChoiceness = "GET::session/session/selected";

/// 根据类别获取课程和计划 - GET
 
let kYGAPICategorySessions = "GET::session/session/all";

/// 全部课程获取 - GET
 
let kYGAPISessions = "GET::session/session";

/// 我的练习 - GET
 
let kYGAPIMyPractices = "GET::session/session/index";

/// 课程首页筛选条件获取 - GET
 
let kYGAPISessionFilters = "GET::session/playTimeRange";

/// 瑜伽计划获取 - GET
 
let kYGAPIPrograms = "GET::session/yogaProgram";
/// 动作库 - GET
 
let kYGAPIPoseLibrary = "GET::actionlibrarycommon/actionlibrarylist";
/// 动作库动作详情 - GET
 
let kYGAPILibraryPoseInfo = "GET::actionlibrarycommon/ActionLibraryDetail";
/// 课程详情 - GET
 
let kYGAPISessionInfo = "GET::session/getDetailInfo";

/// 课程参与 - POST
 
let kYGAPISessionSchedule = "POST::session/setSessionSchedule";

/// 瑜伽计划详情 - GET
 
let kYGAPIProgramInfo = "GET::session/yogaProgramDetail";
/// 上传计划进度 - POST
 
let kYGAPIProgramProgress = "POST::program/setProgramSchedule";

/// 会员说明 - GET
 
let kYGAPIVipHelpInfo = "GET::user/memberDescription";

/// 会员开通 - POST
 
let kYGAPIOpenVip = "POST::user/changeToMember";

/// 商品列表 - POST
 
let kYGAPIProductList = "POST::pay/product/list";

/// 订单列表
 
let kYGAPIOrderList = "POST::pay/orderList";

/// 订单详情
 
let kYGAPIOrderInfo = "POST::pay/orderInfo";

/// 积分兑换会员 - POST
 
let kYGAPICreateOrder = "POST::yoga/order/order/creatOrder";

/// 上报苹果内购 - POST
 
let kYGAPIReportIAPInfo = "POST::Pay/creatOrder4IosIap";

/// 课程下载地址获取 - GET
 
let kYGAPISessionDownloadURL = "GET::session/getDownloadLink";

/// 恢复课程 - POST
 
let kYGAPIRestoreSession = "POST::session/restoreSession";

/// banner列表 - GET
 
let kYGAPIBanners = "GET::session/banner";

/// 练习时长 - POST
 
let kYGAPIPlayTime = "POST::statistic/playtime";


//MARK: - 娱乐圈
/// 娱乐圈首页信息获取 - GET
 
let kYGAPIEntertainment = "POST::yogacircle/index";
/// 娱乐圈板块信息以及顺序 - GET
 
let kYGAPIBoardList = "GET::yogacircle/getColumn";

/// 搜索关键字获取 - GET
 
let kYGAPISearchKeywords = "GET::yogacircle/getSearchKeyword";

/// 帖子列表获取 - GET
 
let kYGAPIPosts = "GET::yogacircle/getPostsListByType";

/// 推荐关注列表获取 - GET
 
let kYGAPIRecommendFollows = "GET::yogacircle/recommendFollow";

/// 板块信息获取 - GET
 
let kYGAPIBoardInfo = "GET::yogacircle/getColumnInfo";

/// 话题详情 - GET
 
let kYGAPITopicInfo = "GET::yogacircle/getPostDetail";

/// 话题创建 - POST
 
let kYGAPICreateTopic = "POST::yogacircle/createPost";

/// 帖子回复 - POST
 
let kYGAPIReplyPost = "POST::yogacircle/replyPost";

/// 帖子回复列表获取 - GET
 
let kYGAPIPostReplies = "GET::yogacircle/getReplyList";

/// 举报帖子/回复 - POST
 
let kYGAPIReport = "POST::yogacircle/report";


//MARK: - 通知

/// 通知首页 - GET
 
let kYGAPINoteInfo = "GET::notice/index";

/// 瑜小蜜列表 - GET
 
let kYGAPISecretaryList = "GET::notice/yxmList";

/// 评论通知列表 - GET
 
let kYGAPINoticeComments = "GET::notice/commentList";

/// 新增粉丝列表 - GET
 
let kYGAPINewFans = "GET::notice/newfansList";

/// 检查是否关注 - POST
 
let kYGAPICheckPermission = "POST::user/permission";

/// 消息发送/用户反馈 - POST
 
let kYGAPIFeedback = "POST::notice/noticePush";

/// 根据用户UID获取用户昵称 - GET
 
let kYGAPIUserName = "GET::user/getUserName";

/// 清空本地消息 - POST
 
let kYGAPIClearMsg = "POST::notice/clearLocalData";

/// 推送测试 - POST
 
let kYGAPIPushTest = "POST::admin/systempush";



//MARK: - 个人

/// 他人个人信息获取 - GET
 

let kYGAPIOthersInfo = "GET::user/friendInfo";

/// 签到 - POST
 
let kYGAPICheckInSelf = "POST::user/signin";

/// 签到积分规则获取 - GET
 
let kYGAPIPointsRule = "GET::user/signinPointsRules";

/// 获取达人规则 - GET
 
let kYGAPIArtistRule = "GET::user/signinArtistRules";

/// 个人信息修改 - POST
 
let kYGAPIModifyPersonalInfo = "POST::user/updateUserInfo";

/// 用户关注以及粉丝列表 - GET
 
let kYGAPIFansFollows = "GET::user/getSnsList";

/// 用户积分记录 - GET
 
let kYGAPIPointsRecord = "GET::user/pointsHistory";

/// 我的课程列表 - GET
 
let kYGAPIMySessions = "GET::user/mySession";

/// 我的参加的课程 - GET
 
let kYGAPIMyJoinCourses = "GET::user/mysessionschedule";

/// 获取评估后推荐课程与计划 - GET
 
let kYGAPIAssessment = "GET::session/getRecommendList";
/// 收藏评估后的推荐课程与计划 - POST
 
let kYGAPICollectAssessmentResult = "POST::session/iwanttotry";
/// 我的计划列表 - GET
 
let kYGAPIMyPrograms = "GET::user/myYogaProgram";

/// 帖子删除 - POST
 
let kYGAPIPostDelete = "POST::user/deletePosts";

/// 我的收藏课程\计划\帖子列表 - GET
 
let kYGAPICollectList = "GET::user/myCollectList";

/// 瑜伽音乐 - GET
 
let kYGAPIMusics = "GET::user/yogaMusicList";

/// 排行榜 - GET
 
let kYGAPIRankList = "GET::user/pointsTopic";

/// 关注\取消关注 - POST
 
let kYGAPIFollowOther = "POST::user/follow";

/// 收藏或取消收藏 - POST
 
let kYGAPICollect = "POST::user/collect";

/// 喜欢\取消喜欢(赞\取消赞) - POST
 
let kYGAPILike = "POST::user/like";

/// 加入黑名单 - POST
 
let kYGAPIAddToBlackList = "POST::user/addBlackList";

/// 积分任务列表 - GET
 
let kYGAPIPointTasks = "GET::user/pointsTask";

/// 上报用户行为 - POST
 
let kYGAPIReportActions = "POST::user/userActionLog";

/// 上报用户地理位置 - POST
 
let kYGAPIReportGEOInfo = "POST::userextra/reportgeoinfo";

/// 精品推荐 - GET
 
let kYGAPIRecommendAPP = "GET::user/recommondApp";

/// 检测登陆用户是否是会员 - GET
 
let kYGAPICheckVip = "GET::user/checkIsVip";

//MARK: - 设置
/// 绑定手机号 - POST
 
let kYGAPIBindMobile = "POST::user/bindMobile";

/// 修改密码 - POST
 
let kYGAPIChangePwd = "POST::user/changePwd";

/// 获取通知设置 - POST
 
let kYGAPINoticeSettings = "POST::user/getInformSetup";

/// 修改通知设置 - POST
 
let kYGAPIChangeNotice = "POST::user/changeInformSetup";

/// 黑名单列表获取 - GET
 
let kYGAPIBlackList = "GET::user/blacklist";

/// 移除黑名单 - POST
 
let kYGAPIRemoveBlackList = "POST::user/removeBlack";

/// 获取最新版本信息 - GET
 
let kYGAPICheckVersion = "GET::user/checkVersion";

/// 第三方登陆用户绑定/修改密码 - POST
 
let kYGAPIBindPassword = "POST::user/bindPassword";

/// 隐私设置-私信设置 - POST
 
let kYGAPIPrivacySetup = "POST::user/letterSetup";

/// 退出登陆 - POST
 
let kYGAPISignOut = "POST::user/logout";

/// 激活码 - POST
 
let kYGAPICouponCode = "POST::couponcode/contrastCouponCode";

/// APP配置信息
 
let kYGAPIAppInfo = "XML::http:///iosconfigfile.oss-cn-hangzhou.aliyuncs.com/checkupdate/time_jiange.xml";
/// 卡路里配置信息
let kYGAPICalorieConfig = "GET::session/calorieconfig";
