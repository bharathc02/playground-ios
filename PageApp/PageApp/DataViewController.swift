//
//  DataViewController.swift
//  PageApp
//
//  Created by Chandramouli, Bharath Kumar on 10/20/16.
//  Copyright © 2016 Chandramouli, Bharath Kumar. All rights reserved.
//

import UIKit

class DataViewController: UIViewController {

    @IBOutlet weak var dataLabel: UILabel!
    var dataObject: String = ""

    @IBOutlet var webView: UIWebView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.dataLabel!.text = dataObject
        var url = NSURL (string: "https://www.apple.com")!
        if (dataObject == "Apple") {
            url = NSURL (string: "https://www.apple.com")!
        } else if (dataObject == "Google") {
            url = NSURL (string: "https://www.google.com/gmail/about/")!
        } else if (dataObject == "Yahoo") {
            url = NSURL (string: "https://in.yahoo.com/?p=us")!
        }
        //let url = NSURL (string: "https://www.apple.com")
        let requestObj = NSURLRequest(url: url as URL);
        webView.loadRequest(requestObj as URLRequest)
        
    }


}

