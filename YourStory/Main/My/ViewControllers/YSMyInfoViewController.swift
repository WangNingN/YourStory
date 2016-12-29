//
//  YSMyInfoViewController.swift
//  YourStory
//
//  Created by 王宁 on 2016/11/30.
//  Copyright © 2016年 王宁的mac. All rights reserved.
//

import UIKit

class YSMyInfoViewController: BaseViewController,UIAlertViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        configRightButton()
        // Do any additional setup after loading the view.
        if isLogin() {
            
        }else{
            let login = YSLoginViewController()
            let loginNav = BaseNavigationController(rootViewController: login)
            self.present(loginNav, animated: true, completion: nil)
        }
    }
    
    func configRightButton() -> Void {
        let setImage = UIImage(named: "settings")
        let rightItem = UIBarButtonItem(image: setImage, style: UIBarButtonItemStyle.plain, target: self, action: #selector(settingAction))
        self.navigationItem.rightBarButtonItem = rightItem
    }
    
    func settingAction() -> Void {
        let settings = YSSettingViewController()
        settings.hidesBottomBarWhenPushed = true
        self.navigationController?.pushViewController(settings, animated: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
