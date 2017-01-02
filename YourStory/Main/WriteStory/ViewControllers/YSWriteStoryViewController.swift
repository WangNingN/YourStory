//
//  YSWriteStoryViewController.swift
//  YourStory
//
//  Created by 王宁 on 2016/11/30.
//  Copyright © 2016年 王宁的mac. All rights reserved.
//

import UIKit

class YSWriteStoryViewController: BaseViewController,UITextViewDelegate {
    @IBOutlet var textViewBottomConstraint: NSLayoutConstraint!
    @IBOutlet var titleTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name:NSNotification.Name.UIKeyboardWillShow, object: nil)
//        let saveBtn = UIBarButtonItem(title: "发布", style: UIBarButtonItemStyle.plain, target: self, action: #selector(saveAction))
//        self.navigationItem.rightBarButtonItem = saveBtn
    }

    //MARK:- 发布
    @IBAction func publishAction(_ sender: Any) {
        
    }
    
    @IBAction func back(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
//    //MARK:- 发布
//    func saveAction() -> Void {
//        
//    }
    
    func keyboardWillShow(notification:NSNotification) -> Void {
        let userinfo = notification.userInfo
        let value = userinfo?[UIKeyboardFrameEndUserInfoKey] as? NSValue
        let keyboardRect = value?.cgRectValue
        let keyboardHeight = keyboardRect?.height
        textViewBottomConstraint.constant = keyboardHeight!
    }
    
    func textViewShouldBeginEditing(_ textView: UITextView) -> Bool {
        
        return true
    }
    
    func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
        
        return true
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
