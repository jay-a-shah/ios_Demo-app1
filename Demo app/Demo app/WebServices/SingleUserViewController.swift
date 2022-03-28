//
//  SingleUserControllerViewController.swift
//  Demo app
//
//  Created by Jay Shah on 28/03/22.
//

import UIKit
import Alamofire

// MARK: - Welcome
struct UsersList: Codable {
    let data: UsersData
    let support: NewSupportList
}

// MARK: - DataClass
struct UsersData: Codable {
    let id: Int
    let email, first_name, last_name: String
    let avatar: String

//    enum CodingKeys: String, CodingKey {
//        case id, email
//        case firstName = "first_name"
//        case lastName = "last_name"
//        case avatar
//    }
}

// MARK: - Support
struct NewSupportList: Codable {
    let url: String
    let text: String
}


class SingleUserViewController: UIViewController {
    
    //MARK: - Variables
    var coordinator: WebServicesCoordinator?
    var itemIndex1: Int?
    //MARK: - Outlets
    @IBOutlet weak var emailSingleUser: UILabel!
    @IBOutlet weak var lastName: UILabel!
    @IBOutlet weak var firstName: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    //MARK: - View LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
    getSingleUserInfoWithAlmofire(itemIndex: itemIndex1 ?? 1)
        // Do any additional setup after loading the view.
    }
    //MARK: - GetSingleUserInfoWithAlmofire
    func getSingleUserInfoWithAlmofire(itemIndex: Int){
        if let url = URL(string: "https://reqres.in/api/users/\(itemIndex)"){
            AF.request(url, method: .get, parameters: nil, encoding: URLEncoding.default , headers: nil, interceptor: nil, requestModifier: nil).response{ (response) in
                switch response.result{
                case .success(let data):
                    guard let responseData = data else { return  }
                    do{
//                        let json = try JSONSerialization.jsonObject(with: responseData) as? [String: Any]
//                        print("Json: \(json)")
//                        guard let newJson = try? JSONSerialization.data(withJSONObject: json, options: .prettyPrinted) else{
//                            return
//                        }
                        guard let jsonData = try? JSONDecoder().decode(UsersList.self, from: responseData) else {
                            debugPrint("Error")
                            return
                            
                        }
                        print(jsonData.data )
                        self.emailSingleUser.text = jsonData.data.email
                        self.firstName.text = jsonData.data.first_name
                        self.lastName.text = jsonData.data.last_name
                        if let urlImage = URL(string: jsonData.data.avatar){
                           guard let imageData = try? Data(contentsOf: urlImage) else{return}
                                    self.imageView.image = UIImage(data: imageData)
                                    
                                }
                    }catch let error{
                        print("Error\(error.localizedDescription)")
                    }
                
                    break
                case .failure(let error):
                    debugPrint("Error\(error.localizedDescription)")
                    break
                }
            }
        }
    }
    
}

