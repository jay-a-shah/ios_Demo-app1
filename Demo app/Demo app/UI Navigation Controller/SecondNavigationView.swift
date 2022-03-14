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
        self.navigationController?.navigationBar.barStyle = .default
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Sign Out", image: UIImage(named: "image"), primaryAction: nil, menu: nil)
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "gear"), style: .plain, target: nil, action: #selector(back))
        // Do any additional setup after loading the view.
    }
    
   
    @IBAction func onClickGoToThirdNav(_ sender: Any) {
        if let thirdVc = storyboard?.instantiateViewController(withIdentifier: "thirdNavigationView") as? ThirdNavigationView {
            self.navigationController?.pushViewController(thirdVc, animated: true)
    }
}
   
}
extension SecondNavigationView{
    @objc func back(sender: UIBarButtonItem){
        navigationController?.popViewController(animated: true)
    }
}
