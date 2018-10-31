//
//  NSCodingViewController.swift
//  MultiApp
//
//  Created by Chandramouli, Bharath Kumar on 11/30/16.
//  Copyright © 2016 Chandramouli, Bharath Kumar. All rights reserved.
//

import UIKit

class NSCodingViewController: UIViewController {

    var data = [Employee]()
    
    @IBAction func save(_ sender: AnyObject) {
        let nEmployee = Employee(fName: "Bharath", lName: "C")
        saveData(employee: nEmployee)
    }
    
    @IBAction func load(_ sender: AnyObject) {
        loadData()
    }
    
    var filePath:String {
        let manager = FileManager.default
        let url = manager.urls(for: .documentDirectory, in: .userDomainMask).first
        return url!.appendingPathComponent("Data").path
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    private func saveData(employee:Employee) {
        print(filePath)
        data.append(employee)
        NSKeyedArchiver.archiveRootObject(data, toFile: filePath)
    }

    
    private func loadData() {
//        if let ourData = NSKeyedUnarchiver.unarchiveObject(with: filePath) as? [Employee] {
//            data = ourData
//        }
        if let ourData = NSKeyedUnarchiver.unarchiveObject(withFile: filePath) as? [Employee]{
            data = ourData
        }
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
