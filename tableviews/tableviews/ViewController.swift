//
//  ViewController.swift
//  tableviews
//
//  Created by Miso Korkiakoski on 01/03/15.
//  Copyright (c) 2015 drunkcoding. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate {

    var cells = ["Mike", "Jack", "Jill", "June"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cells.count
    }
  
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "cell")
        cell.textLabel?.text = cells[indexPath.row]
        return cell
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

