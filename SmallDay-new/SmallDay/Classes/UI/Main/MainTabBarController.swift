//
//  MainTabBarController.swift
//  SmallDay
//
//  Created by perhapsdone@163.com on 16/8/5.
//  Copyright © 2016年 perhapsdone@163.com. All rights reserved.
//

import UIKit

class MainTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        setUpAllChildViewController()
        
        self.setValue(MainTabBar(), forKey: "tabBar")
    }
    
    private func setUpAllChildViewController() {
        
        // 探店
        tabBarAddChildViewController(vc: ExploreViewController(), title: "探店", imageName: "recommendation_1", selectedImageName: "recommendation_2")
    
        // 体验
        tabBarAddChildViewController(vc: ExperienceViewController(), title: "体验", imageName: "broadwood_1", selectedImageName: "broadwood_2")
        
        // 分类
        tabBarAddChildViewController(vc: ClassifyViewController(), title: "分类", imageName: "classification_1", selectedImageName: "classification_2")
        
        // 我的
        tabBarAddChildViewController(vc: MeViewController(), title: "我的", imageName: "my_1", selectedImageName: "my_2")
        
    }
    
    private func tabBarAddChildViewController(vc vc:UIViewController, title: String, imageName: String, selectedImageName: String) {
        vc.tabBarItem = UITabBarItem(title: title, image: UIImage(named:  imageName), selectedImage:
        UIImage(named: selectedImageName))
        vc.view.backgroundColor = theme.SDBackgroundColor
        let nav = MainNavigationController(rootViewController:vc)
        addChildViewController(nav)
        
    }
    

}

class MainTabBar: UITabBar {
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.translucent = false
        self.backgroundImage = UIImage(named: "tabbar")
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
