//
//  SecondNavigationView.swift
//  Demo app
//
//  Created by Jay Shah on 11/03/22.
//

import UIKit

class SecondNavigationView: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Second View Controller"
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Sign Out", image: UIImage(named: "image"), primaryAction: nil, menu: nil)
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Sign In", image: UIImage(systemName: "gear"), primaryAction: nil, menu: nil)
        // Do any additional setup after loading the view.
    }
    
    @IBAction func onClickGoToThirdNav(_ sender: Any) {
        if let thirdVc = storyboard?.instantiateViewController(withIdentifier: "thirdNavigationView") as? ThirdNavigationView {
        self.navigationController?.pushViewController(thirdVc, animated: true)
    }
}
}
