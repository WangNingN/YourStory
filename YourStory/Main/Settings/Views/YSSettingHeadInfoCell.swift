//
//  YSSettingHeadInfoCell.swift
//  YourStory
//
//  Created by 王宁 on 2016/12/29.
//  Copyright © 2016年 王宁的mac. All rights reserved.
//

import UIKit

class YSSettingHeadInfoCell: UITableViewCell {

    @IBOutlet var headImageView: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var phoneLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
