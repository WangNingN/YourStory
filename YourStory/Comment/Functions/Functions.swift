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
