//
//  TextViewController.swift
//  PupProfile
//
//  Created by Paige Plander on 2/19/17.
//  Copyright © 2017 Paige Plander. All rights reserved.
//

import UIKit

class TextViewController: UIViewController {

    /// The label that displays the user's "nameToDisplay"
    @IBOutlet weak var nameLabel: UILabel!
    
    /// The text to be displayed in the nameLabel (default set to "Hasn't been set")
    var stringToDisplay = "Hasn't been set 😟"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // once the view has loaded, set the nameLabel's text to the name we want to display
        nameLabel.text = stringToDisplay
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
