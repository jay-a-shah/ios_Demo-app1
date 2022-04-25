//
//  MainStoryBoardCoordinator.swift
//  Demo app
//
//  Created by Jay Shah on 15/03/22.
//

import Foundation
import UIKit

class MainStoryBoardCoordinator: Coordinator {
    var navController: UINavigationController?
    init(_ navigationController : UINavigationController){
        navController = navigationController
    }
    
    func start() {
        if let mainVC = UIStoryboard(name: Identifiers.mainStoryboard.rawValue, bundle: nil).instantiateViewController(withIdentifier: Identifiers.uiComponentsViewController.rawValue) as? UiComponentsViewController{
            navController?.pushViewController(mainVC, animated: true)
        }
    }
    
    func finishToRoot() {
        //To be Implemented
    }
    
    func stop() {
        //To be Implemented
    }
}
