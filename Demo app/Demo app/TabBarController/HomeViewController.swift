//
//  HomeViewController.swift
//  Demo app
//
//  Created by Jay Shah on 08/03/22.
//

import UIKit

class HomeViewController: UIViewController {
  
    //MARK: - Outlets
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
   
    //MARK: - View LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        title = Constants.titleHomeViewController
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 3){
            self.activityIndicator.stopAnimating()
        }
    }
}
