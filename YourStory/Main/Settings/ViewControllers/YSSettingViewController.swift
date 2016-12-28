//
//  YSSettingViewController.swift
//  YourStory
//
//  Created by Mena on 16/12/28.
//  Copyright © 2016年 王宁的mac. All rights reserved.
//

import UIKit

class YSSettingViewController: BaseViewController,UITableViewDelegate,UITableViewDataSource {
    @IBOutlet var settingTableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        settingTableView.register(UITableViewCell.classForCoder(), forCellReuseIdentifier: "cell")
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
