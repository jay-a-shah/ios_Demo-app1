//
//  LoginWithMVC.swift
//  Demo app
//
//  Created by Jay Shah on 07/04/22.
//

import UIKit

class LoginWithMVVM: UIViewController {
    
    var coordinator: MVVMCoordinator?
    @IBOutlet weak var btnSubmit: UIButton!
    @IBOutlet weak var textPassword: UITextField!
    @IBOutlet weak var textEmail: UITextField!
    @IBOutlet weak var textFname: UITextField!
    @IBOutlet weak var textLname: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
}
