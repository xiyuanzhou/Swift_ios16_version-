import Cocoa

//variables are mutable, can change
//(let) constant are immutable, can't change

var greeting = "Hello, playground"
var nums: Int = 2
var sum = 10

let str = "playground 2"

print(greeting)
print(str)
print(nums)
print(sum)
greeting = "sentence changed"

print(greeting)

print("-------------")

//arrays and loops, String
var list1 = ["lucs","summer","jack"]

let list2: [Int] = [2,3,4] //can't changed
print(list1)
print(list2)

for i in list1 {
    print("\(i) \(greeting)")
}

for i in list2{
    print("\(i) this is numbers")
}
