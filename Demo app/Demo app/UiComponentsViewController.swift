//
//  UiComponentsViewController.swift
//  Demo app
//
//  Created by Jay Shah on 09/03/22.
//

import UIKit

class UiComponentsViewController: UIViewController {
    var coordinator: MainStoryBoardCoordinator?

    @IBOutlet weak var btnCollectionViewWithApi: UIButton!
    @IBOutlet weak var btnComponentsWithApiCalling: UIButton!
    @IBOutlet weak var btnDatePickerAndToolbar: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func goToTableViewWithApi(_ sender: UIButton) {
        coordinator?.webServicesPageStoryboard()
    }
    @IBAction func goToCollectionViewWithApi(_ sender: UIButton) {
        coordinator?.moveToCollectionViewWithApi()
    }
    
}
