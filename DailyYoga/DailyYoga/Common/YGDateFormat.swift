//
//  YGDateFormat.swift
//  DailyYoga
//
//  Created by Beryter on 16/6/30.
//  Copyright © 2016年 Beryter. All rights reserved.
//

import Foundation

/// yyyy年M月d日
let DATEFORMAT  = "yyyy年M月d日"
/// yyyy年MM月dd日
let DATEFORMAT2 = "yyyy年MM月dd日"
///  yyyy年MM月dd日 HH:mm:ss
let DATEFORMAT3 = "yyyy年MM月dd日 HH:mm:ss"
///  yyyy年MM月dd日(EEE)
let DATEFORMAT4 = "yyyy年MM月dd日(ccc)"
///  yyyy/MM/dd HH:mm:ss
let DATEFORMAT5 = "yyyy/MM/dd HH:mm:ss"
///  yyyy/MM/dd
let DATEFORMAT6 = "yyyy/MM/dd"
///  yyyy年MM月dd日(EEE) HH:mm:ss
let DATEFORMAT7 = "yyyy年MM月dd日(ccc) HH:mm:ss"
///  yyyy年MM月
let DATEFORMAT8 = "yyyy年MM月"
///  yyyy/MM
let DATEFORMAT9 = "yyyy/MM"
///  HH:mm:ss
let DATEFORMAT10 = "HH:mm:ss"
///  YYYYMMDDHHMMSS
let DATEFORMAT11 = "yyyyMMddHHmmss"
///  yyyy/MM/dd HH:mm
let DATEFORMAT12 = "yyyy/MM/dd HH:mm"
/// yyyyMMddHHmm
let DATEFORMAT13 = "yyyyMMddHHmm"
///  yyyy年MM月dd日(EEE)HH:mm
let DATEFORMAT14 = "yyyy年MM月dd日(ccc)HH:mm"
///  yyyyMMdd
let DATEFORMAT15 = "yyyyMMdd"
/// HH:mm
let DATEFORMAT16 = "HH:mm"
/// HHmmss
let DATEFORMAT17 = "HHmmss"
/// HHmm
let DATEFORMAT18 = "HHmm"
/// yyyy-MM-dd HH-mm-ss
let DATEFORMAT19 = "yyyy-MM-dd HH-mm-ss"
/// HH
let DATEFORMAT20 = "HH"
/// mm
let DATEFORMAT21 = "mm"
/// ss
let DATEFORMAT22 = "ss"
/// yyyy-MM-dd HH:mm
let DATEFORMAT23 = "yyyy-MM-dd HH:mm"
/// yyyy-MM-dd HH:mm:ss
let DATEFORMAT24 = "yyyy-MM-dd HH:mm:ss"
/// yyyyMMddHHmmssSSSS
let DATEFORMAT25 = "yyyyMMddHHmmssSSSS"
/// mm:ss
let DATEFORMAT26 = "mm:ss"
///yyyy.MM.dd
let DATEFORMAT27 = "yyyy.MM.dd"

class YGDataFormat{
    let formatter = DateFormatter()
    static let sharedInstance = YGDataFormat()
    
    ///初始化
    private init(){
        formatter.locale = Locale.system
    }
    
    /**
     将日期转换成字符串
     - parameter date: 日期
     - parameter type: 字符串格式
     - returns: String 转换后的字符串
     */
    func convert(date: Date,type: String) -> String {
        
        formatter.dateFormat = type
        
        return formatter.string(from: date)
    }
    
    /**
     将字符串转换成日期
     - parameter dateString: 字符串
     - parameter type: 日期格式
     - returns: Date 转换后的日期
     */
    func convert(dateString: String,type: String) -> Date {
        formatter.dateFormat = type
        return formatter.date(from: dateString)!
    }
    
    /**
     将某种格式的日期字符串转换成另一种格式的日期字符串
     - parameter dateString: 日期字符串
     - parameter from: 被转换字符串格式
     - parameter to: 目的日期字符串的格式
     - returns: String 转换后的字符串
     */
    func covert(dateString: String,from: String, to: String) -> String {
        let date = convert(dateString: from, type: from)
        let str = convert(date: date, type: to)
        return str
    }
    
    /**
     比较两个日期
     - parameter firstDate: 日期
     - parameter secondDate: 日期
     - returns: Tuples sameYeart-true同年，sameMonth-true同月，sameDay-true同天
     */
    func compare(firstDate: Date,secondDate: Date) -> (sameYear: Bool,sameMonth: Bool,sameWeek: Bool,sameDay: Bool) {
        
        let calendar = Calendar.current;
        
        let comp1 = calendar.components([.year,.month,.day], from: firstDate)
        let comp2 = calendar.components([.year,.month,.day], from: secondDate)
        
        let sameYear = (comp1.year == comp2.year)
        
        var sameMonth = false
        var sameWeek = false
        var sameDay = false
        
        if sameYear && comp1.month == comp2.month {
            sameMonth = true;
        }
        
        if sameYear && sameMonth && comp1.weekOfMonth == comp2.weekOfMonth {
            sameWeek = true;
        }
        
        if sameYear && sameMonth && comp1.day == comp2.day {
            sameDay = true;
        }
        
        return (sameYear,sameMonth,sameWeek,sameDay)
    }
    
    /**
     以当前时间为参照为格式化日期字符串，如果给定日期如当前日期相差超过一个月，输出yyyy-MM-dd格式，如果相差超过一天输出MM-dd格式，如果是同一天则输出HH:mm
     */
    func formatDateSineNow(date: Date) -> String {
        
        let calendar = Calendar.current;
        
        let comp1 = calendar.components([.year,.month,.day], from: date)
        let comp2 = calendar.components([.year,.month,.day], from: Date())
        
        formatter.dateFormat = "MM-dd"
        
        if comp1.year != comp2.year {
            formatter.dateFormat = "yyyy-MM-dd"
        }
        
        if comp1.year == comp2.year && comp1.month == comp2.month && comp1.day == comp2.day {
            formatter.dateFormat = "HH:mm"
        }
        
        return formatter.string(from: date)
    }
}
