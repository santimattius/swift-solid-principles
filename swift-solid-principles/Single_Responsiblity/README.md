# Single Responsibility Principle

Let's begin with the single responsibility principle. As we might expect, this principle states that **a class should only have one responsibility. Furthermore, it should only have one reason to change**.

**How does this principle help us to build better software?** Let's see a few of its benefits:

 1. Testing – A class with one responsibility will have far fewer test cases.
 2. Lower coupling – Less functionality in a single class will have fewer dependencies.
 3. Organization – Smaller, well-organized classes are easier to search than monolithic ones.



```swift
struct Vehicle {
    let wheelCount: Int
    let maxSpeed: Int
    
    func show() {
        print("""
        wheelCount: \(wheelCount)
        maxSpeed: \(maxSpeed)
        """)
    }
}
```

Apply this principle

```swift

struct Vehicle {
    let wheelCount: Int
    let maxSpeed: Int
    
    func detail() -> String {
      return  """
        wheelCount: \(wheelCount)
        maxSpeed: \(maxSpeed)
        """
    }
}

final class VehiclePrinter{
    
    func show(vh: Vehicle) {
        print(vh.detail())
    }
}

```
