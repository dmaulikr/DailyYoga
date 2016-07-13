//
//  YGUtil.swift
//  DailyYoga
//
//  Created by Beryter on 16/6/29.
//  Copyright © 2016年 Beryter. All rights reserved.
//

import Foundation
import UIKit

struct YGUtil {
    
    enum YGImageFormatType {
        case None
        case Scale
        case CenterCrop
    }
    
    static func test(){
        
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
