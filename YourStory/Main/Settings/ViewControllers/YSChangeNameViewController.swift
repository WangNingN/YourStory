//
//  YSChangeNameViewController.swift
//  YourStory
//
//  Created by 王宁 on 2017/1/1.
//  Copyright © 2017年 王宁的mac. All rights reserved.
//

import UIKit
import SVProgressHUD

class YSChangeNameViewController: BaseViewController {
    @IBOutlet var nameTF: UITextField!
    var name:String!
    init(name:String) {
        self.name = name
        super.init(nibName: nil, bundle: nil)
    }
    
//    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
//        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
//    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.nameTF.text = self.name
        let saveBtn = UIBarButtonItem(title: "保存", style: UIBarButtonItemStyle.plain, target: self, action: #selector(saveAction))
        self.navigationItem.rightBarButtonItem = saveBtn
    }
    
    //MARK:- saveAction
    func saveAction() -> Void {
        if isValidName(name: self.nameTF.text!) {
            print("可用的")
        }else{
            SVProgressHUD.showInfoHUDwithDelay(message: "昵称不能为空，或格式有误")
        }
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
