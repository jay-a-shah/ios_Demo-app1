//
//  UiTableViewController.swift
//  Demo app
//
//  Created by Jay Shah on 03/03/22.
//

import UIKit

class UiTableViewController: UIViewController {
//MARK: - Outlets
    @IBOutlet weak var tableView: UITableView!
//MARK: -Variables
   var names = ["abc","pqr","xyz"]
    var sectionFirst = 1
    var sectionSecond = 2
    lazy var refreshControl: UIRefreshControl = {
                let refreshControl = UIRefreshControl()
            refreshControl.addTarget(self, action: #selector(handleRefresh(_:)), for: .valueChanged)
                refreshControl.tintColor = UIColor.green
                return refreshControl
            }()
        @objc func handleRefresh(_ refreshControl: UIRefreshControl) {
            for _ in 1...100 {
                names += ["JAY","abc","xyz"]
            }
            sectionFirst = 30
            sectionSecond = 25
                self.tableView.reloadData()
                refreshControl.endRefreshing()
            }
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        self.tableView.addSubview(self.refreshControl)
    }
}
//MARK: - UITableView Delegate
extension UiTableViewController: UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       print("You Tapped Me")
    }
}
//MARK: - UITableView DataSource
extension UiTableViewController: UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellOne", for:indexPath)
        cell.textLabel?.text = names[indexPath.row]
        
        if indexPath.row % 2 == 0 {
            cell.backgroundColor = .gray
        }else{
            cell.backgroundColor = .darkGray
        }
        return cell
}
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "section \(section)"
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0{
            return sectionFirst
        }else if section == 1 {
            return sectionSecond
        }else{
            return sectionFirst
        }
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 70
    }
    func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        return "footer"
    }
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 70
    }
    
}
