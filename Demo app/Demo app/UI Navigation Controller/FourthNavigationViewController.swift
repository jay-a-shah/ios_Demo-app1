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

class FourthNavigationViewController: UIViewController {
    
    //MARK: - Outlets
    @IBOutlet weak var setTitle: UITextField!
    
    //MARK: - Variables
    var delegate: TextDelegate?
    
    //MARK: - View Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        title = Constants.titleFourthNavigationController
    }
}

//MARK: - Outlet Action
extension FourthNavigationViewController {
    
    @IBAction func onClickGoBack(_ sender: UIButton) {
        delegate?.sendText(text: setTitle.text ?? Constants.nothingInserted)
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func goToRoot(_ sender: UIButton) {
        self.navigationController?.popToRootViewController(animated: true)
    }
    
}
