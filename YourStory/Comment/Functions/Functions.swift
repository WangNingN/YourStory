//
//  Functions.swift
//  YourStory
//
//  Created by Mena on 16/12/27.
//  Copyright © 2016年 王宁的mac. All rights reserved.
//

import Foundation
import UIKit
import CoreData
import SVProgressHUD

//
public func showHUD() -> Void {
//    let delayTime = DispatchTime.now(dispatch_time_t(DISPATCH_TIME_NOW), Int64(3 * Double(NSEC_PER_SEC)))
    /*
     let delayTime = dispatch_time(DISPATCH_TIME_NOW, Int64(3 * Double(NSEC_PER_SEC)))
     dispatch_after(delayTime, dispatch_get_main_queue()) { () -> Void in
     //延迟3秒，执行的操作
     }
     */
//    DISPATCH_TIME_NOW
    
    DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2, execute: {
        print("2秒延迟")
    })
}
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

// MARK: - 正则表达式-验证昵称(数字、字母、下划线)
public func isValidName(name:String) -> Bool {
    let pattern = "^[0-9a-zA-Z_]{1,}$"
    return matchePattern(pattern: pattern, str: name)
}

// MARK: - 正则表达式-验证是否手机号码
public func isVailidPhoneNumber(phoneNumber:String) -> (Bool) {
    let pattern = "^1(3[0-9]|4[579]|5[0-35-9]|7[013567]|8[0-9])\\d{8}$"
    return matchePattern(pattern: pattern, str: phoneNumber)
}

// MARK: - 私有方法，匹配正则表达式
private func matchePattern(pattern:String, str:String) -> Bool {
    do {
        // - 1、创建正则表达式对象
        let regex = try NSRegularExpression(pattern: pattern, options: NSRegularExpression.Options.caseInsensitive)
        // - 2、开始匹配
        let res = regex.matches(in: str, options: NSRegularExpression.MatchingOptions(rawValue: 0), range: NSMakeRange(0, str.characters.count))
        // 输出结果
        return !res.isEmpty
    }
    catch {
        return false
    }
}

/*
/// 图片翻转，使图片正向
public func imageRotate(img:UIImage) -> UIImage {
    if img.imageOrientation == UIImageOrientation.up
    {
        return img
    }
    
//    var transform = CGAffineTransformIdentity
    var transform = CGAffineTransform()
    
    switch img.imageOrientation
    {
    case UIImageOrientation.down,UIImageOrientation.downMirrored:
        transform = transform.translatedBy(x: img.size.width, y: img.size.height)
        transform = transform.rotated(by: CGFloat(M_PI))
    case UIImageOrientation.left,UIImageOrientation.leftMirrored:
        transform = transform.translatedBy(x: img.size.width, y: 0)
        transform = transform.rotated(by: CGFloat(M_PI_2))
    case UIImageOrientation.right,UIImageOrientation.rightMirrored:
        transform = transform.translatedBy(x: 0, y: img.size.height)
        transform = transform.rotated(by: CGFloat(-M_PI_2))
    default:
        print("")
    }
    
    switch img.imageOrientation
    {
    case UIImageOrientation.upMirrored,UIImageOrientation.downMirrored:
        transform = transform.translatedBy(x: img.size.width, y: 0)
        transform = transform.scaledBy(x: -1, y: 1)
    case UIImageOrientation.leftMirrored,UIImageOrientation.rightMirrored:
        transform = transform.translatedBy(x: img.size.height, y: 0)
        transform = transform.scaledBy(x: -1, y: 1)
    default:
        print("")
    }
    let ctx = CGContext(data: nil, width: Int(img.size.width), height: Int(img.size.height), bitsPerComponent: img.cgImage!.bitsPerComponent, bytesPerRow: 0, space: img.cgImage!.colorSpace!, bitmapInfo: img.cgImage!.bitmapInfo.rawValue)
    ctx!.concatenate(transform)
    
    switch img.imageOrientation
    {//CGRect(0, 0, img.size.height, img.size.width)
    case UIImageOrientation.left,
         UIImageOrientation.leftMirrored,
         UIImageOrientation.rightMirrored,
         UIImageOrientation.right:
        CGContextDrawImage(ctx!,CGRect(x: 0, y: 0, width: 1, height: 1) , img.cgImage!)
        
    default:
        CGContextDrawImage(ctx!, CGRectMake(0,0,img.size.width,img.size.height), img.cgImage!)
    }
    let cgImg = CGBitmapContextCreateImage(ctx!)
    let image = UIImage(CGImage: cgImg!)
    return image
}
*/
