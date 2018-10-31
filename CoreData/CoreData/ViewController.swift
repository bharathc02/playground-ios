//
//  ViewController.swift
//  CoreData
//
//  Created by Chandramouli, Bharath Kumar on 11/30/16.
//  Copyright © 2016 Chandramouli, Bharath Kumar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let appDel = (UIApplication.shared.delegate) as! AppDelegate
        let perContext = appDel.persistentContainer.viewContext
        
        let car = Cars(context:perContext)
        car.brand = "Audi"
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

