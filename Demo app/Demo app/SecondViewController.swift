//
//  SecondViewController.swift
//  Demo app
//
//  Created by Jay Shah on 27/01/22.
//

import UIKit

protocol TextDelegate {
    func sendText(text: String)
}

class SecondViewController: UIViewController{
    
    //MARK: - Outlet
    @IBOutlet weak var txtfield: UITextField!
    
    //MARK: - Variable
    var delegate : TextDelegate?
    
    //MARK: - View Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

//MARK: - Outlet Action
extension SecondViewController{
    @IBAction func goToAnotherView(_ sender: UIButton) {
        delegate?.sendText(text: txtfield.text ?? Constants.defaultValueInString)
        dismiss(animated: true, completion: nil)
    }
}
