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

