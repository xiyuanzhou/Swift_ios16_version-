//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

let x1: Bool = true
let x2: Bool = false
var sen: String = "wo cao"

func guradExample(ex: Bool, str: String){
    print("welcome")
    guard (ex) else{
        //else execute this closure if ex == false
        print("we are here because the expression \(str) was false")
        return
    }
    print("have a nice day")
}

guradExample(ex: false, str: "x1")
guradExample(ex: 1+1 == 4, str: "1+1 == 4")
guradExample(ex: 1+1 == 2, str: "1+1 == 2")

