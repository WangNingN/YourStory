//
//  Functions.swift
//  YourStory
//
//  Created by Mena on 16/12/27.
//  Copyright © 2016年 王宁的mac. All rights reserved.
//

import Foundation
import UIKit

// MARK:- 判断是否登录
public func isLogin() -> Bool {
    return UserDefaults.standard.bool(forKey: global_userDefaultsKey_isLogin)
}

public func configLoginStatus(isLogin:Bool) {
    UserDefaults.standard.set(isLogin, forKey: global_userDefaultsKey_isLogin)
    UserDefaults.standard.synchronize()
}

public func ScreenHeight() -> CGFloat {
    return UIScreen.main.bounds.size.height
}

public func ScreenWidth() -> CGFloat {
    return UIScreen.main.bounds.size.width
}

public func navigationBarHeight() -> CGFloat {
    return 64
}

public func tabbarHeight() -> CGFloat {
    return 48
}

// MARK: - 正则表达式-验证是否手机号码
public func isVailidPhoneNumber(phoneNumber:String) -> (Bool) {
    do {
        // - 1、创建规则
        let pattern = "^1(3[0-9]|4[579]|5[0-35-9]|7[013567]|8[0-9])\\d{8}$"
        // - 2、创建正则表达式对象
        let regex = try NSRegularExpression(pattern: pattern, options: NSRegularExpression.Options.caseInsensitive)
        // - 3、开始匹配
        let res = regex.matches(in: phoneNumber, options: NSRegularExpression.MatchingOptions(rawValue: 0), range: NSMakeRange(0, phoneNumber.characters.count))
        // 输出结果
        return !res.isEmpty
    }
    catch {
        return false
    }
}
