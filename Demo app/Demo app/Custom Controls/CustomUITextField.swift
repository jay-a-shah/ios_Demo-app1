//
//  CustomUITextField.swift
//  Demo app
//
//  Created by Jay Shah on 27/04/22.
//

import Foundation
import UIKit

@IBDesignable
class CustomUITextField: UITextField{
    	
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    
    }
    // Provides left padding for images
     override func leftViewRect(forBounds bounds: CGRect) -> CGRect {
         var textRect = super.leftViewRect(forBounds: bounds)
         textRect.origin.x += leftPadding
         return textRect
     }
     
     @IBInspectable var leftImage: UIImage? {
         didSet {
             updateLeftView()
         }
     }
     
     @IBInspectable var leftPadding: CGFloat = 0
     
     @IBInspectable var color: UIColor = UIColor.lightGray {
         didSet {
             updateLeftView()
         }
     }
     
     func updateLeftView() {
         if let image = leftImage {
             leftViewMode = UITextField.ViewMode.always
             let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 20, height: 20))
             imageView.contentMode = .scaleAspectFill
             imageView.image = image
             // Note: In order for your image to use the tint color, you have to select the image in the Assets.xcassets and change the "Render As" property to "Template Image".
             imageView.tintColor = color
             leftView = imageView
         } else {
             leftViewMode = UITextField.ViewMode.never
             leftView = nil
         }
         
         // Placeholder text color
         attributedPlaceholder = NSAttributedString(string: placeholder != nil ?  placeholder! : "", attributes:[NSAttributedString.Key.foregroundColor: color])
     }
 }

