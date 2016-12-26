//
//  BaseTabBarController.swift
//  YourStory
//
//  Created by 王宁 on 2016/11/30.
//  Copyright © 2016年 王宁的mac. All rights reserved.
//

import UIKit

class BaseTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        configControllers()
    }

    func configControllers() -> Void {
        
        let attributes =  [NSForegroundColorAttributeName: UIColor.darkGray]

        let storyVC = YSYourStoryViewController()
        let navStory = YSYourStoryNavigationController(rootViewController: storyVC)
        navStory.tabBarItem.image = UIImage(named: "tabbar_yourStory")?.withRenderingMode(.alwaysOriginal)
        navStory.tabBarItem.title = "故事"
        navStory.tabBarItem.setTitleTextAttributes(attributes, for: .selected)
        self.addChildViewController(navStory)
        
        let writeStoryVC = YSWriteStoryViewController()
        let navWriteStory = YSWriteNavigationController(rootViewController: writeStoryVC)
        navWriteStory.tabBarItem.image = UIImage(named: "tabbar_writeStory")?.withRenderingMode(.alwaysOriginal)
        navWriteStory.tabBarItem.title = "讲故事"
        navWriteStory.tabBarItem.setTitleTextAttributes(attributes, for: .selected)
        self.addChildViewController(navWriteStory)
        
        let myInfoVC = YSMyInfoViewController()
        let navMyInfo = YSWriteNavigationController(rootViewController: myInfoVC)
        navMyInfo.tabBarItem.image = UIImage(named: "tabbar_my")?.withRenderingMode(.alwaysOriginal)
        navMyInfo.tabBarItem.title = "我的"
        navMyInfo.tabBarItem.setTitleTextAttributes(attributes, for: .selected)
        self.addChildViewController(navMyInfo)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
