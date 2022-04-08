//
//  WebServicesController.swift
//  Demo app
//
//  Created by Jay Shah on 22/03/22.
//

import UIKit

class LoginWithApiController : UIViewController {
    //MARK: -Varaibles
    var cordinator: MainStoryBoardCoordinator?
    var presenterView: LoginPresenter?
    @IBOutlet weak var textFieldEmail: UITextField!
    @IBOutlet weak var textFieldPassword: UITextField!
    @IBOutlet weak var btnLogin: UIButton!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.activityIndicator.isHidden = true
        presenterView = LoginPresenter()
        
    }
    @IBAction func onClickOfLoginBtn(_ sender: Any) {
       
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now()){
            self.activityIndicator.isHidden = false
            self.activityIndicator.startAnimating()
        }
        presenterView?.submitButtonClicked(tempEmail: textFieldEmail.text ?? "", tempPassword: textFieldPassword.text ?? "", completion: self)
}
}
extension LoginWithApiController: PresenterView{
    func updateLoginUI() {
        DispatchQueue.main.async {
            self.activityIndicator.stopAnimating()
            self.cordinator?.mainStoryBoard()
        }
    }
    
    
}



