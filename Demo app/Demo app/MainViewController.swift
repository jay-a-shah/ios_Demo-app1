//
//  MainViewController.swift
//  Demo app
//
//  Created by Jay Shah on 03/03/22.
//

import UIKit

class MainViewController: UIViewController {
    
    //MARK: - Outlets
    @IBOutlet weak var btnLoginScreen: UIButton!
    @IBOutlet weak var btnDelegateProtocol: UIButton!
    
    //MARK: - View LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

//MARK: - Outlet Actions
extension MainViewController{
    
    @IBAction func goToDelegateAndProtocol(_ sender: UIButton) {
        if let delegateProtocol =
            storyboard?.instantiateViewController(withIdentifier: Constants.mainViewController) as? ViewController {
            self.present(delegateProtocol, animated: true, completion:nil)
        }
    }
    
    @IBAction func goToLoginScreen(_ sender: UIButton) {
        if let loginScreen = storyboard?.instantiateViewController(withIdentifier:              Constants.loginScreen) as? LoginScreen {
            self.present(loginScreen, animated: true, completion:nil)
        }
    }
}
