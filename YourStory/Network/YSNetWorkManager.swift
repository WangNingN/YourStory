//
//  YSNetWorkManager.swift
//  YourStory
//
//  Created by 王宁 on 2016/12/4.
//  Copyright © 2016年 王宁的mac. All rights reserved.
//

import UIKit
import AFNetworking

class YSNetWorkManager: NSObject {
    static let shareSingle = YSNetWorkManager()
    let netIp = "http://www.bat360.cn/doga/"
    
    private func configUrl(actionString:String) -> String {
        return netIp + actionString + "?"
    }
    
    //MARK: - 注册
    func networkRegisterWithNickName(name:String, phone:String, pwd:String) -> Void {
        let afn = AFHTTPSessionManager()
        let url = configUrl(actionString: "regist.action")
        let par = ["nickname":123,"username":18611111111,"password":111111]
        afn.get(url, parameters: par, progress: nil, success: {(data,request) in
            print("data ---- \(request)")
        }, failure: {(data,error) in
            print("error --- \(error)")
        })
    }
    
    //MARK: - 登录
    func networkLoginWithNickName(username:String, password:String) -> Void {
        let afn = AFHTTPSessionManager()
        let url = configUrl(actionString: "login.action")
        let par = ["username":18611111111,"password":111111]
//        afn.post(url, parameters: par, progress: nil, success: ((URLSessionDataTask, Any?) -> Void)?, failure: <#T##((URLSessionDataTask?, Error) -> Void)?##((URLSessionDataTask?, Error) -> Void)?##(URLSessionDataTask?, Error) -> Void#>)
        afn.post(url, parameters: par, progress: nil, success: {(data,request) in
            print("data ---- \(request)")
        }, failure: {(data,error) in
            print("error --- \(error)")
        })
    }
    
    //MARK: - 修改昵称
    func networkChangeNickNameWithNickName(username:String, password:String) -> Void {
        let afn = AFHTTPSessionManager()
        let url = configUrl(actionString: "updatenickname.action")
        let par = ["token":"7f77b6cd-88852d-4df0-a643-6a6c4af33a1c","nickname":111111] as [String : Any]
        afn.get(url, parameters: par, progress: nil, success: {(data,request) in
            print("data ---- \(request)")
        }, failure: {(data,error) in
            print("error --- \(error)")
        })
    }
}
