//
//  YSUserInfoViewController.swift
//  YourStory
//
//  Created by 王宁 on 2016/12/30.
//  Copyright © 2016年 王宁的mac. All rights reserved.
//

import UIKit

class YSUserInfoViewController: BaseViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet var userInfoTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        userInfoTableView.register(UINib(nibName: String(describing:YSUserInfoHeaderCell.self), bundle: nil), forCellReuseIdentifier: String(describing:YSUserInfoHeaderCell.self))
        userInfoTableView.register(UINib(nibName: String(describing:YSUserInfoCell.self), bundle: nil), forCellReuseIdentifier: String(describing:YSUserInfoCell.self))
        userInfoTableView.tableFooterView = UIView()
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0 {
            let headCell = Bundle.main.loadNibNamed(String(describing: YSUserInfoHeaderCell.self), owner: self, options: nil)?.last as! YSUserInfoHeaderCell
            return headCell.Height
        }else{
            return 44
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0
        {
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing:YSUserInfoHeaderCell.self), for: indexPath) as! YSUserInfoHeaderCell
            return cell
        }
        else
        {
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing:YSUserInfoCell.self), for: indexPath) as! YSUserInfoCell
            return cell
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}
