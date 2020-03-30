# Series One
-This series let you know about

# 1. ListView
the differnce b/w list and Form is Form much use ForEach loop for row creation, and in List we can do like

```
Form {
   ForEach(1..<5) {
      Text("Row \($0)")
   }
}
```
```
List(0..<5) {
   Text("Daynamic Row \($0)")
}

```

# 2. Loading source from bundle

```
if let fileURL = Bundle.main.url(forResource: "SomeFile", withExtension: "txt") {
    // If file exits
    
    if let fileContent = try? String(contentsOf: fileURL) {
        // we load the file content into string.
        
    }
}
```

# 3. Working with Strings




