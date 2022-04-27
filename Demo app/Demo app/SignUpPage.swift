//
//  SignUpPage.swift
//  Demo app
//
//  Created by Jay Shah on 28/02/22.
//

import UIKit

class SignUpPage: UIViewController {
    
    //MARK: - Outlets
    @IBOutlet weak var textViewBio: UITextView!
    @IBOutlet weak var textFieldPassword: UITextField!
    @IBOutlet weak var textFieldEmail: UITextField!
    @IBOutlet weak var btnTableView: UIButton!
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var mySwitch: UISwitch!
    @IBOutlet weak var ageSlider: UISlider!
    @IBOutlet weak var newview: UIView!
    @IBOutlet weak var ageNumberLabel: UILabel!
    @IBOutlet weak var btnSubmit: UIButton!
    @IBOutlet weak var stepperLabel: UILabel!
    @IBOutlet weak var progressView: UIProgressView!
    
    //MARK: - Variables
    var timer: Timer?
    var value:Float = Constants.valueForProgressBar
    var pageControlImages: [String] = ["FacebookLogo","googleLogo","LogoOfEye","LogoOfLoginScreen"]
    
    //MARK: - View LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        textFieldEmail.delegate = self
        textFieldPassword.delegate = self
        textViewBio.delegate = self
        self.title = Constants.titleLoginPage
    }
}
//MARK: - OutLet Action
extension SignUpPage {
    
    @IBAction func sliderAction(_ sender: Any) {
        ageNumberLabel.text = "\(Int(ageSlider.value))"
    }
    
    @IBAction func switchAction(_ sender: UISwitch) {
        newview.backgroundColor = sender .isOn ? .gray : .brown
    }
    
    @IBAction func stepperAction(_ sender: UIStepper) {
        stepperLabel.text = sender.value.description
    }
    
    @IBAction func goToTableview(_ sender: UIButton) {
        if let vc = storyboard?.instantiateViewController(withIdentifier: Constants.tableViewController) as? UiTableViewController{
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
    
    @IBAction func startSubmitProgress(_ sender: UIButton) {
        timer = Timer.scheduledTimer(withTimeInterval: Double(Constants.ONE), repeats: true, block: { timer in
            self.progressView.progress = self.progressView.progress + (self.value)
            if self.progressView.progress == Float(Constants.ONE) {
                self.timer?.invalidate()}
        })
    }
}

extension SignUpPage: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        switch textField {
        case textFieldEmail:
            textFieldPassword.becomeFirstResponder()
        case textFieldPassword:
            textViewBio.becomeFirstResponder()
        default:
            break
        }
        return true
    }
}
extension SignUpPage: UITextViewDelegate {
    func textViewShouldEndEditing(_ textView: UITextView) -> Bool {
        switch textView {
        case textViewBio:
            textViewBio.resiFirstResponder()
        
    }
}
