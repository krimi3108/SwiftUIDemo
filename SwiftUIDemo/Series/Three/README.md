
## https://www.hackingwithswift.com/quick-start/swiftui/swiftui-tips-and-tricks

# Why does SwiftUI use structs for views?
   `1. First of all in iOS - UIKit use classes for view. but SwiftUI use struct.`
   `2. Element performance - Struct are simpler and faster than the classes.`   
   `3. All view are tivial struct - if we crate a struct with one int variable then the size of struct is only one integer. no suprise extra values come from parent/ grand parent/ grate grand parent classes. Stuct is exactly you can see and noting more.`
   `4. UIView have more over 200 prpopety and Classes always in interit all the property to the subview weather child need them or not. but Struct doesn't do this.`
   `5. Struct forcing us to isolate the things in clean way`
   `6. Swift ui encourage us to move more functional design approch, our view is simple and inert to convert data into UI.`



# What is behind the main SwiftUI view? 
 `Behind our Content view there is UIHostingViewController, which is bridge b/w UIkit and SwiftUI`
 
 
# Why modifier order matters – Views and Modifiers?



# Why does SwiftUI use “some View” for its view type?
` Swit UI will confirm to return something, but what exactly will don't know so for that use a generic Some View. Its ok to sure like `

` How the VStack deal with Some view - when we have VStack with like 2 Text,  then it create a TupleView containing two TextView`

```
var body: some View {
  Text("Hello Swift UI")
}
```
```To this```

```bash
var body:  Text {
   Text("Hello Swift UI")
}
````



# Environment Modifiers
`The modifier which apply to a group of objects(Stack/ Group) call Environment modifiers, like add font/foregroundColor modifier to Stack/ Group instead to apply modifier to individual group.`

```
VStack {
    Text("Hello").background(Color.yellow)
    Text("World").background(Color.green)
}
.font(.system(size: 20)) //  This modifier call Environment modifier
```



# View as property
```
struct ContentView: View {

    var moto1: some View { Text("Kritika") }
    let moto2 = Text("Kritika")
    
    var body: some View {
        VStack {
            moto1
                .foregroundColor(.purple)
            moto2
        }
    }
    
```


# View composition

```
struct CapsuleText: View {
    var text: String
    var body: some View {
        Text(text)
            .padding()
            .font(.system(size: 20))
            .foregroundColor(.purple)
            .clipShape(Capsule())
        
    }
}

struct ContentView: View {

    var body: some View {
        VStack {
            CapsuleText(text: "Hello")
            CapsuleText(text: "Swift UI")
        }
        .background(Color.yellow)
    }
}    
```


# Custom Modifier

# Custom Container
