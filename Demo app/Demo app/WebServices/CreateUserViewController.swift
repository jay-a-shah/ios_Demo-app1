//
//  CreateUser.swift
//  Demo app
//
//  Created by Jay Shah on 28/03/22.
//

import UIKit
import Alamofire


struct UserCredData {
    var name : String?
    var email : String?
    func requestParams() -> [String:Any]{
        var user : [String:Any] = [:]
        user["name"] = name
        user["email"] = email
        return user
    }
}
class CreateUserViewController : UIViewController {
//MARK: -Outlets
    @IBOutlet weak var lblEmail: UITextField!
    @IBOutlet weak var lblName: UITextField!
    var coordinator: WebServicesCoordinator?
    override func viewDidLoad() {
        super.viewDidLoad()
      
        // Do any additional setup after loading the view.
    }

    @IBAction func btnsubmit(_ sender: UIButton) {
        postMethod()
        dismiss(animated: true, completion: nil)
    }
    
    func postMethod() {
        var user = UserCredData(name: lblName.text, email: lblEmail.text)
    
        AF.request("https://reqres.in/api/users", method: .post, parameters: user.requestParams(), encoding: JSONEncoding.default, headers: nil).validate(statusCode: 200 ..< 299).response { (response) in
            switch response.result{
            case.success(let data):
                guard let responseData = data else{
                    return
                }
                do{
                    let json = try JSONSerialization.jsonObject(with: responseData, options: [])
                    debugPrint("JSON: \(json)")
                } catch let error{
                    debugPrint("Error: \(error.localizedDescription)")
                }
                break
            case .failure(let error):
                debugPrint("Error: \(error.localizedDescription)")
                break
            }
        }
    }
}
