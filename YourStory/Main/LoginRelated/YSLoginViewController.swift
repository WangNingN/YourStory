//
//  YSLoginViewController.swift
//  YourStory
//
//  Created by 王宁 on 2016/12/3.
//  Copyright © 2016年 王宁的mac. All rights reserved.
//

import UIKit

class YSLoginViewController: BaseViewController {

    @IBOutlet var pwdTextField: UITextField!
    @IBOutlet var phoneTextField: UITextField!
    @IBOutlet var textBgView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configUI()
        // Do any additional setup after loading the view.
    }

    func configUI() -> Void {
        textBgView.layer.borderWidth = 0.5
        textBgView.layer.borderColor = UIColor.lightGray.cgColor
        
        let rightBtn = UIButton()
        let btnImage = UIImage(named: "login_delete")
        rightBtn.setImage(btnImage, for: .normal)
        rightBtn.addTarget(self, action: #selector(backClick), for: .touchUpInside)
        rightBtn.frame = CGRect(x: 0, y: 0, width: btnImage!.size.width, height: btnImage!.size.height)
        let rightItem = UIBarButtonItem(customView: rightBtn)
        self.navigationItem.rightBarButtonItem = rightItem
    }
    
    //MARK:- 登录
    @IBAction func loginHandle(_ sender: Any) {
        let network = YSNetWorkManager.shareSingle
//        network.networkRegisterWithNickName(name: "name", phone: "f", pwd: "")
//        network.networkLoginWithNickName(username: "", password: "")
        network.networkChangeNickNameWithNickName(username: "", password: "")
    }
    
    //忘记密码
    @IBAction func fogetPwd(_ sender: Any) {
        let fgtPwd = YSFogotPwdViewController()
        self.navigationController?.pushViewController(fgtPwd, animated: true)
    }
    
    //注册
    @IBAction func registerHandle(_ sender: Any) {
        let registerVC = YSRegisterViewController()
        self.navigationController?.pushViewController(registerVC, animated: true)
    }
    
    //MARK:- 返回
    func backClick() -> Void {
        configLoginStatus(isLogin: true)
        self.dismiss(animated: true, completion: nil)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        pwdTextField.resignFirstResponder()
        phoneTextField.resignFirstResponder()
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
