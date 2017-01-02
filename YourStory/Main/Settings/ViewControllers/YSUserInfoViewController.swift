//
//  YSUserInfoViewController.swift
//  YourStory
//
//  Created by 王宁 on 2016/12/30.
//  Copyright © 2016年 王宁的mac. All rights reserved.
//

import UIKit

class YSUserInfoViewController: BaseViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet var userInfoTableView: UITableView!
    var headArr = [YSUserInfoHeadModel]()
    var userInfoArr = [YSUserinfoModel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userInfoTableView.register(UINib(nibName: String(describing:YSUserInfoHeaderCell.self), bundle: nil), forCellReuseIdentifier: String(describing:YSUserInfoHeaderCell.self))
        userInfoTableView.register(UINib(nibName: String(describing:YSUserInfoCell.self), bundle: nil), forCellReuseIdentifier: String(describing:YSUserInfoCell.self))
        userInfoTableView.tableFooterView = UIView()
        configData()
    }
    
    func configData() -> Void {
        
        //头像数据
        let headModel = YSUserInfoHeadModel()
        headModel.strTitle = "头像"
        headModel.head.url = "http://47.88.136.37/2016/12/21/0254a27b-ca63-46bc-4bf6-5a39a76ad168.jpg"
        headArr.append(headModel)
        
        //除去头像以外的个人信息
        let userinfoTitles = ["昵称","密码","邮箱"]
        for title in userinfoTitles {
            let userinfoModel = YSUserinfoModel()
            userinfoModel.strTitle = title
            userinfoModel.strDetail = "1234567"
            userInfoArr.append(userinfoModel)
        }
        
        self.userInfoTableView.reloadData()
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return headArr.count
        } else if section == 1 {
            return userInfoArr.count
        }
        return 0
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0 {
            let headCell = Bundle.main.loadNibNamed(String(describing: YSUserInfoHeaderCell.self), owner: self, options: nil)?.last as! YSUserInfoHeaderCell
            return headCell.Height
        }else{
            return 44
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0
        {
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing:YSUserInfoHeaderCell.self), for: indexPath) as! YSUserInfoHeaderCell
            let model = headArr[indexPath.row]
            cell.configData(model: model)
            return cell
        }
        else
        {
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing:YSUserInfoCell.self), for: indexPath) as! YSUserInfoCell
            let model = userInfoArr[indexPath.row]
            cell.configData(model:model)
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.section == 0 {
            //修改头像
            changeHeadImage()
        }
        if indexPath.section == 1 {
            switch indexPath.row {
            case 0:
                changeName()
            case 1:
                changePassword()
            default:
                break
            }
        }
    }
    
    //MARK:- 修改昵称
    func changeName() -> Void {
        let userModel = self.userInfoArr[0]
        guard let name = userModel.strDetail else{
            return
        }
        let changename = YSChangeNameViewController(name: name)
        self.navigationController?.pushViewController(changename, animated: true)
    }
    
    //MARK:- 修改密码
    func changePassword() -> Void {
        let changepwd = YSChangePwdViewController()
        self.navigationController?.pushViewController(changepwd, animated: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}
