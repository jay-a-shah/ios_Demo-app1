//
//  FirstNavigationView.swift
//  Demo app
//
//  Created by Jay Shah on 11/03/22.
//

import UIKit

class FirstNavigationView: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "First Navigation Controller"
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .trash, target: self, action: nil)
        navigationController?.navigationBar.tintColor = .label
       
        // Do any additional setup after loading the view.
    }

    @IBAction func onClickOfSecondNav(_ sender: UIButton) {
        if let secondVc = storyboard?.instantiateViewController(withIdentifier: "secondNavigationView") as? SecondNavigationView {
        self.navigationController?.pushViewController(secondVc, animated: true)
            
    }
}
   
    @IBAction func goToRootVC(segue: UIStoryboardSegue){
        
    }
}
