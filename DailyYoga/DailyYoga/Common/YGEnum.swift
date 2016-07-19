//
//  YGEnum.swift
//  DailyYoga
//
//  Created by Beryter on 16/6/30.
//  Copyright © 2016年 Beryter. All rights reserved.
//

import Foundation

///设备型号
enum YGDeviceType: Int {
    case unknow = 1
    case phone
    case pad
}

/// 主界面类型
enum YGRootViewControllerType: Int
{
    case guide
    case tabBar
}

///地区
enum YGArea: Int {
    case mainlandChina  //!< 内陆
    case hongKong       //!< 香港
    case macau          //!< 澳门
    case taiWan         //!< 台湾
};

/// 用户类型
enum YGUserType: Int
{
    case visitor      //!< 游客
    case general      //!< 一般用户
    case vip          //!< 会员用户
};

///用户行为
enum YGUserActionType: Int
{
    case createPost = 1            //!< 发布帖子
    case courseComplete = 2        //!< 练习完课程
    case shareCourse = 3           //!< 分享课程
    case sharePlan = 4             //!< 分享计划
    case shareCourseFruit = 5      //!< 分享课程成果
    case sharePlanFruit = 6        //!< 分享计划成果
    case inviteFriend = 10         //!< 邀请好友
    case planComplete = 11         //!< 完成计划
    case downLoadCourse = 14       //!< 下载课程
    case startPlan = 15            //!< 开始计划
    case downLoadMusic = 24        //!< 下载音乐专辑
    case sharePost = 33            //!< 分享帖子
    case checkIn = 36              //!< 签到心情
    case shareAchievement = 37     //!< 分享成就
    case courseCompleteInPlan = 40 //!< 完成计划中的某一节课程
};
///课程下载计划
enum YGCourseDownloadType: Int
{
    case undownload      //!<未下载
    case downloading     //!<正在下载
    case downloadPause   //!<暂停中
    case downloaded      //!<已经下载完毕
};


/// 帐号类型
enum YGAccountType: Int
{
    case unKnow
    case mobile        //!< 手机帐号
    case email         //!< 邮箱帐号
    case QQ            //!< QQ 帐号
    case weibo         //!< 微博帐号
    case wechat        //!< 微信帐号
};

/// 用户性别
enum YGUserGender: Int
{
    case female = 0     //!< 女
    case male           //!< 男
    case unknown        //!< 未填写
};

/// 开屏广告类型
enum YGLaunchingAdType: Int
{
    case unKnow
    case `default`
    case splash
};

/// 积分变动类型
enum YGPointType: Int
{
    case increase = 0    //!< 积分增加
    case decrease        //!< 积分减少
};

/// 关注与粉丝
enum YGSNSType: Int
{
    case unKnow
    case myFollow          //!< 我的全部关注
    case followEachOther   //!< 我的相互关注
    case followMe          //!< 我的粉丝
    case hisFollow         //!< TA的关注
    case followHe          //!< TA的粉丝
};

/// 计划状态
enum YGPlanStatus: Int
{
    case inactive = 0   //!< 计划不活跃
    case inProgress     //!< 计划进行中
    case complete       //!< 计划已完成
    case giveUp         //!< 放弃计划
};

/// 排行榜类型
enum YGRankType: Int
{
    case unKnow
    case total              //!< 所有人
    case myFriend           //!< 我的好友
};

///搜藏类型
enum YGCollectType: Int
{
    case unKnow
    case course         //!< 课程
    case plan           //!< 计划
    case post           //!< 帖子
    case enterprise     //!< 企业课
    case pose           //!< 动作库
};
///点赞类型
enum YGLikeType: Int
{
    case unKnow
    case course       //!< 课程
    case plan         //!< 计划
    case post         //!< 帖子
    case enterprise   //!< 企业课
    case pose         //!< 动作库
};

/// 界面跳转类型
enum YGOpenLinkType: Int
{
    case unknown = 0      //!< 未定义
    case safari = 1       //!< 跳转到safari打开
    case course = 2       //!< 跳转到课程界面
    case plan = 3         //!< 跳转到计划界面
    case post = 4         //!< 跳转到帖子界面
    case music = 5        //!< 跳转到瑜伽音乐
    case profile = 6      //!< 跳转到个人中心
    case discount = 7     //!< 跳转到打折课程
    case lottery = 8      //!< 跳转到抽奖界面
    case adHeadline = 10  //!< 焦点图广告跳转
    case duiBa = 11       //!< 兑吧广告链接
    case video = 12       //!< 流媒体链接
    case commonURL = 100  //!< 通用URL跳转
};

/// banner类型
enum YGBannerType: Int
{
    case unKnow
    case course         //!< 课程
    case plan           //!< 计划
    case community      //!< 娱乐圈
    case activity       //!< 活动弹窗
};

/// 帖子类型
enum YGPostType: Int
{
    case normal      //!< 普通
    case essence     //!< 加精
    case hot         //!< 热门
};

/// 通知类型
enum YGMessageType: Int
{
    case unknow
    case yuXiaoMi      //!< 瑜小蜜通知
    case comment       //!< 评论通知
    case newFans       //!< 新增粉丝通知
};

///push通知类型
enum YGNotificationType: Int
{
    case unknown  //!< 未知
    case yuxiaomi //!< 瑜小蜜
    case comment  //!< 评论，回复，赞
    case newfans  //!< 粉丝
    case letter   //!< 私信
};

///帖子列表分类
enum YGPostListType: Int
{
    case unKnow
    case hot       //!< 热门话题
    case search    //!< 搜索话题
    case follow    //!< 我的关注
    case board     //!< 板块列表
    case mine      //!< 我的帖子
    case other     //!< 他的帖子
};
///帖子排序
enum YGPostOrderType: Int
{
    case unKnow
    case createTimeDesc = 1  //!< 创建时间倒序
    case createTimeAsc       //!< 创建时间正序
    case replyTimeDesc       //!< 回复时间倒序
    case essence             //!< 精华
    case hot                 //!< 热门
};

///课程与计划类型
enum YGCourseType: Int
{
    case normal = 0  //!< 普通
    case hot         //!< 热门
    case newer       //!< 最新
    case limitFree   //!< 限免
};

///11:安卓微信，12安卓支付宝，20 IOSinapp，21IOS微信，22IOS支付宝，32，web端支付宝
enum YGPayType: Int
{
    case unKnow
    case point = 11   //!< 积分购买
    case IAP = 20     //!< 内购
    case wechat = 21  //!< 微信支付
    case alia = 22    //!< 支付宝
    case web = 32     //!< web支付
};

