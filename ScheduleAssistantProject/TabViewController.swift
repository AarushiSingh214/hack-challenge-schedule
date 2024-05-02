//
//  TabViewController.swift
//  ScheduleAssistantProject
//
//  Created by Aarushi Singh on 4/30/24.
//

import UIKit

class TabViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTabs()
    }
    
    private func setupTabs() {
        let searchVC = Search()
        let userVC = UserProfile()
        
        searchVC.tabBarItem = UITabBarItem(title: "", image: UIImage(named:"search"), tag: 0)
        userVC.tabBarItem = UITabBarItem(title: "", image: UIImage(named:"user"), tag: 1)
        
        self.setViewControllers([searchVC, userVC], animated: true)

        
    }
}
