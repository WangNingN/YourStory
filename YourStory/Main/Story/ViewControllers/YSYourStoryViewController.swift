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
    var arrData = [YSPostListModel]()
    @IBOutlet var storyTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configData()
        self.storyTableView.rowHeight = UITableViewAutomaticDimension;
        self.storyTableView.estimatedRowHeight = 20;
        storyTableView.register(UINib(nibName: String(describing: YSPostListCellTableViewCell.self), bundle: nil), forCellReuseIdentifier: String(describing: YSPostListCellTableViewCell.self))
    }
    
    func configData() -> Void {
        let network = YSNetWorkManager.shareSingle;
        network.networkPostListWithNickName(username: "", password: "")
        for i in 0..<10 {
            let strI = String(i)
            let model = YSPostListModel()
            model.urlHead = HEAD_URL
            model.strName = "name_" + strI
            model.strTime = "time_" + strI
            model.strTitle = "标题_" + strI
            arrData.append(model)
        }
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
