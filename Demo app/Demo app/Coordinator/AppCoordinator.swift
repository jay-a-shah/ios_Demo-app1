//
//  AppCoordinator.swift
//  Demo app
//
//  Created by Jay Shah on 15/03/22.
//

import Foundation
import UIKit
class AppCoordinator: Coordinator{
    var navController: UINavigationController?
    init(_ navigationController: UINavigationController){
        navController = navigationController
    }
    
    func start() {
        if let navCon = navController{
            let mainVCCoordinator = MainStoryBoardCoordinator(navCon)
            mainVCCoordinator.start()
        }
    }
    
    func finishToRoot() {
        
    }
    
    func stop() {
        
    }
    
    
}
