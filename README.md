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

### Guard statement
> (Example below)
```Swift
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
```
> `Break` 🧸


### Tuple and named tuples
> (Tuple)
```Swift
    //tuples
    var address = ("john", "123 sss", "anytown", "USA")

    print(address)

    print(address.0)
    print(address.1)
    print(address.2)
    print(address.3)

    print("------")
    //tuples
    var address2 = (name: "lucas", address: " 5082 br", city:"fre", nums: 31)

    print(address2.name)
    print(address2.address)
    print(address2.city)
    print(address2.nums)

    print("This is the name \(address2.name)")
```
> `Break` 🧸


### Enumerations and named Enumerations
> Version 1 enum
```Swift
    func printXY(x: Double, y: Double) {

        print("\(x) and \(y)")
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
```
### CGPoint
> version 2 enum
```Swift
    func printXY(point: CGPoint) {

        let x = point.x
        let y = point.y

        print("(\(x) and \(y) )")
    }

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
```
> `Break` 🧸

> Done basic 


