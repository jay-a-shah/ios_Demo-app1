//
//  CollectionViewCell.swift
//  Demo app
//
//  Created by Jay Shah on 04/03/22.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    //MARK: - Outlets
    @IBOutlet weak var cellLabel: UILabel!
    @IBOutlet weak var cellImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func configCell(data: ModelCollectionCell){
        cellLabel.text = data.name
        cellImage.image = UIImage(named: data.img ?? "FacebookLogo")
    }

}
