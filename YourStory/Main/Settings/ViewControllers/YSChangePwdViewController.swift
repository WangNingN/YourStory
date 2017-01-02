//
//  YSChangePwdViewController.swift
//  YourStory
//
//  Created by 王宁 on 2017/1/1.
//  Copyright © 2017年 王宁的mac. All rights reserved.
//

import UIKit
import SVProgressHUD

class YSChangePwdViewController: BaseViewController {

    @IBOutlet var oldPwdTF: UITextField!
    @IBOutlet var newPwdTF: UITextField!
    @IBOutlet var newAgainTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let saveBtn = UIBarButtonItem(title: "保存", style: UIBarButtonItemStyle.plain, target: self, action: #selector(saveAction))
        self.navigationItem.rightBarButtonItem = saveBtn
    }
    
    //MARK:- saveAction
    func saveAction() -> Void {
        if !oldPwdTF.text!.isEmpty && newPasswordValid()
        {
            //网络请求，修改密码
        }
        else
        {
            var message : String!
            if !newPasswordValid() {
                message = "两次输入的密码不同"
            }else{
                message = "密码不能为空"
            }
            SVProgressHUD.showInfoHUDwithDelay(message: message)
        }
    }
    
    //MARK:- 检测两次输入的新密码是否一致
    func newPasswordValid() -> Bool {
        return (newPwdTF.text != nil && newPwdTF.text == newAgainTF.text)
    }
}
