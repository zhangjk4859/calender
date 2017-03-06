//
//  CalenderVC.swift
//  calender
//
//  Created by 张俊凯 on 2017/3/1.
//  Copyright © 2017年 张俊凯. All rights reserved.
//

import UIKit

class CalenderVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        //1.设置背景色
        view.backgroundColor = UIColor.white
        //2.设置右上角按钮
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(named:"icon_more")?.withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(self.rightClick))
        //3.设置导航栏标题
        navigationItem.title = "123"
        //4.添加日历控件
        
    }

    func rightClick(){
        print("rightClick")
    }
    

}
