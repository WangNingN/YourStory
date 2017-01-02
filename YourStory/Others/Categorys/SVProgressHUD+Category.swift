//
//  SVProgressHUD+Category.swift
//  YourStory
//
//  Created by 王宁 on 2017/1/1.
//  Copyright © 2017年 王宁的mac. All rights reserved.
//

import Foundation
import SVProgressHUD

extension SVProgressHUD {
    class func showInfoHUDwithDelay(delay: TimeInterval = 2, message: String) {
        SVProgressHUD.showInfo(withStatus: message)
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + delay, execute: {
            SVProgressHUD.dismiss()
        })
    }
}
