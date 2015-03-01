//
//  ViewController.swift
//  navigationBars
//
//  Created by Miso Korkiakoski on 01/03/15.
//  Copyright (c) 2015 drunkcoding. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var timer = NSTimer()
    var count = 1
    
    @IBOutlet weak var seconds: UILabel!
    
    func result() {
        println(count)
        seconds.text = String(count++)
    }
    
    @IBAction func stop(sender: AnyObject) {
        timer = NSTimer()
    }
    
    @IBAction func start(sender: AnyObject) {
        println("start")
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("result"), userInfo: nil, repeats: true)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

