//
//  LoginScreen.swift
//  Demo app
//
//  Created by Jay Shah on 28/02/22.
//

import UIKit

class LoginScreen: UIViewController {
    
    //MARK: - Outlets
    @IBOutlet weak var btnSignUpScreen: UIButton!
    
    //MARK: - View LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

//MARK: - Outlet Action
extension LoginScreen{
    
    @IBAction func goToSignUpScreen(_ sender: UIButton) {
        if let signUpScreen = storyboard?.instantiateViewController(withIdentifier: Constants.signUpPage) as? SignUpPage {
            self.present(signUpScreen, animated: true, completion: nil)
        }
    }
}
