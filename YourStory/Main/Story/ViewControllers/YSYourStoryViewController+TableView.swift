//
//  YSYourStoryViewController+TableView.swift
//  YourStory
//
//  Created by Mena on 17/1/3.
//  Copyright © 2017年 王宁的mac. All rights reserved.
//

import Foundation
import UIKit

extension YSYourStoryViewController: UITableViewDelegate,UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: YSPostListCellTableViewCell.self), for: indexPath) as! YSPostListCellTableViewCell
        let model = arrData[indexPath.row]
        cell.configCellData(model: model)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return self.storyTableView.rowHeight;
    }
}
