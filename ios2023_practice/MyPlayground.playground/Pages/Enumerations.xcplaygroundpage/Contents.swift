//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

//example of enumseration

func printXY(x: Double, y: Double) {

    print("\(x) and \(y)")
}

func printXY(point: CGPoint) {

    let x = point.x
    let y = point.y

    print("(\(x) and \(y) )")
}

enum Direction{
    case north, south, east, west
}

var directions: [Direction] = [
    .north, .south, .west, .east
]

var x = 0.0
var y = 0.0
let delta = 5.0
var dc = directions
var direction1 = Direction.east //it can write like this
var direction2: Direction = .north // this is the second way to write


printXY(x: x, y: y)
switch(direction1){
case .east:
    x += delta
case .north:
    x -= delta
case .west:
    y += delta
case .south:
    y -= delta
}

printXY(x: x, y: y)

func updatePosition(direction: Direction, point: CGPoint) -> CGPoint{
    var x = point.x
    var y = point.y
    let delta = 5.2
    
    switch(direction){
    case .east:
        x += delta
    case .north:
        x -= delta
    case .west:
        y += delta
    case .south:
        y -= delta
    }
    
    return CGPoint(x: x, y: y)
}

print("let's follow some directions.")
var thePoint: CGPoint = CGPoint(x:0,y:0)
printXY(point: thePoint)

for direction in directions{
    thePoint = updatePosition(direction: direction, point: thePoint)
    printXY(point: thePoint)
}

//Named case. Raw values
enum photoNames: String,CaseIterable{
    
    case dog1 = "baba.png"
    case dog2 = "jaja.png"
    case dog3 = "ioio.png"
}

print("testing the name: \(photoNames.dog1.rawValue) , \(photoNames.dog2.rawValue), \(photoNames.dog3.rawValue)")
print("-------")


for photo in photoNames.allCases {
    print("another name print \(photo) version: \(photo.rawValue)")
}
