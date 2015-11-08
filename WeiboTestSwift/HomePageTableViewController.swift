//
//  HomePageTableViewController.swift
//  WeiboTestSwift
//
//  Created by Mac on 15/10/26.
//  Copyright (c) 2015年 Moobye. All rights reserved.
//

import UIKit

class HomePageTableViewController: BaseTableViewController {
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        visitorLoginView?.setupVisitorInfo("visitordiscover_feed_image_house", message: "关注一些人，回这里看看有什么惊喜", isHome: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 0
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        return 0
    }


    
}
