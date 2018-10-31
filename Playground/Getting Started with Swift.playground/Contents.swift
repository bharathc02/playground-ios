import UIKit
//Assignment 1
var people: [[String:String]] = [
    [
        "firstName": "Anil",
        "lastName": "Kapoor" ],
    [
        "firstName": "Akshay",
        "lastName": "Kumar" ],
    [
        "firstName": "Sunil",
        "lastName": "Shetty" ],
    [
        "firstName": "Tushar",
        "lastName": "Kapoor"
    ],
    [
        "firstName": "Vinod",
        "lastName": "Khanna"
    ]
]

var fullName: [String] = []
fullName.reserveCapacity(people.count)
for names in people {
    var fName:String = ""
    var lName:String = ""
    for name in names {
        switch(name.key) {
            case "firstName":
                fName = name.value
                break
            case "lastName":
                lName = name.value
                break
        default:
            break
        }
    }
    fullName.append(fName + " " + lName)
}

print(fullName)


//Assignment 2
class DummyClass {
    var intA:Int
    var intB:Int
    
    init(_ intA:Int,_ intB:Int) {
        self.intA = intA
        self.intB = intB
    }
    
    func printNumbers() {
        print("First Number: " + String(intA))
        print("Second Number: " + String(intB))
    }
}

var d1:DummyClass = DummyClass(1, 2)
d1.printNumbers()

var d2:DummyClass = DummyClass(11, 44)
d2.printNumbers()