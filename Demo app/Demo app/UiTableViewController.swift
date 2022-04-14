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
    var sectionFirst = Constants.ONE
    var sectionSecond = Constants.TWO
    lazy var refreshControl: UIRefreshControl = {
        let refreshControl = UIRefreshControl()
        refreshControl.addTarget(self, action: #selector(handleRefresh(_:)), for: .valueChanged)
        refreshControl.tintColor = UIColor.green
        return refreshControl
    }()
    
    //MARK: - View LifeCycle
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
        return Constants.TWO
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Identifiers.tableViewCell.rawValue, for:indexPath)
        cell.textLabel?.text = names[indexPath.row]
        cell.backgroundColor = indexPath.row % Constants.TWO == Constants.ZERO ? .gray : .darkGray
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "section \(section)"
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == Constants.ZERO{
            return sectionFirst
        }else if section == Constants.ONE{
            return sectionSecond
        }else{
            return sectionFirst
        }
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return CGFloat(Constants.SEVENTY)
    }
    
    func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        return Constants.footer
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return CGFloat(Constants.SEVENTY)
    }
}

//MARK: - ObjectFunc HandleRefresh
extension UiTableViewController {
    
    @objc func handleRefresh(_ refreshControl: UIRefreshControl) {
        for _ in 1...100 {
            names += ["JAY","abc","xyz"]
        }
        sectionFirst = Constants.THIRTY
        sectionSecond = Constants.THIRTY
        self.tableView.reloadData()
        refreshControl.endRefreshing()
    }
}
