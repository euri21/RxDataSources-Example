//
//  TabBarController.swift
//  RxDataSources-Demo
//
//  Created by solution888 on 10/06/21.
//  Copyright © 2021 solution888. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {
    
    override func viewDidLoad() {
           super.viewDidLoad()
           tabBar.isTranslucent = false
           configureItems()
       }
       
       func configureItems() {
           
           if #available(iOS 13.0, *) {
               overrideUserInterfaceStyle = .light
           }
           
           let simpleController = SimpleViewController()
           simpleController.tabBarItem = UITabBarItem(title: "Simple", image: UIImage(named: "simple"), selectedImage: UIImage(named: "simple"))

           let intermediateController = IntermediateViewController()
           intermediateController.tabBarItem = UITabBarItem(title: "Intermediate", image: UIImage(named: "intermediate"), selectedImage: UIImage(named: "intermediate"))

           let advancedController = AdvancedViewController()
           advancedController.tabBarItem = UITabBarItem(title: "Advanced", image: UIImage(named: "advanced"), selectedImage: UIImage(named: "advanced"))
       
           self.viewControllers = [
               UINavigationController
                .init(rootViewController: simpleController),
               
               UINavigationController
                .init(rootViewController: intermediateController),
               
               UINavigationController
                .init(rootViewController: advancedController)
           ]
       }
}
