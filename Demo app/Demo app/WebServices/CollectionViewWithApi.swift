//
//  CollectionViewWithApiViewController.swift
//  Demo app
//
//  Created by Jay Shah on 25/03/22.
//

import UIKit
import Alamofire

struct UserList: Codable {
    let page: Int
    let per_page: Int
    let total: Int
    let total_pages: Int
    let data: [UserData]
    let support: SupportList
}
struct UserData: Codable {
    let id: Int
    let email: String
    let first_name: String
    let last_name: String
    let avatar: String
}
struct SupportList: Codable {
    let url: String
    let text: String
}

class CollectionViewWithApi: UIViewController {
    //MARK: - Outlets
    @IBOutlet weak var collectionView: UICollectionView!
    //MARK: - Variables
    var fetchedArray = [UserData]()
    var coordinator: WebServicesCoordinator?
    //MARK: - View LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
        getUserInfoWithAlmofire()
        // Do any additional setup after loading the view.
    }
    
    func getUserInfoWithAlmofire(){
        if let url = URL(string: "https://reqres.in/api/users?delay=3"){
            AF.request(url, method: .get , parameters: nil, encoding :URLEncoding.default,  headers: nil, interceptor: nil, requestModifier: nil).response{(response) in
                switch response.result{
                case .success(let data):
                    guard let responseData = data else { return  }
                    do{
                        let json = try JSONSerialization.jsonObject(with: responseData, options: [])
                        print("Json: \(json)")
                    }catch let error{
                        print("Error\(error.localizedDescription)")
                    }
                    break
                case .failure(let error):
                    print("Error\(error.localizedDescription)")
                    break
                }
            }
        }
    }
}
extension CollectionViewWithApi: UICollectionViewDelegate{
    
}
extension CollectionViewWithApi: UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return fetchedArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell" , for: indexPath) as? CollectionViewWithApiCell{
            return cell
        }
        return UICollectionViewCell()
    }
    
    
}
