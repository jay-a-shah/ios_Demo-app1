//
//  TabBarController.swift
//  Demo app
//
//  Created by Jay Shah on 08/03/22.
//

import UIKit

class TabBarController: UITabBarController {
    
    //MARK: - Outlets
    @IBOutlet weak var bottomTabBar: UITabBar!
    
    //MARK: - View LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.selectedIndex = Constants.TWO
        self.delegate = self
        bottomTabBar.unselectedItemTintColor = .green
        self.tabBar.unselectedItemTintColor = .black
    }
}

//MARK: - UITabBarControllerDelegate
extension TabBarController: UITabBarControllerDelegate {
    
    func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
        return true
    }
}
