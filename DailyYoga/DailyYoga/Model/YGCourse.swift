//
//  YGCourse.swift
//  DailyYoga
//
//  Created by Beryter on 16/7/1.
//  Copyright © 2016年 Beryter. All rights reserved.
//

import Foundation

class YGCourse {
    
    ///课程id
    var sessionId: String?
    ///分类ID
    var goal: String?
    ///教练ID
    var chId: String?
    ///强度
    var level: String?
    ///强度ID
    var levelId = 0
    ///时长ID数组
    var durations: Array<Dictionary<String,String>>?
    ///是否是推荐课程
    var isRecommend = false
    ///是否是根据自我评估推荐的课程
    var isAssessment = false
    ///卡路里
    var calorie: String?
    ///link_info 链接信息
    //"link_title": "23", 标题
    //"link_type": 10, 链接类型
    //"link_content": "3" 链接地址
    var linkInfo: Dictionary<String,String>?
    ///是否参加服务器数据，1参加，2是未参加
    var status = 0
    ///是否参加课程，使用过程中使用此变量
    var isJoin = false
    ///参加时间session_time
    var sessionTime: String?
    
    ///课程logo
    var logo: String?
    ///新版课程logo,旧版logo废弃
    var logoCover: String?
    ///顶部图片
    var logoTop: String?
    ///课程名称
    var title: String?
    ///赞数
    var fans: String?
    ///下载数
    var downloads: String?
    ///收藏数
    var collects: String?
    ///是否赞过
    var isLike = false
    ///是否收藏过
    var isCollect = false
    ///练习完成分享页面
    var shareResultURL: String?
    ///是否永久使用,是否已经购买
    var isBuy = false
    ///课程包校验码，用于比对课程包是否正确
    var md5: String?
    ///课程版本号
    var vc: String?
    ///视频比例字典
    var screenScales: Dictionary<String,Int>?
    ///课程下载地址
    var links: Array<String>?
    ///课程包名,plist文件的名称
    var package: String?
    ///iOS课程购买标识
    var inappID: String?
    ///分享出去的URL
    var shareUrl: String?
    /// 课程分类名称
    var categary: String?
    /// 课程描述
    var desc: String?
    ///教练信息集合
    var author: Dictionary<String,Any>?
    /// 教练姓名
    var coachName: String?
    /// 教练头像
    var coachAvatar: String?
    /// 教练简介
    var coachProfile: String?
    /// 是否会员专享
    var isVip = false
    ///是否是限免
    var limitFree = false
    ///1：热门，2：最新,服务器数据,使用过程中使用YGCourseType属性
    var tag: String?
    ///属性列表
    var tags: Array<Int>?
    ///课程类型
    var courseType = YGCourseType.normal
    ///课程中动作列表
//    @property (strong, nonatomic) NSArray *poses;
    ///课程下载状态
    var downloadType = YGCourseDownloadType.undownload
    ///课程的时段duration,title,name
    var intensity: Array<Dictionary<String,String>>?
    
    //课程播放视频相关
    ///课程文件路径
    var courseFilePath: String?
    
    //计划相关
    ///所属课程包，强度列表下标(某一课程所要播放的时段在intensityVideoArray中的索引)
    var intensityLevel: String?
    ///强度名称
    var intensityName: String?
    ///相关装备
    var equipmentList: Array<Dictionary<String,String>>?
    
    init() {
        
    }
}
