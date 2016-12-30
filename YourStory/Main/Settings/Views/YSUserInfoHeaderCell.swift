//
//  YSUserInfoHeaderCell.swift
//  YourStory
//
//  Created by 王宁 on 2016/12/30.
//  Copyright © 2016年 王宁的mac. All rights reserved.
//

import UIKit
import SDWebImage

class YSUserInfoHeaderCell: UITableViewCell {

    @IBOutlet var labelTitle: UILabel!
    @IBOutlet var imageHead: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configData(model:YSUserInfoHeadModel) -> Void {
        self.labelTitle.text = model.strTitle
        if let image = model.head.image {
            self.imageHead.image = image
        }else if let url = model.head.url {
            self.imageHead.sd_setImage(with: URL(string: url), placeholderImage: nil)
        }
    }
    
}
