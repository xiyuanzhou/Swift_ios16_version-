import Cocoa

func printDash(){
    print("----------------------")
}
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


printDash()

struct PersonWithHobby {
    let name: String
    let hobby: String
}

let people: [PersonWithHobby] = [
    PersonWithHobby(name: "lucas", hobby: "hiking"),
    PersonWithHobby(name: "summer", hobby: "uiui"),
    PersonWithHobby(name: "kevin", hobby: "computer"),
]

for i in people {
    print("\(i.name.capitalized) like to \(i.hobby)")
}

printDash()

struct PersonHobby {
    let name: String
    let hobby: String?
}

let people2: [PersonHobby] = [
    PersonHobby(name: "lucas", hobby: "hiking"),
    PersonHobby(name: "summer", hobby: "uiui"),
    PersonHobby(name: "kevin", hobby: nil),
]

for i in people2{
    if let hobby1 = i.hobby{ // if i.hobby != nil
        print("\(i.name.capitalized) hobby is \(hobby1)")
    }else{
        print("\(i.name.capitalized) no hobby")
    }
}

printDash()

var x: Int = 4
var y: Int? = 7

if y != nil{
    print("not null")
}
else{
    print("nil")
}
 
printDash()

//more loop
for i in -3..<3{
    print(i)
}
print()

for i in -3...3{
    print(i)
}

print()
var sums = 0
var k = 0

while k < 10{
    print(k)
    k += 1
    

}
print(sums)

var i = 1
let n = 10

repeat{
    print(i)
    i = i + 1
}while( i <= n)
