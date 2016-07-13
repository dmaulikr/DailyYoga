//
//  YGHttpError.swift
//  DailyYoga
//
//  Created by Beryter on 16/7/1.
//  Copyright © 2016年 Beryter. All rights reserved.
//

import Foundation

struct YGHttpError {
    
    ///错误码
    let code: Int
    ///错误信息
    let message: String
    
    var isNetworkError: Bool{
        get{
            return self.code == 666666
        }
    }
    
    var isServerError: Bool{
        get{
            return !(self.code == 666666)
        }
    }
    
    var isLoginExpireError: Bool{
        get{
            return self.code == 999
        }
    }
    
    init() {
        self.code = 0
        self.message = ""
    }
    
    init(code: Int,message: String) {
        self.code = code;
        self.message = message;
    }
    
    static func serverError() -> YGHttpError
    {
        return YGHttpError(code: 999999,message: kYG_Service_Error)
    }
    
    static func networkError() -> YGHttpError
    {
        return YGHttpError(code: 666666, message: kYG_Network_Error)
    }
}
