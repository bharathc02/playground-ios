//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var icon = UIImage(named: "BOMiconUpdated.png")

print(str)
var out = ""
var tempInt = 1

let index = 111

for index in 1...2 {
    // print(index)
    out += String(index)
    let y = index * tempInt
    tempInt  +=  1
}
print(out)

class Dummy {
    var name:String = "hello"
    
    init(name:String) {
        self.name = name
    }
}

var d1 = Dummy(name: "BB")
var d2 = Dummy(name: "BB")
print(d1.name)

var str1:String?
var str2:String!
var str3:String

str1 = "He1"
// str2 = "He2"
str3 = "He3"

if str1 != nil {
    print("str1 is \(str1!)")
}
print("")
print("str2 is \(str2)")
print("str3 is \(str3)")


for index in 1...2 {
    print(index)
}

// var str = "Hello, playground"
//type(of:str3)
//print(type(of: str1))

if(d1 === d2) {
    print(str1)
}


// Structure



class DummyClass {
    var name:String = "hello"
    init() {
        
    }
    init(name:String) {
        self.name = name
    }
    
    func printName() {
        print(self.name)
    }
}
var d3 = DummyClass(name: "NOOOOOO")
var d5 = DummyClass(name: "NOOOOOO")
d3.printName()
d3.name
var d4 = d3

d3 === d4
d3 === d5

struct DummyStruct {
    var name:String = "hello"
}

var dummyStruct = DummyStruct(name: "YESSSSSS")
dummyStruct.name
var dummyStruct2 = dummyStruct
// dummyStruct === dummyStruct2

// Function

func dummyFunc(data:Int, name:String, commonAge age:Int) -> Void {
    print(data)
    print(name)
    print(age)
}

dummyFunc(data: 1, name : "YO", commonAge : 23)

func calculate(_ intA : Int,_ intB : Int) -> (squareA : Int, squareB : Int) {
    let sqA = intA * intA
    let sqB = intB * intB
    return (sqA, sqB)
}


var a = calculate(2, 3)

func swap(intA:inout Int, intB:inout Int) {
    let temp = intA
    intA = intB
    intB = temp
}

var a1 = 1
var b1 = 2
swap(intA : &a1, intB : &b1)


// Arrays

var names = ["0", "1", "2", "3"]
names.count
names[0..<2]
names[0...2]
names[2] = "2a"
names.append("4")
names.remove(at: 2)
names.insert("2", at: 2)
names.removeLast(1)
//names.removeAll(keepingCapacity: true)
names.reserveCapacity(10)
names[3]
names.append("4")


var namesDict = [
    0: "0",
    1: "1",
    2: "2",
    3: "3"
]
namesDict.count
namesDict[4] = "4"
namesDict.count
namesDict.updateValue("3", forKey: 3)
namesDict

var namesDict2 = namesDict
var it1 = namesDict.makeIterator()

namesDict == namesDict2

// Generics
func testGenerics<T>(_ a:T,_ b:T) {
    print(a)
    print(b)
    print(type(of: a))
    print(type(of: b))
}

testGenerics("1", "2")

// Protocol

protocol MyNumb {
    func multiply(_ a:Int, _ b:Int) -> Int
    func multiply2(_ a:Int, _ b:Int) -> Int
}

class Numb:MyNumb {
    func multiply(_ a: Int, _ b: Int) -> Int {
        return a * b;
    }
    
    func multiply2(_ a: Int, _ b: Int) -> Int {
        return a * b;
    }
}

var n1 = Numb()
n1.multiply(1, 3)
// Extensions

extension Dictionary {
    var doubleCount : Int {
        return self.count*2
    }
}
namesDict.count
namesDict.doubleCount

