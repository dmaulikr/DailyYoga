//
//  YGCacheHandler.swift
//  DailyYoga
//
//  Created by Beryter on 16/7/15.
//  Copyright © 2016年 Beryter. All rights reserved.
//

import Foundation

struct YGCacheHandler {
    
    //MARK: 创建文件目录
    /**
     创建根目录
     */
    static func createRootDirectory()
    {
        
    }
    
    /**
     获取文件根目录路径
     - returns: NSString 文件根目录路径
     */
    static func rootDirectoryPath() -> NSString
    {
        return ""
    }
    
    //MARK: APP相关信息
    /**
     是否是第一次启动
     - returns: Bool true - 第一次启动，fase - 非第一次启动
     */
    static func firstLaunch() -> Bool
    {
        if UserDefaults.standard.object(forKey: "YGAppFirstLaunch") != nil{
            return false
        }
        return true
    }
    
    /**
     更新第一次启动状态
     */
    static func updateFisrtLaunch()
    {
        UserDefaults.standard.set("YGAppFirstLaunch", forKey: "YGAppFirstLaunch")
        UserDefaults.standard.synchronize()
    }
    
    //MARK: 用户的存取
    /**
     获取缓存的用户信息
     - returns: YGUser 本地缓存的用户
     */
    static func userCache() -> YGUser?
    {
        return nil
    }
    
    /**
     缓存用户信息
     - parameter user: 用户信息
     */
    static func updateUserCache(user: YGUser)
    {
        
    }
    
}
