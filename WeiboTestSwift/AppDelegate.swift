//
//  AppDelegate.swift
//  WeiboTestSwift
//
//  Created by Mac on 15/10/26.
//  Copyright (c) 2015年 Moobye. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        
        setupAppearance()
        
        return true
    }
    
    // 设置全局外观样式
    private func setupAppearance() {
        UINavigationBar.appearance().tintColor = UIColor.orangeColor()
    }

}

