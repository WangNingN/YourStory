//
//  YSRegisterViewController.swift
//  YourStory
//
//  Created by 王宁 on 2016/12/4.
//  Copyright © 2016年 王宁的mac. All rights reserved.
//

import UIKit

class YSRegisterViewController: BaseViewController {

    @IBOutlet var textBgView: UIView!
    @IBOutlet var textNickname: UITextField!
    @IBOutlet var textPhone: UITextField!
    @IBOutlet var textPwd: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configUI()
        // Do any additional setup after loading the view.
    }

    func configUI() -> Void {
        textBgView.layer.borderWidth = 0.5
        textBgView.layer.borderColor = UIColor.lightGray.cgColor
    }
    
    //注册
    @IBAction func registerHandle(_ sender: Any) {
        let phoneVli = YSPhoneValidateViewController()
        self.navigationController?.pushViewController(phoneVli, animated: true)
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
