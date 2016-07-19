//
//  YGTabBarController.swift
//  DailyYoga
//
//  Created by Beryter on 16/7/6.
//  Copyright © 2016年 Beryter. All rights reserved.
//

import UIKit

class YGTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabBar.tintColor = UIColor(rgb: kYGColor_00aaf7)
        let practice = YGPracticeRootController()
        let forum = YGForumRootController()
        let new = YGNewsRootController()
        let center = YGUserCenterRootController()
        
        let practiceNav = YGNavigationController(rootViewController: practice)
        let forumNav = YGNavigationController(rootViewController: forum)
        let newNav = YGNavigationController(rootViewController: new)
        let centerNav = YGNavigationController(rootViewController: center)
        
        
        let practiceTabBarItem = UITabBarItem(title: "练习", image: UIImage(named: "practiceIconNormal"), selectedImage: UIImage(named: "practiceIconHighlight"))
        let forumTabBarItem = UITabBarItem(title: "娱乐圈", image: UIImage(named: "forumIconNormal"), selectedImage: UIImage(named: "forumIconHighlight"))
        let newTabBarItem = UITabBarItem(title: "消息", image: UIImage(named: "newsIconNormal"), selectedImage: UIImage(named: "newsIconHighlight"))
        let centerTabBarItem = UITabBarItem(title: "个人", image: UIImage(named: "userCenterIconNormal"), selectedImage: UIImage(named: "userCenterIconHighlight"))
        
        practiceNav.tabBarItem = practiceTabBarItem
        forumNav.tabBarItem = forumTabBarItem
        newNav.tabBarItem = newTabBarItem
        centerNav.tabBarItem = centerTabBarItem
        
        self.viewControllers = [practiceNav,forumNav,newNav,centerNav]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
