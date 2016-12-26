//
//  UIViewExtension.swift
//  YourStory
//
//  Created by 王宁 on 2016/12/3.
//  Copyright © 2016年 王宁的mac. All rights reserved.
//

import UIKit

extension UIView{
    
    var Width: CGFloat {
        set {
            var frame: CGRect = self.frame
            frame.size.width = newValue
            self.frame = frame
        }
        get {
            return self.frame.size.width
        }
    }
    
    var Height: CGFloat {
        set {
            var frame: CGRect = self.frame
            frame.size.height = newValue
            self.frame = frame
        }
        get {
            return self.frame.size.height
        }
    }
    
    var Size: CGSize {
        set {
            var frame: CGRect = self.frame
            frame.size = newValue
            self.frame = frame
        }
        get {
            return self.frame.size
        }
    }
    
    var CenterX:CGFloat{
        set {
            var center: CGPoint = self.center
            center.x = newValue
            self.center = center
        }
        get {
            return self.center.x
        }
    }
    
    var CenterY:CGFloat{
        set {
            var center: CGPoint = self.center
            center.y = newValue
            self.center = center
        }
        get {
            return self.center.y
        }
    }
    
    var Origin: CGPoint {
        set {
            var frame: CGRect = self.frame
            frame.origin = newValue
            self.frame = frame
        }
        get {
            return self.frame.origin
        }
    }
    
    var X: CGFloat {
        set {
            var frame: CGRect = self.frame
            frame.origin.x = newValue
            self.frame = frame
        }
        get {
            return self.frame.origin.x
        }
    }
    
    var Y: CGFloat {
        set {
            var frame: CGRect = self.frame
            frame.origin.y = newValue
            self.frame = frame
        }
        get {
            return self.frame.origin.y
        }
    }
    
    var Top: CGFloat {
        set {
            var frame: CGRect = self.frame
            frame.origin.y = newValue
            self.frame = frame
        }
        
        get {
            return self.frame.origin.y
        }
    }
    
    var Left: CGFloat {
        set {
            var frame: CGRect = self.frame
            frame.origin.x = newValue
            self.frame = frame
        }
        
        get {
            return self.frame.origin.x
        }
    }
    
    var Bottom: CGFloat {
        set {
            var frame: CGRect = self.frame
            frame.origin.y  = newValue - frame.size.height
            self.frame = frame
        }
        get {
            return self.Top + self.Height
        }
    }
    
    var Right: CGFloat {
        set{
            var frame: CGRect = self.frame
            frame.origin.x  = newValue - frame.size.width
            self.frame = frame
        }
        
        get{
            return self.Left + self.Width
        }
    }
    
}
