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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let nibCell = UINib(nibName: "CollectionViewCell", bundle: nil)
        collectionView.register(nibCell, forCellWithReuseIdentifier: "CollectionViewCell")
        }
}
extension CollectionViewController: UICollectionViewDelegate {
    
}
extension CollectionViewController: UICollectionViewDataSource{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return ModelCollectionCell.cellLabel.count
    }
   
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as?  CollectionViewCell {
            cell.configCell(data: ModelCollectionCell(img: ModelCollectionCell.cellImage[indexPath.row],name: ModelCollectionCell.cellLabel[indexPath.row]))
        return cell
        }
        return UICollectionViewCell()
    }
}
