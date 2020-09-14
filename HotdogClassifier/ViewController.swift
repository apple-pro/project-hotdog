//
//  ViewController.swift
//  HotdogClassifier
//
//  Created by StartupBuilder.INFO on 9/14/20.
//  Copyright © 2020 StartupBuilder.INFO. All rights reserved.
//

import UIKit
import CoreML
import Vision

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    let imagePicker = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imagePicker.delegate = self
        imagePicker.sourceType = .camera
        imagePicker.allowsEditing = false
    }

    @IBAction func cameraTapped(_ sender: UIBarButtonItem) {
        
        present(imagePicker, animated: true, completion: nil)
    }
    
}

extension ViewController: UIImagePickerControllerDelegate {
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        if let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            imageView.image = image
        }
        
        imagePicker.dismiss(animated: true, completion: nil)
    }
}

extension ViewController: UINavigationControllerDelegate {
    
}
