//
//  ViewController.swift
//  FlickTransitionDemo
//
//  Created by paul on 16/9/18.
//  Copyright © 2016年 paul. All rights reserved.
//

import UIKit
import FlickTransition

class ViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
        var rect = tableView.rectForRowAtIndexPath(indexPath)
        rect = tableView.convertRect(rect, toView: view)
        FlickTransitionCoordinator.sharedCoordinator.presentViewController(WebViewController(), presentOriginFrame: rect)
    }
}

