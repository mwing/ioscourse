//
//  ViewController.swift
//  stopwatch
//
//  Created by Miso Korkiakoski on 01/03/15.
//  Copyright (c) 2015 drunkcoding. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var timer = NSTimer()
    var counter = 0
    var minutes = 0
    var hours = 0
    
    func result() {
        counter++
        if counter >= 60 {
            counter = 0
            minutes++
        }
        if minutes >= 60 {
            minutes = 0
            hours++
        }
        label.text = "\(padded(hours)):\(padded(minutes)):\(padded(counter))"
    }

    func padded(num:Int)->String {
        if num < 10 {
            return "0\(num)"
        }
        return "\(num)"
    }
    
    @IBOutlet weak var label: UILabel!
    @IBAction func stop(sender: AnyObject) {
        resetAll()
    }
    @IBAction func start(sender: AnyObject) {
        if timer.timeInterval == 0.0 {
            timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("result"), userInfo: nil, repeats: true)
        }
    }
    
    func resetAll() {
        timer.invalidate()
        timer = NSTimer()
        resetCount()
    }
    
    func resetCount() {
        counter = 0
        minutes = 0
        hours = 0
        label.text = "00:00:00"
    }
    
    @IBAction func reset(sender: AnyObject) {
        resetCount()
    }
    
    @IBOutlet weak var pauseItem: UIBarButtonItem!
    @IBAction func pause(sender: AnyObject) {
        if timer.timeInterval == 0.0 {
            timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("result"), userInfo: nil, repeats: true)
            pauseItem.title = "pause"
        } else {
            timer.invalidate()
            timer = NSTimer()
            pauseItem.title = "resume"
        }
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

