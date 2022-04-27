//
//  CustomUiButton.swift
//  Demo app
//
//  Created by Jay Shah on 27/04/22.
//

import Foundation
import UIKit

@IBDesignable
class CustomUiButton: UIButton{
    
    var borderWidth: CGFloat = 2.0
    var borderColor = UIColor.white.cgColor
    
    @IBInspectable var titleText: String? {
        didSet {
            self.setTitle(titleText, for: .normal)
            self.setTitleColor(UIColor.black,for: .normal)
        }
    }
    
    override init(frame: CGRect){
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setup()
    }
    
 
    
    func setup() {
        self.clipsToBounds = true
        self.layer.cornerRadius = self.frame.size.width / 2.0
        self.layer.borderColor = borderColor
        self.layer.borderWidth = borderWidth
    }
}
