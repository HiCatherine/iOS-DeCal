//
//  NiceWorkViewController.swift
//  XcodeTour
//
//  Created by Akilesh Bapu on 1/30/17.
//  Modifications by Chris Zielinski.
//  Copyright © 2017 org.iosdecal. All rights reserved.
//

import UIKit

class NiceWorkViewController: UIViewController {
    
    @IBOutlet var textLabel: UILabel!
    var textToDisplay: [String] = []
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        if textToDisplay.count > 0 {
            let strToDisplay = textToDisplay[0]
            if strToDisplay.isEmpty {
                textLabel.text = "Not Quite! Please Try again"
            } else {
                textLabel.text = "Nice work, Move on to the next stage!"
            }
        } else {
            textLabel.text = "Not Quite! Please Try again"
        }

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
