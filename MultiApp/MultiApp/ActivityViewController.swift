//
//  Activity.swift
//  MultiApp
//
//  Created by Chandramouli, Bharath Kumar on 11/28/16.
//  Copyright © 2016 Chandramouli, Bharath Kumar. All rights reserved.
//


import UIKit

class ActivityViewController: UIViewController {
    @IBOutlet var activity: UIActivityIndicatorView!
    
    @IBAction func stop(_ sender: AnyObject) {
        activity.stopAnimating()
    }
    @IBAction func start(_ sender: AnyObject) {
        activity.startAnimating()
    }
}
