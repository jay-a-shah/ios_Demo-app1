//
//  ThirdNavigationView.swift
//  Demo app
//
//  Created by Jay Shah on 11/03/22.
//

import UIKit

class ThirdNavigationView: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Third View Controller"
 
        navigationItem.rightBarButtonItems = [ UIBarButtonItem(barButtonSystemItem: .trash, target: self, action: nil),
            UIBarButtonItem(title: "OK", image: UIImage(systemName: "person.circle"), primaryAction: nil, menu: nil)
        ]
        // Do any additional setup after loading the view.
    }

    @IBAction func onClickGoToFourthVC(_ sender: UIButton) {
        if let fourthVc = storyboard?.instantiateViewController(withIdentifier: "fourthNavigationView") as? FourthNavigationView {
        self.navigationController?.pushViewController(fourthVc, animated: true)
    }
    }
    
    @IBAction func onClickPopViewController(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
}
