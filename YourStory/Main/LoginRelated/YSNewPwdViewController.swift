//
//  YSNewPwdViewController.swift
//  YourStory
//
//  Created by Mena on 16/12/27.
//  Copyright © 2016年 王宁的mac. All rights reserved.
//

import UIKit

class YSNewPwdViewController: BaseViewController {

    @IBOutlet var newPwdTF: UITextField!
    @IBOutlet var newPwdAgainTF: UITextField!
    @IBOutlet var finishBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    
    @IBAction func newPwdEditing(_ sender: Any) {
        changeFinishBtnStatus()
    }
    
    @IBAction func newPwdAgainAction(_ sender: Any) {
        changeFinishBtnStatus()
    }
    
    @IBAction func finishAction(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    func changeFinishBtnStatus() -> Void {
        if (newPwdTF.text?.characters.count)! > 0 && (newPwdAgainTF.text?.characters.count)! > 0{
            finishBtn.alpha = 1
            finishBtn.isUserInteractionEnabled = true
        }else{
            finishBtn.alpha = 0.5
            finishBtn.isUserInteractionEnabled = false
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
