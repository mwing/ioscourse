//
//  ViewController.swift
//  How Many Fingers
//
//  Created by Miso Korkiakoski on 25/02/15.
//  Copyright (c) 2015 drunkcoding. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var fingers: Int!
    @IBOutlet weak var guess: UITextField!
    @IBAction func guessAction(sender: AnyObject) {
        var guessedNumber = guess.text.toInt()
        if guessedNumber != nil {
            if (fingers == guessedNumber) {
                answer.text = "Correct!"
            } else {
                answer.text = "Wrong, it was \(fingers) fingers"
            }
        } else {
            answer.text = "Please enter a number from 0 to 5"
        }
        fingers = getRandomNumber()
    }
    func getRandomNumber()-> Int {
        return Int(arc4random_uniform(5))
    }
    
    @IBOutlet weak var answer: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fingers = getRandomNumber()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

