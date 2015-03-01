//
//  ViewController.swift
//  timestable
//
//  Created by Miso Korkiakoski on 01/03/15.
//  Copyright (c) 2015 drunkcoding. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate {

    @IBOutlet weak var sliderValue: UISlider!
    
    @IBOutlet weak var table: UITableView!
    @IBAction func sliderMoved(sender: AnyObject) {
        table.reloadData()
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "cell")
        let timesTable = Int(sliderValue.value)
        cell.textLabel?.text = String(timesTable * (indexPath.row + 1))
        return cell
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

