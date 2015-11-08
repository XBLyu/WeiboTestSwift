//
//  MainTabBarController.swift
//  WeiboTestSwift
//
//  Created by Mac on 15/10/26.
//  Copyright (c) 2015年 Moobye. All rights reserved.
//

import UIKit

class MainTabBarController: UITabBarController {
    @IBOutlet weak var mainTabBar: MainTabBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addChildViewControllers()
        mainTabBar.composeButton.addTarget(self, action: "composeButtonClick", forControlEvents: UIControlEvents.TouchUpInside)
    }
    
    
    
    func composeButtonClick() {
        println(__FUNCTION__)
    }
    
    /**
    加载所有的子视图控制器
    */
    private func addChildViewControllers() {
        self.tabBar.tintColor = UIColor.orangeColor()
        
        addChildViewController(storyboardName: "HomePage", title: "首页", iconName: "tabbar_home")
        addChildViewController(storyboardName: "Message", title: "消息", iconName: "tabbar_message_center")
        addChildViewController(storyboardName: "Discover", title: "发现", iconName: "tabbar_discover")
        addChildViewController(storyboardName: "Profile", title: "我", iconName: "tabbar_profile")
        
    }
    
    /**
    加载子视图控制器
    :param: storyboardName storyboard名称
    :param: title          标题
    :param: iconName       图标名称
    */
    private func addChildViewController(#storyboardName: String, title: String, iconName: String) {
        /**
        *  从storyboard中取出初始化控制器
        */
        let sb = UIStoryboard(name: storyboardName, bundle: nil)
        let nav = sb.instantiateInitialViewController() as! UINavigationController
        /**
        *  设置该控制器在TabBar上显示的相关属性
        */
        //－－－－－－－－－－－－－－－－－－－－－－－－修改不了
//        nav.navigationItem.title = title
//        println(nav.navigationItem.title)
        nav.tabBarItem.title = title
        nav.tabBarItem.image = UIImage(named: iconName)
        nav.tabBarItem.selectedImage = UIImage(named: iconName + "_highlighted")
        /**
        *  将设置完毕的控制器作为子控制器添加到TabBarController中
        */
        addChildViewController(nav)
    }
}
