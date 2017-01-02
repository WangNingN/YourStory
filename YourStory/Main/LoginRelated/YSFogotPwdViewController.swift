//
//  YSFogotPwdViewController.swift
//  YourStory
//
//  Created by Mena on 16/12/27.
//  Copyright © 2016年 王宁的mac. All rights reserved.
//

import UIKit
import SVProgressHUD

class YSFogotPwdViewController: BaseViewController,UITextFieldDelegate {
    @IBOutlet var phoneTF: UITextField!
    @IBOutlet var nextBtn: UIButton!
    
    @IBOutlet var resendBtn: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        phoneTF.becomeFirstResponder()
    }

    @IBAction func textEditing(_ sender: Any) {
        let textField = sender as! UITextField
        (textField.text?.characters.count)! > 0 ? sendCodeCanUse(isUse: true) : sendCodeCanUse(isUse: false)
    }
    
    func sendCodeCanUse(isUse:Bool) -> Void {
        if isUse {
            self.nextBtn.alpha = 1
            self.nextBtn.isUserInteractionEnabled = true
        }else{
            self.nextBtn.alpha = 0.5
            self.nextBtn.isUserInteractionEnabled = false
        }
    }
    
    //MARK:- 获取验证码
    @IBAction func resendCode(_ sender: Any) {
        if isVailidPhoneNumber(phoneNumber: phoneTF.text!){
            //发送验证码
        }else{
            SVProgressHUD.showError(withStatus: "手机号不正确")
        }
    }
    
    //MARK:- 下一步
    @IBAction func nextAction(_ sender: Any) {
        let newpwd = YSNewPwdViewController()
        self.navigationController?.pushViewController(newpwd, animated: true)
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        phoneTF.resignFirstResponder()
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
