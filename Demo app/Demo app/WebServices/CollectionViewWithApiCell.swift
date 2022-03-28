//
//  CollectionViewWithApiCell.swift
//  Demo app
//
//  Created by Jay Shah on 25/03/22.
//

import UIKit

class CollectionViewWithApiCell: UICollectionViewCell {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var lblEmail: UILabel!
    @IBOutlet weak var lblLastName: UILabel!
    @IBOutlet weak var lblFirstName: UILabel!
    override func awakeFromNib() {
        self.imageView.layer.cornerRadius = 90    }
    func configCell(firstName: String,lastName: String,email: String, image: String){
        self.lblEmail.text = email
        self.lblFirstName.text = firstName
        self.lblLastName.text = lastName
        if let urlImage = URL(string: image ?? ""){
            DispatchQueue.global().async {
                guard let imageData = try? Data(contentsOf: urlImage) else{return}
                DispatchQueue.main.async {
                    self.imageView.image = UIImage(data: imageData)
                    
                }
               
            }
        }
       
    }
}
