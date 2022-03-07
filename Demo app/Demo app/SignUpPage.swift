//
//  SignUpPage.swift
//  Demo app
//
//  Created by Jay Shah on 28/02/22.
//

import UIKit

class SignUpPage: UIViewController {
    //MARK: - Outlets
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
    var value:Float = 0.1
    var pageControlImages: [String] = ["FacebookLogo","googleLogo","LogoOfEye","LogoOfLoginScreen"]
    
  
    
   
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Login Screen"
    }
    @IBAction func startSubmitProgress(_ sender: UIButton) {
//        progressView.setProgress(0.9, animated: true)
       timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true, block: { timer in
           self.progressView.progress = self.progressView.progress + (self.value)
        if self.progressView.progress == 1.0 {
                            self.timer?.invalidate()}
                    })
   
    }
}
//MARK: - OutLet Action
extension SignUpPage {
    
    @IBAction func sliderAction(_ sender: Any) {
        ageNumberLabel.text =
        "\(Int(ageSlider.value))" }
   
    @IBAction func switchAction(_ sender: UISwitch) {
        if sender .isOn{
            view.backgroundColor = .gray
        }else {
            view.backgroundColor = .brown
        }
    }
    
    @IBAction func stepperAction(_ sender: UIStepper) {
        stepperLabel.text = sender.value.description
    }
    
    @IBAction func goToTableview(_ sender: UIButton) {
        if let vc = storyboard?.instantiateViewController(withIdentifier: "tableViewController") as? UiTableViewController{
            self.navigationController?.pushViewController(vc, animated: true)
                }
    }
    
}
