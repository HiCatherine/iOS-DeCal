//
//  Q3.swift
//  XcodeTour
//
//  Created by 胡宇瑶 on 9/12/18.
//  Copyright © 2018 org.iosdecal. All rights reserved.
//

import UIKit

class FunnyViewController: UIViewController {
    @IBOutlet weak var funnyLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        funnyLabel.text = "i am a view controller with a class set 😊"
    }
}
