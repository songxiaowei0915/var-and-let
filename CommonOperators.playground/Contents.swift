import UIKit

let a = 20
var b = 10

let sum = a + b
let sub = a - b
let mul = a * b
let div = a / b
let mod = a % b

8.truncatingRemainder(dividingBy: 2.5)

b += 10
b -= 10
b *= 10
b /= 10
b %= 10

b += 1
b -= 1

let isEqual = sum == 10
let isNotEqual = sum != 10
let isGreater = sum > 10
let isLess = sum < 10
let isGe = sum >= 10
let isLe = sum <= 10

isEqual ? "Yes" : "No"

let userInput: String? = "A user input"
userInput ?? "A default input"

for index in 1...3 {
    print(index)
}


for index in 1..<3 {
    print(index)
}

let logicalNot = !isEqual
let logicalAnd = isNotEqual && isLess
let logicalOR = isGreater || (isLess && isLe)

