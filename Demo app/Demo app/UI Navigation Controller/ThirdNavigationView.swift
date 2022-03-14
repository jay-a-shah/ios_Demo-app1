//
//  ThirdNavigationView.swift
//  Demo app
//
//  Created by Jay Shah on 11/03/22.
//

import UIKit

class ThirdNavigationView: UIViewController, TextDelegate {

    @IBOutlet weak var textLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Third View Controller"
        
 
        navigationItem.rightBarButtonItems = [ UIBarButtonItem(barButtonSystemItem: .trash, target: self, action: #selector(back)),
            UIBarButtonItem(title: "OK", image: UIImage(systemName: "person.circle"), primaryAction: nil, menu: nil)
        ]
        // Do any additional setup after loading the view.
    }
    @IBAction func onClickGoToFourthVC(_ sender: UIButton) {
        if let fourthVc = storyboard?.instantiateViewController(withIdentifier: "fourthNavigationView") as? FourthNavigationView {
            fourthVc.delegate = self
            self.navigationController?.pushViewController(fourthVc, animated: true)
        }
    }
    
    @IBAction func onClickPopViewController(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
   
}
extension ThirdNavigationView: SetTitle{
    func sendText(text: String) {
        textLabel.text = text
    }
}
//MARK: - ObjectFunc Redirecting
extension ThirdNavigationView{
    @objc func back(sender: UIBarButtonItem){
        navigationController?.popViewController(animated: true)
    }
}
