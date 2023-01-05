# Swift UI IOS16

> `Xcode version 14.0 above`

> `SF Symbols 4`

> VStack -> stand for vertical position

### Variables, Arrays and Loops 
> variables are mutable, can be changed

> (let) are immutable, can not be changed

```Swift
    var greeting = "Hello, playground" //String defult
    var nums: Int = 2 //convert to Int, and always be int

    var list1 = ["lucs","summer","jack"]
    let list2: [Int] = [2,3,4] //can't changed

    for i in list1 {
        print("\(i) \(greeting)")
    }
```
> `Break` 🧸

### Structs / array structs
```Swift
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
```
> `Break` 🧸

### Optional and if statment
> nil and null are equal 
```Swift
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
```
> `Break` 🧸

### Int, Double, Float, Type 
> If no sign to double or float, when number = 1.23, auto convert to double variables
```Swift
    var b: Double = 100
    var c: Float = 100.1
    var d: Int = 9
    var e = 190.223 //defult double variables


    print("The type of \(b) is \(type(of: b))")
    print("The type of \(c) is \(type(of: c))")
    print("The type of \(d) is \(type(of: d))")
    print("The type of \(e) is \(type(of: e))")
```
> `Break` 🧸

### Division, loop and function
```Swift
    // 1..< 10 it means 1-9
    for divisor in 1..<10 {
        print(divisor)
    }

    for divisor in 0..<10 {
        print(divisor)
    }

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
```
> `Break` 🧸

### Multiline Strings
> Multiline by using ( """ )
```Swift
    print("title \n")
    print("""
    awdhihsdiadaw
    adadadawd
    asdadadawd
    adsdads

    asdadaddwadad



    """)
```
> `Break` 🧸


