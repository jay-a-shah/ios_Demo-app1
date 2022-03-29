//
//  ImageViewController.swift
//  Demo app
//
//  Created by Jay Shah on 08/03/22.
//

import UIKit

class ImageViewController: UIViewController {
    
    //MARK: - Outlets
    @IBOutlet weak var imageView: UIImageView!
   
    //MARK: - View LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.layer.cornerRadius = 75
    }
}

//MARK: - UIImagePickerControllerDelegate
extension ImageViewController: UIImagePickerControllerDelegate{
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        guard let image = info[.editedImage] else{
            return
        }
        self.imageView.image = image as? UIImage
        dismiss(animated: true, completion: nil)
    }
}

//MARK: - UINavigationControllerDelegate
extension ImageViewController: UINavigationControllerDelegate{
}

//MARK: - Outlet Action
extension ImageViewController{
    
    @IBAction func pickImage(_ sender: UIButton) {
        let imagePicker = UIImagePickerController()
        imagePicker.sourceType = .photoLibrary
        imagePicker.allowsEditing = true
        imagePicker.delegate = self
        self.present(imagePicker, animated: true, completion: nil)
    }
}
