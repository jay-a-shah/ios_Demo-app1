//
//  MVVMCoordinator.swift
//  Demo app
//
//  Created by Jay Shah on 08/04/22.
//

import Foundation
import UIKit
 
class MVVMCoordinator: Coordinator{
    
    var navController: UINavigationController?
    init(_ navigationController : UINavigationController){
        navController = navigationController
    }
    
    func start() {
        if let mvvmVC = UIStoryboard(name: "LoginWithMVVM", bundle: nil).instantiateViewController(withIdentifier: "loginWithMVVM") as? LoginWithMVVM{
            mvvmVC.coordinator = self
            navController?.pushViewController(mvvmVC, animated: true)
        }
    }
    
    func finishToRoot() {
        
    }
    
    func stop() {
    
    }
    
    
}
