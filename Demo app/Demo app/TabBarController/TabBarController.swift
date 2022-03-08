//
//  TabBarController.swift
//  Demo app
//
//  Created by Jay Shah on 08/03/22.
//

import UIKit

class TabBarController: UITabBarController {

    @IBOutlet weak var bottomTabBar: UITabBar!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.selectedIndex = 2
        self.delegate = self
        bottomTabBar.unselectedItemTintColor = .green
        self.tabBar.unselectedItemTintColor = .black
        
        // Do any additional setup after loading the view.
    }
}
//MARK: - UITabBarDelegate
extension TabBarController: UITabBarControllerDelegate {
    
    func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
        return true
    }
}
