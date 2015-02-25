//
//  ViewController.swift
//  example
//
//  Created by Miso Korkiakoski on 25/02/15.
//  Copyright (c) 2015 drunkcoding. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textInput: UITextField!
    @IBOutlet var label: UILabel!
    @IBAction func buttonPressed(sender: AnyObject) {
        label.text = textInput.text!
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        println("Hello world!")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

