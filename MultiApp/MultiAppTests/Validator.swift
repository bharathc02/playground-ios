//
//  Validator.swift
//  MultiApp
//
//  Created by Chandramouli, Bharath Kumar on 12/1/16.
//  Copyright © 2016 Chandramouli, Bharath Kumar. All rights reserved.
//

import XCTest

class Validator: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    public static func isEmailValid(email:String) -> Bool {
        let reg = "^[A-Z0-9a-z\\._%+-]+@([A-Za-z0-9-]+\\.)+[A-Za-z]{2,4}$";
        let emailCheck = NSPredicate(format: "SELF MATCHES %@", reg);
        return emailCheck.evaluate(with: email)
    }
}
