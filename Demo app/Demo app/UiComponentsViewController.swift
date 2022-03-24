//
//  UiComponentsViewController.swift
//  Demo app
//
//  Created by Jay Shah on 09/03/22.
//

import UIKit

class UiComponentsViewController: UIViewController {
    var cordinator: WebServicesCoordinator?

    @IBOutlet weak var btnComponentsWithApiCalling: UIButton!
    @IBOutlet weak var btnDatePickerAndToolbar: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func goToTableViewWithApi(_ sender: UIButton) {
    }
}
