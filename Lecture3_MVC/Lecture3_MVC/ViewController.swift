//
//  ViewController.swift
//  Lecture3_MVC
//
//  Created by Shreenithi Narayanan on 9/17/18.
//  Copyright © 2018 iOS DeCal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var countLabel: UILabel!
    @IBOutlet weak var dayLabel: UILabel!
    let model: Model = Model()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func updateLabel(_ sender: Any) {
        model.count += 1
        countLabel.text = String(model.count)
        
        var index = Int(arc4random_uniform(UInt32(model.days.count)))
        dayLabel.text = model.days[index]
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

