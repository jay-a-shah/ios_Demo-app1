//
//  MainStoryBoardCoordinator.swift
//  Demo app
//
//  Created by Jay Shah on 15/03/22.
//

import Foundation
import UIKit
class MainStoryBoardCoordinator: Coordinator{
   // MARK: - Variables
    var navController: UINavigationController?
    var webServiceCoordinator: WebServicesCoordinator?
    init(_ navigationController : UINavigationController){
        navController = navigationController
    }
    
    func start() {
        if let loginWithApiVC = UIStoryboard(name: "WebServicesPage", bundle: nil).instantiateViewController(withIdentifier: "loginWithApiController") as? LoginWithApiController{
            loginWithApiVC.cordinator = self
            navController?.pushViewController(loginWithApiVC, animated: true)
        }
    }
    
    func finishToRoot() {
        
    }
    
    func stop() {
        
    }
    func mainStoryBoard(){
        if let mainVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "uiComponentsViewController") as? UiComponentsViewController{
            mainVC.coordinator = self
            navController?.pushViewController(mainVC, animated: true)
        }
    }
    
    func webServicesPageStoryboard(){
        if let navCon = navController{
            let webServiceVCCoordinator = WebServicesCoordinator(navCon)
            webServiceVCCoordinator.start()
        }
    }
    func moveToCollectionViewWithApi(){
        webServiceCoordinator = WebServicesCoordinator(navController ?? UINavigationController())
        webServiceCoordinator?.moveToCollectionViewWithApi()
    }
    
}
