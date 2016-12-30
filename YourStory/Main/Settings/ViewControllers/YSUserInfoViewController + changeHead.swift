//
//  YSUserInfoViewController + changeHead.swift
//  YourStory
//
//  Created by Mena on 16/12/30.
//  Copyright © 2016年 王宁的mac. All rights reserved.
//

import Foundation
import UIKit

extension YSUserInfoViewController : UIImagePickerControllerDelegate,UINavigationControllerDelegate,UIActionSheetDelegate {
    
    func changeHeadImage() -> Void {
        let alertAction = UIActionSheet(title: nil, delegate: self, cancelButtonTitle: "取消", destructiveButtonTitle: nil, otherButtonTitles: "拍照", "从相册获取")
        alertAction.show(in: self.view)
    }
    
    //MARK:- UIImagePickerControllerDelegate

    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        let gotImage = info[UIImagePickerControllerOriginalImage] as! UIImage
        //        let newImage = imageRotate(gotImage)
        let headModel = headArr[0]
        headModel.head.image = gotImage
        self.userInfoTableView.reloadData()
        self.dismiss(animated: true, completion: nil);
    }
    
    func actionSheet(_ actionSheet: UIActionSheet, clickedButtonAt buttonIndex: Int) {
//        CGContextDrawImage
        switch buttonIndex {
        case 0:
            //取消
            break
        case 1:
            //拍照
            gotoCamera()
        case 2:
            //相册
            gotoAlbum()
        default:
            break
            
        }
    }
    
    //MARK:- 相册
    func gotoAlbum() -> Void {
        let imagePick = UIImagePickerController()
        imagePick.sourceType = .savedPhotosAlbum
        imagePick.delegate = self
        self.present(imagePick, animated: true, completion: nil)
    }
    
    //MARK:- 相机拍照
    func gotoCamera() -> Void {
        let imagePick = UIImagePickerController()
        imagePick.sourceType = .camera
        imagePick.delegate = self
        self.present(imagePick, animated: true, completion: nil)
    }
    
}
