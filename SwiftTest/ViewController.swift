//
//  ViewController.swift
//  SwiftTest
//
//  Created by jl on 3/06/2014.
//  Copyright (c) 2014 Josh Lapham. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
                            
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "List"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView!) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    override func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell! {
        let cell = tableView.dequeueReusableCellWithIdentifier("TableCell", forIndexPath: indexPath) as UITableViewCell
        
        cell.textLabel.text = "Current row is \(indexPath.row)"
        
        return cell
    }
}

