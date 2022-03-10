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
    
    var cellImage:[String] = ["FacebookLogo","googleLogo","LogoOfEye","LogoOfLoginScreen"]
    var cellLabel:[String] = ["Facebook","Google","Eye","Twitter"]
    
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
        return cellLabel.count
    }
   
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as?  CollectionViewCell {
            cell.configCell(data: ModelCollectionCell(img: cellImage[indexPath.row],name: cellLabel[indexPath.row]))
        return cell
        }
        return UICollectionViewCell()
    }
}
