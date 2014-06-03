//
//  ViewController.swift
//  SwiftTest
//
//  Created by jl on 3/06/2014.
//  Copyright (c) 2014 Josh Lapham. All rights reserved.
//

import UIKit

class ViewController: UITableViewController, UIAlertViewDelegate {
                            
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "List"
    }
    
    // UITableView delegate methods
    override func numberOfSectionsInTableView(tableView: UITableView!) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    override func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell! {
        let cell = tableView.dequeueReusableCellWithIdentifier("TableCell", forIndexPath: indexPath) as UITableViewCell
        
        cell.textLabel.text = "This is row \(indexPath.row)"
        
        return cell
    }
    
    override func tableView(tableView: UITableView!, didSelectRowAtIndexPath indexPath: NSIndexPath!) {
        // Pass row number to showMyAlert function and show alert
        self.showMyAlert(indexPath.row)
    }
    
    // UIAlertView delegate methods
    func alertView(alertView: UIAlertView!, didDismissWithButtonIndex buttonIndex: Int) {
        NSLog("Did dismiss button: %d", buttonIndex)
    }
    
    // Function to init a UIAlertView and show it
    func showMyAlert(rowToUseInAlert: NSInteger!) {
        var myAlert = UIAlertView()
        
        myAlert.delegate = self
        myAlert.title = "Alert!"
        myAlert.message = "You selected row \(rowToUseInAlert)"
        myAlert.addButtonWithTitle("Cancel")
        myAlert.addButtonWithTitle("OK")
        
        myAlert.show()
    }
}

