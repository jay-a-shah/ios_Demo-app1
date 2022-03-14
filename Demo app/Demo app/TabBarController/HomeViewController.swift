//
//  HomeViewController.swift
//  Demo app
//
//  Created by Jay Shah on 08/03/22.
//

import UIKit

class HomeViewController: UIViewController {
    //MARK: - Outlets
    @IBOutlet weak var changeLayout: UISwitch!
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var stackView: UIStackView!
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBOutlet weak var stepperControl: UIStepper!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    //MARK: - Variables
    var data = ["Apple","Banana","Green-Apple","Grapes","Kiwi","WaterMelon"]
    var filteredData : [String] = []
    var addItems = 2
    //MARK: - View LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Home"
        tableView.dataSource = self
        for _ in 1...10 {
            data += data
        }
        filteredData = data
        searchBar.delegate = self
        collectionView.delegate = self
        collectionView.dataSource = self
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 3){
            self.activityIndicator.stopAnimating()
        }
    }
    
}
extension HomeViewController {
    @IBAction func toChangeSegment(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            stepperControl.isHidden = true
            tableView.isHidden = false
            collectionView.isHidden = true
            stackView.isHidden = true
        case 1:
            stepperControl.isHidden = false
            tableView.isHidden = true
            collectionView.isHidden = false
            stackView.isHidden = true
        case 2:
            stepperControl.isHidden = true
            tableView.isHidden = true
            collectionView.isHidden = true
            stackView.isHidden = false
        default:
            break
        }
    }
    @IBAction func toChangeLayout(_ sender: UISwitch) {
        stackView.axis = sender.isOn ? .horizontal : .vertical
    }
    @IBAction func onclickAddItems(_ sender: UIStepper) {
        addItems = Int(sender.value)
        DispatchQueue.main.async {[weak self] in
            guard let uSelf = self else {return}
            uSelf.collectionView.reloadData()
        }
    }
}

//MARK: - UITableViewDataSource
extension HomeViewController: UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        filteredData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for:indexPath)
        cell.textLabel?.text = filteredData[indexPath.row]
        if indexPath.row % 2 == 0 {
            cell.backgroundColor = .white
        }else{
            cell.backgroundColor = .darkGray
        }
        return cell
    }
}
extension HomeViewController: UISearchBarDelegate{
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        filteredData = data
        if searchText != "" {
            filteredData = filteredData.filter{ $0.lowercased().contains(searchText.lowercased())}
            tableView.reloadData()
        }else{
            tableView.reloadData()
        }
    }
}
extension HomeViewController: UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return addItems
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? UICollectionViewCell {
            return cell
        }
        return UICollectionViewCell()
    }
    
    
}
extension HomeViewController: UICollectionViewDelegate {
    
}

