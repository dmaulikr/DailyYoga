//
//  YGUtil.swift
//  DailyYoga
//
//  Created by Beryter on 16/6/29.
//  Copyright © 2016年 Beryter. All rights reserved.
//

import Foundation
import AdSupport
import UIKit

struct YGUtil {
    
    ///图片裁剪方式
    enum YGImageFormatType {
        case None
        case Scale
        case CenterCrop
    }
    
    /**
     获取系统版本号
     - returns: String 系统版本号
     */
    static func appVersion() -> String
    {
        return String(Bundle.main.infoDictionary!["CFBundleShortVersionString"])
    }
    
    /**
     获取IDFA
     - returns: String IDFA
     */
    static func appIDFA() -> String
    {
        return ASIdentifierManager.shared().advertisingIdentifier.uuidString
    }
    
    /**
     设备的型号
     - returns: YGDeviceType 设备型号
     */
    static func deviceType() -> YGDeviceType
    {
        if UI_USER_INTERFACE_IDIOM() == .pad {
            return YGDeviceType.pad
        }
        return YGDeviceType.phone
    }
    
    /**
     判断设备是否是pad
     - returns: Bool true - pad
     */
    static func isPad() -> Bool
    {
        return UI_USER_INTERFACE_IDIOM() == .pad
    }
    
    /**
     判断设备是否是phone
     - returns: Bool true - iphone
     */
    static func isPhone() -> Bool
    {
        return UI_USER_INTERFACE_IDIOM() == .phone
    }
    
    /**
     屏幕的宽度
     - returns: CGFloat 设备宽度
     */
    static func screenWidth() -> CGFloat
    {
        return min(UIScreen.main().bounds.width, UIScreen.main().bounds.height)
    }
    
    /**
     屏幕的宽度
     - returns: CGFloat 设备高度
     */
    static func screenHeight() -> CGFloat
    {
        return max(UIScreen.main().bounds.width, UIScreen.main().bounds.height)
    }
    
    /**
     app内边线的宽度
     - returns: Float 线的宽度
     */
    static func lineWidth() -> Float
    {
        return isPad() ? 1.0 : 0.6
    }
    
    static func deleteEmoji(string: String, sty: String) -> String
    {
        return ""
    }
    
    static func formatImageURL(url: NSString,size: CGSize,type: YGImageFormatType) -> NSString
    {
        if type == .None {
            return url
        }
        
        var tmpURL = NSMutableString(string: url)
        let scale = UIScreen.main().scale
        let range = tmpURL.range(of: "http://st")
        let range1 = tmpURL.range(of: "qiniucdn")
        
        if range.length > 0 {
            let array = tmpURL.components(separatedBy: ".")
            let imageType = ".".appending(array.last!);
            var wh = "(fill)_\(size.width*scale)-\(size.height*scale)"
            if type == .CenterCrop {
                wh = "_\(size.width*scale)-\(size.height*scale)"
            }
            let subRange = tmpURL.range(of: imageType)
            tmpURL.insert(wh, at: subRange.location)
            return tmpURL
        }else if range1.length > 0{
            if type == .Scale {
                let result = "\(tmpURL)?imageView2/2/w/\(Int(size.width*scale))/h/\(Int(size.height*scale))"
                tmpURL = NSMutableString(string: result)
            }else if type == .CenterCrop{
                let result = "\(tmpURL)?imageView2/1/w/\(Int(size.width*scale))/h/\(Int(size.height*scale))"
                tmpURL = NSMutableString(string: result)
            }
        }
        return NSString.init(string: tmpURL)
    }
}
