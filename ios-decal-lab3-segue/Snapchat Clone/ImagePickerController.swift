//
//  ImagePickerController.swift
//  Snapchat Clone
//
//  Created by Akilesh Bapu on 2/27/17.
//  Copyright © 2017 org.iosdecal. All rights reserved.
//

import UIKit

/// Grid of images - in a future assignment, you'll be replacing this view controller with a camera
class ImagePickerController: UIViewController {
    
    @IBOutlet var imageCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.barTintColor = UIColor(red: 0, green: 0.8196, blue: 0.9294, alpha: 1.0)
        navigationController?.navigationBar.tintColor = UIColor.white
        imageCollectionView.collectionViewLayout = ImageFlowLayout()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    /// This method is called every time a image cell is tapped. You'll
    /// need to use pass the `image` parameter in some way to the
    /// ImagePreviewViewController
    ///
    /// - Parameter image: UIImage displayed in the selected cell
    func selectImage(_ image: UIImage) {
        // TODO: take this image and display it in a new view controller
        performSegue(withIdentifier: "goToPreview", sender: image)
    }
    
    /// TODO: override prepareForSegue to pass the selected image over to the next view
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination as? ImagePreviewViewController {
            if let image = sender as? UIImage {
                vc.image = image
            }
        }
    }
    
    @IBAction func unwindToPicker(segue: UIStoryboardSegue) { }

}
