//
//  FourthViewController.swift
//  Demo app
//
//  Created by Jay Shah on 11/03/22.
//

import UIKit

protocol SetTitle : AnyObject {
    func sendText(text: String)
}

class FourthNavigationView: UIViewController {

    @IBOutlet weak var setTitle: UITextField!
    var delegate: TextDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Fourth View Controller"
        // Do any additional setup after loading the view.
    }
    
    @IBAction func onClickGoBack(_ sender: UIButton) {
        delegate?.sendText(text: setTitle.text ?? "Nothing Inserted")
        self.navigationController?.popViewController(animated: true)
    }
    
    
    
}
