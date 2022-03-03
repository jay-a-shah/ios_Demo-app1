//
//  UiTableViewController.swift
//  Demo app
//
//  Created by Jay Shah on 03/03/22.
//

import UIKit

class UiTableViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var names = ["abc","pqr","abc","pqr","abc","pqr","abc","pqr","abc","pqr","abc","pqr","abc","pqr","abc","pqr","abc","pqr","abc","pqr","abc","pqr","abc","pqr","abc","pqr"]
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
}
extension UiTableViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       print("You Tapped Me")
    }
}
extension UiTableViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellOne", for:indexPath)
        cell.textLabel?.text = names[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        return names.count
    }
    
    
}
