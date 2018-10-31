//
//  UserDefaultsViewController.swift
//  MultiApp
//
//  Created by Chandramouli, Bharath Kumar on 11/30/16.
//  Copyright © 2016 Chandramouli, Bharath Kumar. All rights reserved.
//

import UIKit

class UserDefaultsViewController: UIViewController {

    @IBOutlet var text1: UITextField!
    @IBOutlet var text2: UITextField!
    @IBOutlet var text3: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let stored = UserDefaults.standard.value(forKey: "flag")
        print(stored!)
        if let path = Bundle.main.path(forResource: "fruits", ofType: "plist") {
            if let contents = NSDictionary(contentsOfFile: path) {
                print(contents)
            } else {
                print("no contents")
            }
        } else {
            print("no file")
        }
        
        text1.text = UserDefaults.standard.value(forKey: "text1") as! String?
        text2.text = UserDefaults.standard.value(forKey: "text2") as! String?
        text3.text = UserDefaults.standard.value(forKey: "text3") as! String?
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        UserDefaults.standard.set(text1.text, forKey: "text1")
        UserDefaults.standard.set(text2.text, forKey: "text2")
        UserDefaults.standard.set(text3.text, forKey: "text3")
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
