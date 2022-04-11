//
//  LoginWithMVC.swift
//  Demo app
//
//  Created by Jay Shah on 07/04/22.
//

import UIKit

class LoginWithMVVM: UIViewController {
    
    var coordinator: MVVMCoordinator?
    let viewModel = LoginViewModel()
    @IBOutlet weak var btnSubmit: UIButton!
    @IBOutlet weak var textPassword: UITextField!
    @IBOutlet weak var textEmail: UITextField!
    @IBOutlet weak var textFname: UITextField!
    @IBOutlet weak var textLname: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        bindViewModel()
        // Do any additional setup after loading the view.
    }
    func bindViewModel(){
        viewModel.onValidationError = { error in
            let alert = UIAlertController(title: "UIAlertController", message: "\(error)", preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "Continue", style: UIAlertAction.Style.default, handler: nil))
            alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertAction.Style.cancel, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
        
        viewModel.onLoginSuccess = {
            self.coordinator?.finishToRoot()
        }
    }
    
    @IBAction func onClickOfSubmit(_ sender: UIButton) {
        viewModel.validateData(email: textEmail.text ?? "", password: textPassword.text ?? "", fname: textFname.text ?? "", lname: textLname.text ?? "")
    }
    
}
