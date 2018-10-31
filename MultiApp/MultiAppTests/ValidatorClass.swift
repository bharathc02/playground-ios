//
//  ValidatorClass.swift
//  MultiApp
//
//  Created by Chandramouli, Bharath Kumar on 12/1/16.
//  Copyright © 2016 Chandramouli, Bharath Kumar. All rights reserved.
//

import XCTest

class ValidatorClass: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    func testIsEmailValid() {
        let _valid = ["a@gmail.com","b@gmail.com","c@gmail.com"]
        let _invalid = ["123@gmailcom","$$@gmail.co", "!!"]
        
        for email in _valid {
            XCTAssertEqual(Validator.isEmailValid(email: email), true)
        }
        for email in _invalid {
            XCTAssertEqual(Validator.isEmailValid(email: email), false)
        }
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
}
