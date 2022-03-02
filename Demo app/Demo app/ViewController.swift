//
//  ViewController.swift
//  Demo app
//
//  Created by Jay Shah on 11/01/22.
//

import UIKit

class ViewController: UIViewController {
    //MARK: - Outlet
    @IBOutlet weak var btnLoginScreen: UIButton!
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var btn1: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
      }
// MARK: - New Part
extension ViewController: TextDelegate {
    func sendText(text: String) {
        textLabel.text = text
    }
}
//MARK: - Outlet Action
extension ViewController {
    @IBAction func goToSecondView(_ sender: UIButton) {
//        if let controller = storyboard?.instantiateViewController(withIdentifier: "secondViewController") as? SecondViewController {
//            controller.delegate = self
//            self.present(controller, animated: true, completion: nil)
//            }
        performSegue(withIdentifier: "signUpScreen", sender: self)
    }
    @IBAction func goToLogin(_ sender: UIButton) {
        if let loginScreen = storyboard?.instantiateViewController(withIdentifier: "loginScreen") as? LoginScreen {
        self.present(loginScreen, animated: true, completion: nil)
        }
    }
}
