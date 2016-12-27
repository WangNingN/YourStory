//
//  YSYourStoryViewController.swift
//  YourStory
//
//  Created by 王宁 on 2016/11/30.
//  Copyright © 2016年 王宁的mac. All rights reserved.
//

import UIKit

class YSYourStoryViewController: BaseViewController {

    private var loginView : UIView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        presentLoginVC()

    }
    
    func configTabar() -> Void {
        if isLogin() {
            if loginView != nil {
                loginView?.removeFromSuperview()
                self.tabBarController?.tabBar.isHidden = false
            }
        }else{
            self.tabBarController?.tabBar.isHidden = true
            if loginView == nil {
                loginView = UIView()
            }
            loginView!.backgroundColor = UIColor.orange
            loginView!.frame = CGRect(x: 0, y: ScreenHeight() - tabbarHeight(), width: ScreenWidth(), height: tabbarHeight())
            self.view.addSubview(loginView!)
            
            //设置登录按钮
            let logBtn = UIButton()
            logBtn.setTitle("登录", for: .normal)
            logBtn.frame = CGRect(x: 20, y: (loginView!.Height - 40)/2, width: ScreenWidth() - 20 * 2, height: 40)
            logBtn.addTarget(self, action: #selector(gotoLogin), for: .touchUpInside)
            loginView?.addSubview(logBtn)
        }
    }
    
    func gotoLogin() -> Void {
        presentLoginVC()
    }
    
    func presentLoginVC() -> Void {
        let login = YSLoginViewController()
        let loginNav = BaseNavigationController(rootViewController: login)
        self.present(loginNav, animated: true, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        configTabar()
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
