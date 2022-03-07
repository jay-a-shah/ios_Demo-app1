//
//  LoginPage.swift
//  Demo app
//
//  Created by Jay Shah on 07/03/22.
//

import UIKit

class LoginPage: UIViewController{

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
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
