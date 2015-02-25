//
//  ViewController.swift
//  cat years
//
//  Created by Miso Korkiakoski on 25/02/15.
//  Copyright (c) 2015 drunkcoding. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var ageInput: UITextField!
    @IBAction func ageButton(sender: AnyObject) {
        var age = ageInput.text.toInt()
        if age != nil {
            var catAge = countAge(age!)
            ageLabel.text = "Your cat is \(catAge) years old"
        } else {
            ageLabel.text = "Enter your cat's age in full years"
        }
    }
    
    func countAge(age: Int) -> Int {
        if (age == 0) { return 0 }
        if (age == 1) { return 15 }
        if (age == 2) { return 25 }
        return ((age-2) * 4) + 25
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        ageLabel.text = ""
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

