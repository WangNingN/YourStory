//
//  YSPostListCellTableViewCell.swift
//  YourStory
//
//  Created by Mena on 17/1/3.
//  Copyright © 2017年 王宁的mac. All rights reserved.
//

import UIKit
import SDWebImage

class YSPostListCellTableViewCell: UITableViewCell {

    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var imageHead: UIImageView!
    @IBOutlet var labelName: UILabel!
    @IBOutlet var labelTime: UILabel!
    
    func configCellData(model:YSPostListModel) -> Void {
        self.titleLabel.text = model.strTitle
        self.labelName.text = model.strName
        self.labelTime.text = model.strTime
        if let headurl = model.urlHead {
            self.imageHead.sd_setImage(with: URL(string: headurl), placeholderImage: nil)
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
