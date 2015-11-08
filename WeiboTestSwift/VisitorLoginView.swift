//
//  VisitorLoginView.swift
//  WeiboTestSwift
//
//  Created by Mac on 15/11/8.
//  Copyright (c) 2015年 Moobye. All rights reserved.
//

import UIKit

protocol VisitorLoginViewDelegate: NSObjectProtocol {
    func didRegisterButtonClicked()
    func didLoginButtonClicked()
}



class VisitorLoginView: UIView {

    @IBOutlet weak var smallIcon: UIImageView!
    @IBOutlet weak var bigIcon: UIImageView!
    @IBOutlet weak var msgLabel: UILabel!
    
    // 定义代理属性
    weak var delegate: VisitorLoginViewDelegate?
    
    
    
    // 点击注册按钮事件方法
    @IBAction func visitorRegister(sender: UIButton) {
        // 在合适时机调用代理方法
        delegate? .didRegisterButtonClicked()
    }
    // 点击登录按钮事件方法
    @IBAction func visitorLogin(sender: UIButton) {
        // 在合适时机调用代理方法
        delegate? .didLoginButtonClicked()
    }
    /**
    设置访客界面信息
    
    :param: iconName 显示图标名称
    :param: message  信息label内容
    :param: isHome   是否首页
    */
    func setupVisitorInfo(iconName: String, message: String, isHome: Bool = false) {
        // 非首页情况下：隐藏大图标，将图片显示到小图标
        // 首页情况下：大图标显示，并呈现默认图片
        bigIcon.hidden = !isHome
        if isHome {
            bigIcon.image = UIImage(named: iconName)
            if (smallIcon.layer.animationForKey("smallIconRotationAnim") == nil) {
                startAnimation()
            }
        } else {
            smallIcon.image = UIImage(named: iconName)
        }
        msgLabel.text = message
    }
    
    // 开始动画
    private func startAnimation() {
        let anim = CABasicAnimation(keyPath: "transform.rotation")
        anim.repeatCount = MAXFLOAT
        anim.duration = 20
        anim.toValue = M_PI * 2
        smallIcon.layer.addAnimation(anim, forKey: "smallIconRotationAnim")
    }
}
