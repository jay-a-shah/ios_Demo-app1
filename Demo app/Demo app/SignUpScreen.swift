//
//  SignUpScreen.swift
//  Demo app
//
//  Created by Jay Shah on 26/04/22.
//

import UIKit

class SignUpScreen: UIViewController {

    @IBOutlet weak var btnSignInWithGoogle: UIButton!
    @IBOutlet weak var btnSignUpWithFacebook: UIButton!
    @IBOutlet weak var btnSignUp: UIButton!
    @IBOutlet weak var textPassword: UITextField!
    @IBOutlet weak var textEmail: UITextField!
    @IBOutlet weak var textName: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        textPassword.delegate = self
        textName.delegate = self
        textEmail.delegate = self
    }
}

extension SignUpScreen: UITextFieldDelegate {
  
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        switch textField {
        case textName:
            textEmail.becomeFirstResponder()
        case textEmail:
            textPassword.becomeFirstResponder()
        case textPassword:
            textPassword.resignFirstResponder()
        default :
            break
        }
        return true
    }
}
//MARK: - Outlet Action
extension SignUpScreen {
  
    @IBAction func btnSignUp(_ sender: UIButton) {
        alert(customMessage: "You Tapped to Sign Up ")
    }
    
    @IBAction func btnSignUpWithFacebook(_ sender: Any) {
        alert(customMessage: "SignUp With Facebook is Done")
    }
    
    @IBAction func btnSignInGoogle(_ sender: Any) {
        alert(customMessage: "SignIn With Google is Done")
    }
}
