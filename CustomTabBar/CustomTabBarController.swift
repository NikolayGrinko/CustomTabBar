//
//  CustomTabBarController.swift
//  CustomTabBar
//
//  Created by Николай Гринько on 07.10.2023.
//

import UIKit

class CustomTabBarController: UITabBarController {
    
    private let customTabBar = CustomTabBar()
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        setValue(customTabBar, forKey: "tabBar")
        setupTabItems()
    }
    
    private func setupTabItems() {
        
      let firstVC = ViewController()
        firstVC.tabBarItem.title = "Like"
        firstVC.tabBarItem.image = UIImage(systemName: "heart.fill")
        
        let secondVC = SecondViewController()
        secondVC.tabBarItem.title = "Subscribe"
        secondVC.tabBarItem.image = UIImage(systemName: "pencil.tip.crop.circle.badge.plus.fill")
        
        setViewControllers([firstVC, secondVC], animated: false)
    }
    
}

