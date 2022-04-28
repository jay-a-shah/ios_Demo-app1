//
//  UiViewController.swift
//  Demo app
//
//  Created by Jay Shah on 27/04/22.
//

import Foundation
import UIKit

extension UIViewController {
    func alert (customMessage: String){
        let alert = UIAlertController(title: "UIAlertController", message: customMessage, preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Continue", style: UIAlertAction.Style.default, handler: nil))
        alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertAction.Style.cancel, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
    func hideKeyboardWhenTapAround () {
          let tap = UITapGestureRecognizer(target: view, action: #selector(UIView.endEditing))
          view.addGestureRecognizer(tap)
      }
}
