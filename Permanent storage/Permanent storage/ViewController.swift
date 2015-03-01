//
//  ViewController.swift
//  Permanent storage
//
//  Created by Miso Korkiakoski on 01/03/15.
//  Copyright (c) 2015 drunkcoding. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func save(sender: AnyObject) {
        if text.text != nil {
            NSUserDefaults.standardUserDefaults().setObject(text.text!, forKey: "name")
            label.text = text.text!
        }
    }
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var text: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let userName: AnyObject? = NSUserDefaults.standardUserDefaults().objectForKey("name")
        if userName != nil {
            label.text = "\(userName!)"
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

