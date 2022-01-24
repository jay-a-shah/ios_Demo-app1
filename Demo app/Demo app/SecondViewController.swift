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

class SecondViewController: UIViewController {
//MARK: - Outlet
    @IBOutlet weak var txtfield: UITextField!
    var delegate : TextDelegate?
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
extension SecondViewController{
//MARK: - Outlet Action
    @IBAction func goToAnotherView(_ sender: UIButton) {
        delegate?.sendText(text: txtfield.text ?? "No Value Inserted")
        dismiss(animated: true, completion: nil)
    }
}
