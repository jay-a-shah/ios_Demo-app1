//
//  LoginPage.swift
//  Demo app
//
//  Created by Jay Shah on 07/03/22.
//

import UIKit

class LoginPage: UIViewController{
    
    //MARK: - View LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        title = Constants.titleLoginPage
    }
}
//MARK: - Outlet Action
extension LoginPage{
    
    @IBAction func toChangeSegmentedControl(_ sender: UISegmentedControl) {
        if( sender.selectedSegmentIndex == Constants.ZERO) {
            view.backgroundColor = .red
        }else if (sender.selectedSegmentIndex == Constants.ONE){
            view.backgroundColor = .orange
        }else if (sender.selectedSegmentIndex == Constants.TWO){
            view.backgroundColor = .black
        }else if (sender.selectedSegmentIndex == Constants.THREE){
            view.backgroundColor = .purple
        }else if (sender.selectedSegmentIndex == Constants.FOUR){
            view.backgroundColor = .orange
        }
    }
}
