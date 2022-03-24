//
//  WebServicesCoordinator.swift
//  Demo app
//
//  Created by Jay Shah on 24/03/22.
//

import Foundation
import UIKit
class WebServicesCoordinator: Coordinator{
    
    var navController: UINavigationController?
    init(_ navigationController : UINavigationController){
        navController = navigationController
    }
    func start() {
        if let tableViewWithApiVC = UIStoryboard(name: "WebServicesPage", bundle: nil).instantiateViewController(withIdentifier: "tableViewWithApi") as? TableViewWithApi{
            tableViewWithApiVC.coordinator = self
            navController?.pushViewController(tableViewWithApiVC, animated: true)
        }
    }
    
    
    func finishToRoot() {
        
    }
    
    func stop() {
        
    }
    
}
