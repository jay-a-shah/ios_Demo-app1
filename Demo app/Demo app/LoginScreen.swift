//
//  LoginScreen.swift
//  Demo app
//
//  Created by Jay Shah on 28/02/22.
//

import UIKit

class LoginScreen: UIViewController {

    @IBOutlet weak var btnSignUpScreen: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
extension LoginScreen{
//MARK: - Outlet Action
    @IBAction func goToSignUpScreen(_ sender: UIButton) {
        if let signUpScreen = storyboard?.instantiateViewController(withIdentifier: "signuppage") as? SignUpPage{
        self.present(signUpScreen, animated: true, completion: nil)
        }
    }
}
