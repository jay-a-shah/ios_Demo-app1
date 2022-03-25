//
//  TableViewWithApi.swift
//  Demo app
//
//  Created by Jay Shah on 24/03/22.
//

import UIKit

import Foundation

struct Welcome: Codable {
    let page: Int
    let per_page: Int
    let total: Int
    let total_pages: Int
    let data: [Datum]
    let support: Support
}
struct Datum: Codable {
    let id: Int
    let email: String
    let first_name: String
    let last_name: String
    let avatar: String
}
struct Support: Codable {
    let url: String
    let text: String
}

class TableViewWithApi: UIViewController {
    var fetchedArray = [Datum]()
    var coordinator: WebServicesCoordinator?
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        parseData()
        tableView.delegate = self
        tableView.dataSource = self
        
        // Do any additional setup after loading the view.
    }
    
    func parseData(){
        guard let url = URL(string: "https://reqres.in/api/users?page=2") else {
            print("Error: cannot create URL")
            return
        }
        
        let configuration = URLSessionConfiguration.default
        let session = URLSession(configuration: configuration, delegate: nil, delegateQueue: OperationQueue.main)
        //        let url = URL(string: "https://reqres.in/api/users?page=2")
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        let datatask = session.dataTask(with: request) { data ,urlNewResponse ,error in
            if let error = error {
                print("Error: \(error.localizedDescription)")
            }
            
            do{
                guard let data = data else {
                    return
                }
                let json = try JSONSerialization.jsonObject(with: data , options: [])
            }catch let error{
                print("Error while Serialization\(error.localizedDescription)")
            }
            do {
                guard let data = data else {
                    return
                }
                
                guard let jsonObject = try JSONSerialization.jsonObject(with: data) as? [String: Any] else {
                    print("Error: Cannot convert data to JSON object")
                    return
                }
                guard let prettyJsonData = try? JSONSerialization.data(withJSONObject: jsonObject, options: .prettyPrinted) else {
                    print("Error: Cannot convert JSON object to Pretty JSON data")
                    return
                }
                guard let prettyPrintedJson = String(data: prettyJsonData, encoding: .utf8) else {
                    print("Error: Couldn't print JSON in String")
                    return
                }
                guard let fetchData = try? JSONDecoder().decode(Welcome.self, from: prettyJsonData)else{
                    print("Error in Data")
                    return
                }
                self.fetchedArray = fetchData.data
                print(fetchData)
                DispatchQueue.main.async {[weak self] in
                    guard let uSelf = self else {return}
                    uSelf.tableView.reloadData()
                }
            print(prettyPrintedJson)
            }
         catch {
            print("Error: Trying to convert JSON data to string")
            return
        }
    }
    datatask.resume()
}
}
//MARK: - UITableViewDelegate
extension TableViewWithApi: UITableViewDelegate{
    
}
//MARK: - UITableViewDataSource
extension TableViewWithApi: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fetchedArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "tableViewWithApiCell", for: indexPath) as? TableViewWithApiCell{
            let elements = fetchedArray[indexPath.row]
            cell.emailTextField.text = elements.email
            cell.firstNameTextField.text = elements.first_name
            cell.lastNameTextField.text = elements.last_name
            return cell
        }
        return UITableViewCell()
    }
}
