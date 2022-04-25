//
//  ThirdNavigationView.swift
//  Demo app
//
//  Created by Jay Shah on 11/03/22.
//

import UIKit

class ThirdNavigationViewController: UIViewController, TextDelegate {
    
    //MARK: - Outlets
    @IBOutlet weak var textLabel: UILabel!
    
    //MARK: - View LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        title = Constants.titleThirdNavigationController
        navigationItem.rightBarButtonItems = [ UIBarButtonItem(barButtonSystemItem: .trash, target: self, action: #selector(back)),
                                               UIBarButtonItem(title: Constants.btnOK , image: UIImage(systemName: Constants.imagePerson),
                                                               primaryAction: nil, menu: nil)]
    }
}

//MARK: - Custom Function
extension ThirdNavigationViewController: SetTitle {
    
    func sendText(text: String) {
        textLabel.text = text
    }
    
}

//MARK: - ObjectFunc Redirecting
extension ThirdNavigationViewController {
    
    @objc func back(sender: UIBarButtonItem){
        navigationController?.popViewController(animated: true)
    }
    
}

//MARK: - Outlet Action
extension ThirdNavigationViewController {
    
    @IBAction func onClickGoToFourthVC(_ sender: UIButton) {
        if let fourthVc = storyboard?.instantiateViewController(withIdentifier: Identifiers.fourthNavigationController.rawValue) as? FourthNavigationViewController {
            fourthVc.delegate = self
            self.navigationController?.pushViewController(fourthVc, animated: true)
        }
    }
    
    @IBAction func onClickPopViewController(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
}
