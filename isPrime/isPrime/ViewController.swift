//
//  ViewController.swift
//  isPrime
//
//  Created by Miso Korkiakoski on 01/03/15.
//  Copyright (c) 2015 drunkcoding. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numberInput: UITextField!
    @IBAction func checkAction(sender: AnyObject) {
        var number = numberInput.text.toInt()
        if number != nil && number! > 0 {
            if (ViewController.isPrime(number!)) {
                output.text = "Number \(number!) is prime"
            }
            else {
                output.text = "Number \(number!) is not prime"
            }
        } else {
            output.text = "Please enter a positive number"
        }
    }

    @IBOutlet weak var output: UILabel!
    class func isPrime(num: Int) -> Bool {
        if num == 2 { return true }
        for var i = num - 1; i > 1; i-- {
            if num % i == 0 {
                return false
            }
        }
        return true
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

