//
//  SecondNavigationView.swift
//  Demo app
//
//  Created by Jay Shah on 11/03/22.
//

import UIKit

class SecondNavigationViewController: UIViewController {
    
    //MARK: - View LifeCycle
    override func viewDidLoad(){
        super.viewDidLoad()
        title = Constants.titleSecondNavigationController
        self.navigationController?.navigationBar.barStyle = .default
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: Constants.btnSignOut, image: UIImage(named: Constants.Systemimage),
                                                            primaryAction: nil, menu: nil)
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(systemName: Constants.imageGear ), style: .plain, target: nil, action: #selector(back))
    }
}

//MARK: - Objective Function
extension SecondNavigationViewController {
    
    @objc func back(sender: UIBarButtonItem){
        navigationController?.popViewController(animated: true)
    }
    
}

//MARK: - Outlet Actions
extension SecondNavigationViewController {
    
    @IBAction func onClickGoToThirdNav(_ sender: Any) {
        if let thirdVc = storyboard?.instantiateViewController(withIdentifier: Identifiers.thirdeNavigationController.rawValue) as? ThirdNavigationViewController {
            self.navigationController?.pushViewController(thirdVc, animated: true)
        }
    }
    
}
