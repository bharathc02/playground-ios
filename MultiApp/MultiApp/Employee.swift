//
//  Coding.swift
//  MultiApp
//
//  Created by Chandramouli, Bharath Kumar on 11/30/16.
//  Copyright © 2016 Chandramouli, Bharath Kumar. All rights reserved.
//

import Foundation

class Employee:NSObject, NSCoding {
    var fName = ""
    var lName = ""
    
    init(fName: String, lName:String) {
        self.fName = fName;
        self.lName = lName;
    }
    
    public func encode(with aCoder: NSCoder) {
        aCoder.encode(fName, forKey: "fName")
        aCoder.encode(lName, forKey: "lName")
    }
    
    public required init?(coder aDecoder: NSCoder) {
        if let fNameObj = aDecoder.decodeObject(forKey: "fName") as? String {
            fName = fNameObj
        }
        if let lNameObj = aDecoder.decodeObject(forKey: "lName") as? String {
            lName = lNameObj
        }
    }
    
    var firstName:String {
        get {
            return fName;
        }
        set {
            fName = newValue;
        }
    }
    
    
    var lastName:String {
        get {
            return lName;
        }
        set {
            lName = newValue;
        }
    }
}
