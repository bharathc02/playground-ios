//
//  ViewController.swift
//  CoreDataNew
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
        
        do {
            let result = try perContext.fetch(Cars.fetchRequest())
            
            var carN = result as! [Cars]
            carN.removeAll()
        } catch {
            print(error.localizedDescription)
        }
        
        let car = Cars(context:perContext)
        car.brand = "Audi"
        car.type = "Sedan"
        
        appDel.saveContext()
        
//        car.brand = "BMW"
//        car.type = "SUV"
//        appDel.saveContext()
        do {
            let result = try perContext.fetch(Cars.fetchRequest())
            
            var carN = result as! [Cars]
//            carN.removeAll()
            for c in carN {
                print("my car")
                print(c.brand)
                print(c.type)
            }
        } catch {
            print(error.localizedDescription)
        }
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

