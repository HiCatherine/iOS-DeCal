//
//  ViewController.swift
//  PupProfile
//
//  Created by Paige Plander on 2/19/17.
//  Copyright © 2017 Paige Plander. All rights reserved.
//

import UIKit

class MainViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var previewImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func unwindToMainViewController(segue: UIStoryboardSegue) {
        
    }

    /// Opens the user's library, allowing them to choose a photo
    ///
    /// - Parameter sender: The "Add Photo From Library" Button
    @IBAction func chooseFromLibrary(_ sender: UIButton) {
        if UIImagePickerController.isSourceTypeAvailable(UIImagePickerControllerSourceType.photoLibrary) {
            let imagePicker = UIImagePickerController()
            imagePicker.delegate = self
            imagePicker.sourceType = UIImagePickerControllerSourceType.photoLibrary;
            imagePicker.allowsEditing = true
            self.present(imagePicker, animated: true, completion: nil)
        }
    }
    
    /// Sets the Image View's image to the one chosen by the user
    ///
    /// - Parameters:
    ///   - picker: The image picker (user's library)
    ///   - info: data needed to create the image
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        let selectedImage = info[UIImagePickerControllerOriginalImage] as! UIImage
        previewImageView.image = selectedImage
        dismiss(animated: true, completion: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToPhoto" {
            if let vc = segue.destination as? PhotoViewController {
                vc.imageToDisplay = previewImageView.image
            }
        }
        
        if segue.identifier == "goToName" {
            if let vc = segue.destination as? TextViewController {
                vc.stringToDisplay = nameTextField.text ?? ""
            }
        }
    }
}

