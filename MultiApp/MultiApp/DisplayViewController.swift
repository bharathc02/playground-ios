//
//  DisplayViewController.swift
//  StoryboardsControllersLayouts
//
//  Created by Chandramouli, Bharath Kumar on 10/18/16.
//  Copyright © 2016 Chandramouli, Bharath Kumar. All rights reserved.
//

import UIKit

class DisplayViewController: UIViewController {

    var userNameStr:String?
    var passwordStr:String?
    
    
//    init(userName:String, password:String) {
//        self.userNameStr = userName
//        self.passwordStr = password
//    }

    @IBOutlet var userNameTextField: UILabel!
    @IBOutlet var passwordTextField: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        userNameTextField.text = userNameStr
        passwordTextField.text = passwordStr
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
