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
    func moveToCollectionViewWithApi(){
        if let collectionViewWithApiVC = UIStoryboard(name: "WebServicesPage", bundle: nil).instantiateViewController(withIdentifier: "collectionViewWithApi") as? CollectionViewWithApi{
            collectionViewWithApiVC.coordinator = self
            navController?.pushViewController(collectionViewWithApiVC, animated: true)
        }
    }
    func moveToSingleUser(index: Int){
        if let singleUserVC = UIStoryboard(name: "WebServicesPage", bundle: nil).instantiateViewController(withIdentifier: "singleUserViewController") as? SingleUserViewController{
            singleUserVC.coordinator = self
            singleUserVC.itemIndex1 = index + 1
            navController?.pushViewController(singleUserVC, animated: true)
        }
    }
    func moveToCreateUser(){
        if let createUserVC = UIStoryboard(name: "WebServicesPage", bundle: nil).instantiateViewController(withIdentifier: "createUserViewController") as? CreateUserViewController{
            createUserVC.coordinator = self
            navController?.present(createUserVC, animated: true, completion: nil)
        }
    }
}
