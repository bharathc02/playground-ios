//
//  NotifyDetailViewController.swift
//  MultiApp
//
//  Created by Chandramouli, Bharath Kumar on 12/1/16.
//  Copyright © 2016 Chandramouli, Bharath Kumar. All rights reserved.
//

import UIKit

class NotifyDetailViewController: UIViewController {

    @IBOutlet var notifiedButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(forName: NSNotification.Name(rawValue: "myNotification"), object: nil, queue: nil) {(notification) in
            print("Notification Received")
            self.notifiedButton.isHidden = false
            self.notifiedButton.setTitleColor(UIColor.red, for: UIControlState.normal)
        }
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
