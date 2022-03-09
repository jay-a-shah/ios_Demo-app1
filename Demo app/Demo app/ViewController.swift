//
//  ViewController.swift
//  Demo app
//
//  Created by Jay Shah on 11/01/22.
//

import UIKit

class ViewController: UIViewController {
    //MARK: - Outlet
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var btn1: UIButton!
    //MARK: - View Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

// MARK: - Backward Data Passing
extension ViewController: TextDelegate {
    func sendText(text: String) {
        textLabel.text = text
    }
}
//MARK: - Outlet Action
extension ViewController {
    @IBAction func goToSecondView(_ sender: UIButton) {
      if let controller = storyboard?.instantiateViewController(withIdentifier: "secondViewController") as? SecondViewController {
            controller.delegate = self
            self.present(controller, animated: true, completion: nil)
        }
    }
}
