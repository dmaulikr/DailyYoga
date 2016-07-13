//
//  YGHttpManager.swift
//  DailyYoga
//
//  Created by Beryter on 16/7/1.
//  Copyright © 2016年 Beryter. All rights reserved.
//

/*
import Foundation
import Alamofire

class YGHttpManager {
    static let shared = YGHttpManager()
    let httpHeader : Dictionary<String,String>
    let httpManager: Alamofire.Manager
    typealias resultBlock = (result: AnyObject?,error:YGHttpError?) -> Void
    private init(){
        var headSettings = [String : String]()
        headSettings["dailyyoga-version"] = kYGAPICheckVersion
        headSettings["dailyyoga-channel"] = kYGChannel
        headSettings["dailyyoga-deviceId"] = "aa"
        self.httpHeader = headSettings
        let configuration = URLSessionConfiguration.default()
        configuration.httpAdditionalHeaders = self.httpHeader
        configuration.timeoutIntervalForRequest = 30
        self.httpManager = Alamofire.Manager(configuration: configuration)
    }
    
//    func request(params: Dictionary<String,AnyObject>,interface: String,completeHandler: ((result: AnyObject?,error:YGHttpError?) -> Void))
    func fetchData(params: Dictionary<String,AnyObject>,interface: String,completeHandler: resultBlock){
        var method = Alamofire.Method.GET
        if interface.contains("POST::") {
            method = .POST
        }
        let array = interface.components(separatedBy: "::")
        let url = kYGBaseURL + array[1]
        self.httpManager.request(method, url, parameters: params, encoding: .url, headers: self.httpHeader).responseJSON { response in
            
            print(response.request)  // original URL request
            print(response.response) // URL response
            print(response.data)     // server data
            print(response.result)   // result of response serialization
            if let JSON = response.result.value {
                print("JSON: \(JSON)")
            }
            completeHandler(result: "fsfsf",error: YGHttpError(code: 123,message: "测试"))
        }
    }
}
*/
