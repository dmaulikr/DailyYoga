//
//  YGPlan.swift
//  DailyYoga
//
//  Created by Beryter on 16/7/1.
//  Copyright © 2016年 Beryter. All rights reserved.
//

import Foundation
class YGPlan{
    ///计划id
    var programId: String?
    ///计划名称
    var title: String?
    ///计划简介
    var name: String?
    ///计划logo
    var logo: String?
    ///分享计划配图
    var shareLogo: String?
    ///分享计划URL
    var shareUrl: String?
    ///计划描述
    var desc: String?
    ///强度ID
    var levelId = 0
    ///专区类别
    var goal: String?
    ///计划卡片Logo
    var cardLogo: String?
    ///6.2.0版本以后使用封面图
    var logoCover: String?
    ///详情界面Logo封面
    var logoDetail: String?
    ///赞数
    var fans: String?
    ///收藏数
    var collects: String?
    ///下载人数
    var downloads: String?
    ///是否收藏
    var isCollect = false
    ///是否点赞
    var isLike = false
    ///是否会员专享
    var isVip = false
    ///1：热门，2：最新,服务器数据,使用过程中使用YGCourseType属性
    var tag: String?
    ///属性列表
    var tags: Array<Int>?
    ///是否是限免
    var limitFree = false
    ///卡路里
    var calorie: String?
    ///计划包含课程数
    var planCoursesCount = 0
    var planCoursesInfoText: String?
    
    ///课程类型
    var planType = YGCourseType.normal
    ///练习完成分享页面
    var shareResultURL: String?
    ///目前的状态
    var status = YGPlanStatus.inactive
    ///计划包名称
    var package: String?
    ///包含的课程集合
    var courses: Array<YGCourse>?
    ///已完成的进度,最后一次练习完成的课程的ID
    var completeCourseId: String?
    ///已完成的进度,最后一次练习完成的课程的索引，从1开始计数
    var completeCourseIndex = 0
    ///已完成的进度，最后一次练习完成的课程的时间
    var completeCourseTime: String?
    ///是否是根据自我评估推荐的课程
    var isAssessment = false
    ///相关装备
    var equipmentList: Array<Dictionary<String,String>>?
    
    init() {
        
    }
}
