//
//  CreateUser.swift
//  Demo app
//
//  Created by Jay Shah on 28/03/22.
//

import UIKit

class CreateUserViewController : UIViewController {

    var coordinator: WebServicesCoordinator?
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func btnsubmit(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
}
