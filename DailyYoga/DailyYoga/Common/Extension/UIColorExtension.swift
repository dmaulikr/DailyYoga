//
//  UIColorExtension.swift
//  DailyYoga
//
//  Created by Beryter on 16/7/19.
//  Copyright © 2016年 Beryter. All rights reserved.
//

import Foundation
import UIKit

extension UIColor
{
    //MARK: 便利构造器
    /**
     将16进制色值转成UIColor
     - parameter rgb: 16进制色值
     - returns: UIColor
     */
    convenience init(rgb: Int) {
        self.init(red: CGFloat(Float(((rgb & 0xff0000) >> 16))/255.0), green: CGFloat(Float(((rgb & 0x00ff00) >> 8))/255.0), blue: CGFloat(Float(rgb & 0x0000ff)/255.0), alpha: CGFloat(1.0))
    }
    
    /**
     将16进制色值转成UIColor
     - parameter rgb: 16进制色值
     - parameter alpha: 透明度
     - returns: UIColor
     */
    convenience init(rgb: Int, alpha: CGFloat) {
        self.init(red: CGFloat(Float(((rgb & 0xff0000) >> 16))/255.0), green: CGFloat(Float(((rgb & 0x00ff00) >> 8))/255.0), blue: CGFloat(Float(rgb & 0x0000ff)/255.0), alpha: alpha)
    }
}
