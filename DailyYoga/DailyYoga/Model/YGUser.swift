//
//  YGUser.swift
//  DailyYoga
//
//  Created by Beryter on 16/6/30.
//  Copyright © 2016年 Beryter. All rights reserved.
//

import Foundation

class YGUser {
    /// 登录用户session id
    var sid: String?
    /// 用户id
    var uid: String?
    var endTime: String?
    var startTime: String?
    var thumbnail: String?
    /// 登录有效期时间戳，默认30天内不过期
    var sessionExpire: String?
    /// 创建时间
    var createTime: String?
    /// 用户所在地区标示
    var areaCode: String?
    /// 用户手机号
    var mobile: String?
    /// 用户邮箱
    var email: String?
    /// 用户类型
    var userType = YGUserType.general
    /// 是否认证用户
    var isAuth = false
    /// 是否会员
    var isVip = false
    /// 是否是达人
    var isArtist = false
    /// 是否是教练
    var isInstructor = false
    /// 教练H5页面跳转URL
    var instructorUrl: String?
    /// 是否企业课用户
    var isEnterprise = false
    /// 企业课H5页面跳转URL
    var enterpriseUrl: String?
    /// 企业课Id
    var enterpriseId: String?
    /// 认证用户Title
    var authTitle: String?
    /// 认证说明
    var authDesc: String?
    /// 账户类型
    var accountType = YGAccountType.unKnow
    /// 用户头像
    var avatar: String?
    /// 用户头像集合
    var avatarProps: Dictionary<String,String>?
    /// 用户昵称
    var nickname: String?
    /// 用户性别
    var gender = YGUserGender.unknown
    /// 用户生日
    var birthday: String?
    /// 省id
    var province: String?
    /// 省名称
    var provinceName: String?
    /// 市id
    var city: String?
    /// 市名称
    var cityName: String?
    /// 今天是否签到
    var isSignIn = false
    /// 签到总次数
    var signInCount = 0
    /// 用户积分数
    var points = 0
    /// 关注数
    var follows = 0
    /// 粉丝数
    var fans = 0
    /// 用户练习数
    var exercise = 0
    /// 用户练习总时长
    var playTime = 0.0
    /// 用户消耗卡路里
    var calories = 0
    /// 是否已经关注
    var isFollow = false
    /// 是否黑名单用户
    var isBlack = false
    /// 用户资料是否已经完善
    var isFull = false
    /// 今天是否首次登录
    var isFirstLogin = false
    /// 首次登录获取的分数
    var firstLoginPoints = 0
    /// 首次登录获取积分描述
    var firstLoginDesc: String?
    /// 版本号
    var version: String?
    /// 新版本描述
    var versionDesc: String?
    /// 邀请码
    var inviteCode: String?
    /// 邀请链接
    var inviteURL: String?
    /// 是否需要强制更新
    var isUpdate = false
    /// 已完成课程数目
    var completeCourseCount = 0
    /// 已完成计划数目
    var completePlanCount = 0
    /// 开屏广告类型
    var adType = YGLaunchingAdType.default
    ///是否评估
    var isAssessment = false
    ///评估-瑜伽级别
    var assessmentLevel = 0
    ///评估-瑜伽目的
    var assessmentPurposes: Array<String>?
    /// 积分商城提示
    var mallTipIcon: String?
    var mallTipText: String?
    
    init() {
    }
}
