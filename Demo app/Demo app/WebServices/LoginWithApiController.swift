//
//  WebServicesController.swift
//  Demo app
//
//  Created by Jay Shah on 22/03/22.
//

import UIKit

class WebServicesController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.getData()
        // Do any additional setup after loading the view.
    }
    func getData(){
        if let url = URL(string: "https://reqres.in/api/login") {
            let urlRequest = URLRequest(url: url)
            let dataTask = URLSession.shared.dataTask(with: urlRequest) { (data, URLRequest, error) in
                
            }
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
