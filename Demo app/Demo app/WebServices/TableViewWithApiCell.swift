//
//  TableViewWithApiCell.swift
//  Demo app
//
//  Created by Jay Shah on 24/03/22.
//

import UIKit

class TableViewWithApiCell: UITableViewCell {

    @IBOutlet weak var firstNameTextField: UILabel!
    @IBOutlet weak var lastNameTextField: UILabel!
    @IBOutlet weak var emailTextField: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
