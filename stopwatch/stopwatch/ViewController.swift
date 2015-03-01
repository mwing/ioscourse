//
//  ViewController.swift
//  stopwatch
//
//  Created by Miso Korkiakoski on 01/03/15.
//  Copyright (c) 2015 drunkcoding. All rights reserved.
//

import UIKit
import AVFoundation

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
            playSound()
        }
        if minutes >= 60 {
            minutes = 0
            hours++
        }
        label.text = "\(padded(hours)):\(padded(minutes)):\(padded(counter))"
    }

    func playSound() {
        if (alarm.on) {
            minuteSound.play()
        }
    }
    
    var coinSound = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("coin-drop-1", ofType: "wav")!)
    var tick = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("tick", ofType: "wav")!)
    var minuteSound = AVAudioPlayer()
    var ticking = AVAudioPlayer()
    
    @IBOutlet weak var alarm: UISwitch!
    
    @IBAction func alarmToggle(sender: AnyObject) {
        if alarm.on && ticking.playing == false {
            ticking.play()
        } else if alarm.on == false && ticking.playing {
            ticking.pause()
        }
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
            if alarm.on { ticking.play() }
        }
    }
    
    func resetAll() {
        timer.invalidate()
        timer = NSTimer()
        resetCount()
        ticking.pause()
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
            if (alarm.on) { ticking.play() }
        } else {
            timer.invalidate()
            timer = NSTimer()
            pauseItem.title = "resume"
            if (alarm.on) { ticking.pause() }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        minuteSound = AVAudioPlayer(contentsOfURL: coinSound, error: nil)
        minuteSound.prepareToPlay()
        ticking = AVAudioPlayer(contentsOfURL: tick, error: nil)
        ticking.numberOfLoops = -1
        ticking.prepareToPlay()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

