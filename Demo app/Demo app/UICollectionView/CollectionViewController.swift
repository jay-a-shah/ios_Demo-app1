//
//  CollectionViewController.swift
//  Demo app
//
//  Created by Jay Shah on 04/03/22.
//

import UIKit

class CollectionViewController: UIViewController {
    
    //MARK: - Outlets
    @IBOutlet weak var collectionView: UICollectionView!
    
    //MARK: - Variables
    var cellImage:[String] = ["FacebookLogo","googleLogo","LogoOfEye","LogoOfLoginScreen"]
    var cellLabel:[String] = ["Facebook","Google","Eye","Twitter"]
    
    //MARK: - View LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        let nibCell = UINib(nibName:Identifiers.collectionViewCell.rawValue, bundle: nil)
        collectionView.register(nibCell, forCellWithReuseIdentifier: Identifiers.collectionViewCell.rawValue)
    }
}

//MARK: -  UICollectionViewDelegate
extension CollectionViewController: UICollectionViewDelegate {
}

//MARK: - UICollectionViewDataSource
extension CollectionViewController: UICollectionViewDataSource{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return cellLabel.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: Identifiers.collectionViewCell.rawValue , for: indexPath) as?  CollectionViewCell {
            cell.configCell(data: ModelCollectionCell(img: cellImage[indexPath.row],name: cellLabel[indexPath.row]))
            return cell
        }
        return UICollectionViewCell()
    }
}
