//
//  DetailViewController.swift
//  SplitViewApp
//
//  Created by Chandramouli, Bharath Kumar on 10/20/16.
//  Copyright © 2016 Chandramouli, Bharath Kumar. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet var displayLabel: UILabel!
    var displayStr:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        displayLabel.text = displayStr
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
