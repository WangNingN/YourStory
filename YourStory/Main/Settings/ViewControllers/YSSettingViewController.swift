//
//  YSSettingViewController.swift
//  YourStory
//
//  Created by Mena on 16/12/28.
//  Copyright © 2016年 王宁的mac. All rights reserved.
//

import UIKit

class YSSettingViewController: BaseViewController,UITableViewDelegate,UITableViewDataSource {
    @IBOutlet var settingTableView: UITableView!
    private var settingTitleArr = [String]()
    override func viewDidLoad() {
        super.viewDidLoad()
        settingTableView.register(UINib(nibName: String(describing: YSSettingHeadInfoCell.self), bundle: nil), forCellReuseIdentifier: String(describing: YSSettingHeadInfoCell.self))
        settingTableView.register(UINib(nibName: String(describing: YSSettingListCell.self), bundle: nil), forCellReuseIdentifier: String(describing: YSSettingListCell.self))
        createUI()
        configData()
    }
    
    func createUI() -> Void {
        let logoutBtn = UIButton()
        logoutBtn.setTitleColor(UIColor.black, for: .normal)
        logoutBtn.setTitle("退出登录", for: .normal)
        logoutBtn.backgroundColor = UIColor.white
        logoutBtn.frame = CGRect(x: 0, y: 0, width: ScreenWidth(), height: 44)
        logoutBtn.addTarget(self, action: #selector(logoutAction), for: .touchUpInside)
        settingTableView.tableFooterView = logoutBtn
    }
    
    func configData() -> Void {
        settingTitleArr = ["关于我们","意见反馈","推荐给朋友"]
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0 {
            let headCell = Bundle.main.loadNibNamed(String(describing: YSSettingHeadInfoCell.self), owner: self, options: nil)?.last as! YSSettingHeadInfoCell
            return headCell.Height
        }else{
            return 44
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 1
        }
        return settingTitleArr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0
        {
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: YSSettingHeadInfoCell.self), for: indexPath) as! YSSettingHeadInfoCell
            return cell
        }
        else
        {
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: YSSettingListCell.self), for: indexPath) as! YSSettingListCell
            cell.titleLabel.text = settingTitleArr[indexPath.row]
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.section == 0
        {
            if indexPath.row == 0
            {
                let userinfo = YSUserInfoViewController()
                self.navigationController?.pushViewController(userinfo, animated: true)
            }
        }
    }
    
    //MARK:- 退出登录
    func logoutAction() -> Void {
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
