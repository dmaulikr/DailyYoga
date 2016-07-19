//
//  YGRootController.swift
//  DailyYoga
//
//  Created by Beryter on 16/7/6.
//  Copyright © 2016年 Beryter. All rights reserved.
//

import UIKit

class YGRootController: UIViewController {
    
    let guideController = YGGuideController()
    let tabController = YGTabBarController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.addChildViewController(guideController)
        self.addChildViewController(tabController)
        
        if YGCacheHandler.firstLaunch() {
            self.view.addSubview(guideController.view)
        }else{
            self.view.addSubview(tabController.view)
        }
        YGCacheHandler.updateFisrtLaunch()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
