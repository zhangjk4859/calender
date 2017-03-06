//
//  APPTabBarController.swift
//  animal-plant_pool
//
//  Created by 张俊凯 on 2017/2/9.
//  Copyright © 2017年 张俊凯. All rights reserved.
//

import UIKit

class APPTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //设置字体颜色
        tabBar.tintColor = UIColor(red: 136/255, green: 242/255, blue: 65/255, alpha: 1.0)
        
        //开始设置四个子控制器
        let calenderVC = CalenderVC()
        let navCalender = customizingViewController(vc: calenderVC, title: "个人日历", imageName: "icon_my", selectedImageName: "icon_my_HL")
        addChildViewController(navCalender)

        
        
        
        let moreVC = MoreVC()
        let navMore = customizingViewController(vc: moreVC, title: "更多", imageName: "icon_experience", selectedImageName: "icon_experience_HL")
        addChildViewController(navMore)
        
    }

    //统一定制viewController的方法
    func customizingViewController(vc:UIViewController,title:String,imageName:String,selectedImageName:String)-> UIViewController
    {
        //设置导航栏
        let nav = UINavigationController(rootViewController:vc)
        nav.tabBarItem = UITabBarItem(title:title,image:UIImage(named:imageName)?.withRenderingMode(UIImageRenderingMode.alwaysOriginal),selectedImage:UIImage(named:selectedImageName)?.withRenderingMode(UIImageRenderingMode.alwaysOriginal))
        return nav
    }

}
