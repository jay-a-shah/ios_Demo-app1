//
//  FirstNavigationView.swift
//  Demo app
//
//  Created by Jay Shah on 11/03/22.
//

import UIKit

class FirstNavigationViewController: UIViewController {
    
    //MARK: - View LifeCycle
    override func viewDidLoad(){
        super.viewDidLoad()
        title = Constants.titleFirstNavigationController
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .trash, target: self, action: nil)
        navigationController?.navigationBar.tintColor = .label
    }
}

//MARK: - Outlet Actions
extension FirstNavigationViewController {
    
    @IBAction func onClickOfSecondNav(_ sender: UIButton) {
        if let secondVc = storyboard?.instantiateViewController(withIdentifier: Identifiers.secondNavigationController.rawValue) as? SecondNavigationViewController {
            self.navigationController?.pushViewController(secondVc, animated: true)
        }
    }
    
}
