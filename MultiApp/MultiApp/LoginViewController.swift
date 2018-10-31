//
//  LoginViewController.swift
//  StoryboardsControllersLayouts
//
//  Created by Chandramouli, Bharath Kumar on 10/18/16.
//  Copyright © 2016 Chandramouli, Bharath Kumar. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    @IBAction func resetButton(_ sender: UIButton) {
        userNameTextField.text? = ""
        passwordTextField.text? = ""
    }
    
    @IBAction func loginButton(_ sender: UIButton) {
        // Instantiate SecondViewController
        let displayViewController = self.storyboard?.instantiateViewController(withIdentifier: "DisplayViewController") as!DisplayViewController
        
        // Set "Hello World" as a value to myStringValue
        displayViewController.userNameStr = userNameTextField.text
        displayViewController.passwordStr = passwordTextField.text
        
        // Take user to SecondViewController
        self.navigationController?.pushViewController(displayViewController, animated: true)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

