import UIKit

var tempInt = -1

let label = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 21))
label.text = "hello"

switch tempInt {
case 1...3:
    label.backgroundColor = UIColor.red
    break
case 4...7:
    label.backgroundColor = UIColor.green
    break
case 8...10:
    label.backgroundColor = UIColor.blue
    break
default:
    label.backgroundColor = UIColor.gray
    break
}

label

var str = "This Is A Dummy String"
str.uppercased()
str.lowercased()
str.replacingOccurrences(of : "String", with: "Message")
