//
//  ViewController.swift
//  PRA
//
//  Created by Pranesh Vallabh on 01/06/2023.
//  Copyright (c) 2023 Pranesh Vallabh. All rights reserved.
//

import UIKit
import PRA

class ViewController: UIViewController {

    @IBOutlet var textlabel: TextLabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        textlabel.addInfo("ddddd")
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

