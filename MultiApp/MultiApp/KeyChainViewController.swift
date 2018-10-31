//
//  DependencyViewController.swift
//  MultiApp
//
//  Created by Chandramouli, Bharath Kumar on 11/28/16.
//  Copyright © 2016 Chandramouli, Bharath Kumar. All rights reserved.
//

import UIKit
import SwiftKeychainWrapper
import LocalAuthentication

let defUsername="u1"
let defPassword="p1"
class KeyChainViewController: UIViewController {

    @IBOutlet var username: UITextField!
    @IBOutlet var password: UITextField!
    
    @IBOutlet var saveUser: UISwitch!
    @IBOutlet var touchID: UISwitch!
    
    
    @IBAction func login(_ sender: AnyObject) {
        if(username.text == defUsername && password.text == defPassword) {
            if(saveUser.isOn) {
                let _saveUserSuccessfull:Bool = KeychainWrapper.standard.set(username.text!, forKey: "username")
                let _savePassSuccessfull:Bool = KeychainWrapper.standard.set(password.text!, forKey: "password")
                if(_saveUserSuccessfull && _savePassSuccessfull) {
                    let alert = UIAlertController(title: "Logged in", message: "User info saved", preferredStyle: .alert)
                    let okAction = UIAlertAction(title: "Okay", style: .default, handler: nil)
                    alert.addAction(okAction)
                    self.present(alert, animated: true, completion: nil)
                } else {
                    let alert = UIAlertController(title: "Sorry", message: "User info is not saved", preferredStyle: .alert)
                    let okAction = UIAlertAction(title: "Okay", style: .default, handler: nil)
                    alert.addAction(okAction)
                    self.present(alert, animated: true, completion: nil)
                }
            } else {
                let alert = UIAlertController(title: "Logged in", message: "User info is not saved", preferredStyle: .alert)
                let okAction = UIAlertAction(title: "Okay", style: .default, handler: nil)
                alert.addAction(okAction)
                self.present(alert, animated: true, completion: nil)
            }
        } else {
            let alert = UIAlertController(title: "Sorry", message: "Wrong User info", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "Okay", style: .default, handler: nil)
            alert.addAction(okAction)
            self.present(alert, animated: true, completion: nil)
        }
    }
    
    @IBAction func remove(_ sender: AnyObject) {
        let _removeUserSuccess:Bool = KeychainWrapper.standard.removeObject(forKey: "username")
        let _removePassSuccess:Bool = KeychainWrapper.standard.removeObject(forKey: "password")
        
        if(_removeUserSuccess && _removePassSuccess) {
            let alert = UIAlertController(title: "Success", message: "User info removed", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "Okay", style: .default, handler: nil)
            alert.addAction(okAction)
            self.present(alert, animated: true, completion: nil)
        } else {
            let alert = UIAlertController(title: "Sorry", message: "User info is not removed", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "Okay", style: .default, handler: nil)
            alert.addAction(okAction)
            self.present(alert, animated: true, completion: nil)
        }
    }
    
    @IBAction func touchIDAction(_ sender: AnyObject) {
        authUsingTouchID()
    }
    func authUsingTouchID() {
        let authContext = LAContext()
        let authReason = "Please use Touch ID to Sign in"
        var authError:NSError?
        
        if(authContext.canEvaluatePolicy(LAPolicy.deviceOwnerAuthenticationWithBiometrics, error: &authError)) {
            authContext.evaluatePolicy(LAPolicy.deviceOwnerAuthenticationWithBiometrics, localizedReason: authReason, reply: {(success, error) in
                
                if(success) {
                    print("Auth Pass")
                    let alert = UIAlertController(title: "Success", message: "Auth valid", preferredStyle: .alert)
                    let okAction = UIAlertAction(title: "Okay", style: .default, handler: nil)
                    alert.addAction(okAction)
                    self.present(alert, animated: true, completion: nil)
                    DispatchQueue.main.async{
                        
                    }
                } else {
                    print("Auth Fail")
                    let alert = UIAlertController(title: "Sorry", message: "Auth invalid", preferredStyle: .alert)
                    let okAction = UIAlertAction(title: "Okay", style: .default, handler: nil)
                    alert.addAction(okAction)
                    self.present(alert, animated: true, completion: nil)
                }
            })
        }
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()

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
