//
//  CustomUITextField.swift
//  Demo app
//
//  Created by Jay Shah on 27/04/22.
//

import Foundation
import UIKit

class CustomUITextField: UITextField{
    
    var textPadding = UIEdgeInsets(
        top: 12,
        left: 15,
        bottom: 13,
        right: 15
    )
    
    func setupUiTextField() {
        self.layer.cornerRadius = 20
        self.clipsToBounds = true
        self.layer.borderWidth = 0
        self.backgroundColor = UIColor.blue
        self.attributedPlaceholder = NSAttributedString(string:self.placeholder ?? "", attributes: [NSAttributedString.Key.foregroundColor :UIColor.blue])
        
    }
    
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        let rect = super.textRect(forBounds: bounds)
        return rect.inset(by: textPadding)
    }
    
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        let rect = super.editingRect(forBounds: bounds)
        return rect.inset(by: textPadding)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUiTextField()
    }
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupUiTextField()
    }
}
