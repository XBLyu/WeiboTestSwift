//
//  BaseTableViewController.swift
//  WeiboTestSwift
//
//  Created by Mac on 15/11/8.
//  Copyright (c) 2015年 Moobye. All rights reserved.
//

import UIKit

/**
*  代理方法的实现
*/
extension BaseTableViewController: VisitorLoginViewDelegate {
    func didRegisterButtonClicked() {
        println(__FUNCTION__,__LINE__);
    }
    
    func didLoginButtonClicked() {
        println(__FUNCTION__,__LINE__);
    }
}

class BaseTableViewController: UITableViewController {
    
    // 用户登录标记
    var userLogon: Bool = false
    // 登录视图属性
    var visitorLoginView: VisitorLoginView?

    override func loadView() {
        // 用户已登录，则执行默认情况
        if userLogon {
            super.loadView()
            return
        }
        /**
        *  －－－－－－－－－－－－代理设定需要在初始化之后
        */
//        // 注册代理对象
//        visitorLoginView?.delegate = self
        
        // 用户未登录，修改控制器view为指定xib加载的view
        visitorLoginView = NSBundle.mainBundle().loadNibNamed("VisitorLoginView", owner: nil, options: nil).last as? VisitorLoginView
        // 注册代理对象
        visitorLoginView?.delegate = self
        
        view = visitorLoginView
        
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "注册", style: UIBarButtonItemStyle.Done, target: self, action: "didRegisterButtonClicked")
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "登录", style: UIBarButtonItemStyle.Done, target: self, action: "didLoginButtonClicked")
        
    }
}


