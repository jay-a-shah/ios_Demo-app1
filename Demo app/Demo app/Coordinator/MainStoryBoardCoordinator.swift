//
//  MainStoryBoardCoordinator.swift
//  Demo app
//
//  Created by Jay Shah on 15/03/22.
//

import Foundation
import UIKit
class MainStoryBoardCoordinator: Coordinator{
    var navController: UINavigationController?
    init(_ navigationController : UINavigationController){
        navController = navigationController
    }
    
    func start() {
        if let mainVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "uiComponentsViewController") as? UiComponentsViewController{
            navController?.pushViewController(mainVC, animated: true)
        }
    }
    
    func finishToRoot() {
        
    }
    
    func stop() {
        
    }
    
    
}
