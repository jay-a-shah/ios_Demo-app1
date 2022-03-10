//
//  LoginPage.swift
//  Demo app
//
//  Created by Jay Shah on 07/03/22.
//

import UIKit

class LoginPage: UIViewController{
//MARK: - Outlets
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        title = "Login Screen"
        self.navigationController?.navigationBar.largeContentTitle = "Large Content Title"
        self.navigationController?.title = "Jay"
        self.navigationController?.navigationItem.title = "Login"
        passwordTextField.delegate = self
        emailTextField.delegate = self
    }
}
//MARK: - Outlet Action
extension LoginPage{
    @IBAction func toChangeSegmentedControl(_ sender: UISegmentedControl) {
        if( sender.selectedSegmentIndex == 0 ) {
            view.backgroundColor = .red
        }else if (sender.selectedSegmentIndex == 1){
            view.backgroundColor = .orange
        }else if (sender.selectedSegmentIndex == 2){
            view.backgroundColor = .black
        }else if (sender.selectedSegmentIndex == 3){
            view.backgroundColor = .purple
        }else if (sender.selectedSegmentIndex == 4){
            view.backgroundColor = .orange
    }
    
}
}
extension LoginPage: UITextFieldDelegate{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        switch textField {
        case emailTextField:
            //emailTextField.resignFirstResponder()
            passwordTextField.becomeFirstResponder()
        case passwordTextField:
            passwordTextField.resignFirstResponder()
        default :
            break
        }
        return true
    }
}
