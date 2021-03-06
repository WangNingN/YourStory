//
//  YSUserInfoCell.swift
//  YourStory
//
//  Created by 王宁 on 2016/12/30.
//  Copyright © 2016年 王宁的mac. All rights reserved.
//

import UIKit

class YSUserInfoCell: UITableViewCell {

    @IBOutlet var detailLabel: UILabel!
    @IBOutlet var titleLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configData(model:YSUserinfoModel) -> Void {
        self.titleLabel.text = model.strTitle
        self.detailLabel.text = model.strDetail
    }
    
}
