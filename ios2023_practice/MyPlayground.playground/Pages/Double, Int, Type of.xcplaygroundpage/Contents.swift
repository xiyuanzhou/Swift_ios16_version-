//: [Previous](@previous)

import Foundation

func breakLine(){
    print("-------------------")
}

var greeting = "Hello, playground"

//: [Next](@next)

var nums: Int = 3
print(nums)

nums = nums + 100

print(nums)

nums += 1
print(nums)

print("The type of (nums) is \(type(of: nums))")

var b: Double = 100
var c: Float = 100.1
var d: Int = 9
var e = 190.223 //defult double variables


print("The type of \(b) is \(type(of: b))")
print("The type of \(c) is \(type(of: c))")
print("The type of \(d) is \(type(of: d))")
print("The type of \(e) is \(type(of: e))")

breakLine()

//math
print(7.0 / 2)
print(7 / 2 )

// 1..< 10 it means 1-9
for divisor in 1..<10 {
    print(divisor)
}

for divisor in 0..<10 {
    print(divisor)
}

breakLine()

//return a string
func divisionAlog(x: Int, divisor:Int) -> String{
    let result: String
    let remainder = x % divisor
    let quotient = x / divisor
    if remainder == 0{
        result = "\(x) = \(divisor) * \(quotient)"
    }
    else{
        result = "\(x) = \(divisor) * \(quotient) + \(remainder)"
    }
    
    return result // return string
}

let result = divisionAlog(x: 20, divisor: 7)
print(result)

for divisor in 1..<10{
    print(divisionAlog(x: 112, divisor: divisor))
}

breakLine()

//Multiline Strings
print("title \n")
print("""
awdhihsdiadaw
adadadawd
asdadadawd
adsdads

asdadaddwadad
""")

breakLine()
